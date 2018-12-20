`timescale 1ns / 1ps
module ipsend(
				  input              clk,
				  output reg         txen,
				  output reg         txer,
				  output reg [7:0]   dataout,
				  input      [31:0]  fifo_dout,
				  output             fifo_rden,
				  input              empty,
				  input              reset_n,  	
                  input              tx_enable,				  
				  input      [31:0]  crc,
				  output reg         crcen,
				  output reg         crcre,
				  output reg         crc_valid,
				  input      [15:0]  tx_data_length,
				  input      [15:0]  tx_total_length,
              output reg [3:0]   tx_state,
              output             clk_oddr	              			  
	  );
 
reg [31:0] ip_header [6:0];
reg [7:0] preamble [7:0];                    //preamble
reg [7:0] mac_addr [13:0];                   //mac address
reg [4:0] i,j;
reg       tx_ing;//正在发送标志
reg [31:0] check_buffer;
reg [31:0] time_counter;
reg [15:0] tx_data_counter;
reg        fifo_rden;
reg [31:0] fifo_dout_reg;  
parameter idle=4'b0000,start=4'b0001,make=4'b0010,send55=4'b0011,sendmac=4'b0100,sendheader=4'b0101,
          senddata=4'b0110,sendcrc=4'b0111;

  ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1"
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
    ) ODDR2_inst (
      .Q(clk_oddr),   // 1-bit DDR output data
      .C0(clk),   // 1-bit clock input
      .C1(~clk),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(1'b1), // 1-bit data input (associated with C0)
      .D1(1'b0), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
    );
	 
initial
  begin
	 // tx_state<=idle;
	 //定义IP 包头
	 preamble[0]<=8'h55;                 //7个前导码55,一个帧开始符d5
	 preamble[1]<=8'h55;
	 preamble[2]<=8'h55;
	 preamble[3]<=8'h55;
	 preamble[4]<=8'h55;
	 preamble[5]<=8'h55;
	 preamble[6]<=8'h55;
	 preamble[7]<=8'hD5;
	 mac_addr[0]<=8'hff;                 //目的MAC地址 ff-ff-ff-ff-ff-ff
	 mac_addr[1]<=8'hff;
	 mac_addr[2]<=8'hff;
	 mac_addr[3]<=8'hff;
	 mac_addr[4]<=8'hff;
	 mac_addr[5]<=8'hff;
	 mac_addr[6]<=8'h00;                 //源MAC地址 00-0A-35-01-FE-C0
	 mac_addr[7]<=8'h0A;
	 mac_addr[8]<=8'h35;
	 mac_addr[9]<=8'h01;
	 mac_addr[10]<=8'hFE;
	 mac_addr[11]<=8'hC0;
	 mac_addr[12]<=8'h08;                //0800: IP包类型
	 mac_addr[13]<=8'h00;
	// ip_header[1][31:16] <= 16'd0;//初始化帧号0
	 i<=0;
 end	 
always@(posedge clk)
begin		
      if(!reset_n)
		begin
		       crc_valid<=1'b0;
				 txer<=1'b0;
				 txen<=1'b0;
				 crcen<=1'b0;
				 crcre<=1;
				 j<=0;
				 dataout<=0;
				 tx_data_counter<=0;
				 time_counter<=0;
				 tx_state<=idle;
		end
	   else if(tx_enable)
		begin
		if((!empty)||(empty&&(tx_ing)))//如果fifo不空，或者正处于发送中
		case(tx_state)
		  idle:begin
			    crc_valid<=1'b0;
				 txer<=1'b0;
				 txen<=1'b0;
				 crcen<=1'b0;
				 crcre<=1;
				 j<=0;
				 dataout<=0;
				 tx_data_counter<=0;
				 fifo_rden <= 1'b0;
             if (time_counter==32'h04000000) begin          //等待延迟
			//	 if (time_counter==32'h00040000) begin
				 tx_state<=start;  
                 time_counter<=0;
            end
            else
                 time_counter<=time_counter+1'b1;				
			end
		   start:begin
					ip_header[0]<={16'h4500,tx_total_length};    //版本号：4； 包头长度：20；IP包总长
				   ip_header[1][31:16]<=ip_header[1][31:16]+1'b1;   //包序列号
					ip_header[1][15:0]<=16'h4000;                    //Fragment offset
				   ip_header[2]<=32'h80110000;                      //mema[2][15:0] 协议：17(UDP)
				   ip_header[3]<=32'hc0a80002;                      //192.168.0.2源地址
				   ip_header[4]<=32'hc0a80003;                      //192.168.0.3目的地址广播地址
					ip_header[5]<=32'h1f901f90;                      //2个字节的源端口号和2个字节的目的端口号
				   ip_header[6]<={tx_data_length,16'h0000};     //2个字节的数据长度和2个字节的校验和（无）
	   			tx_state<=make;
         end	
         make:begin            //生成包头的校验和
			    if(i==0) begin
					  check_buffer<=ip_header[0][15:0]+ip_header[0][31:16]+ip_header[1][15:0]+ip_header[1][31:16]+ip_header[2][15:0]+
					               ip_header[2][31:16]+ip_header[3][15:0]+ip_header[3][31:16]+ip_header[4][15:0]+ip_header[4][31:16];
                 i<=i+1'b1;
				   end
             else if(i==1) begin
					   check_buffer[15:0]<=check_buffer[31:16]+check_buffer[15:0];
					   i<=i+1'b1;
				 end
			    else	begin
				      ip_header[2][15:0]<=~check_buffer[15:0];                 //header checksum
					   i<=0;
					   tx_state<=send55;
					end
		   end
			send55: begin                    //发送8个IP前导码:7个55, 1个d5                    
 				 txen<=1'b1;
				 crcre<=1'b1;                            //reset crc  
				 if(i==7) begin
               dataout[7:0]<=preamble[i][7:0];
					i<=0;
				   tx_state<=sendmac;
				 end
				 else begin                        
				    dataout[7:0]<=preamble[i][7:0];
				    i<=i+1;
				 end
			end	
			sendmac: begin                           //发送目标MAC address和源MAC address  
			 	 crcen<=1'b1;                            //crc校验使能		
				 crcre<=1'b0;                            			
             if(i==13) begin
               dataout[7:0]<=mac_addr[i][7:0];
					i<=0;
				   tx_state<=sendheader;
				 end
				 else begin                        
				    dataout[7:0]<=mac_addr[i][7:0];
				    i<=i+1'b1;
				 end
			end
			sendheader: begin
			if(j==6) begin                             
					  if(i==0) begin
						 dataout[7:0]<=ip_header[j][31:24];
						 i<=i+1'b1;
					  end
					  else if(i==1) begin
						 dataout[7:0]<=ip_header[j][23:16];
						 i<=i+1'b1;
					  end
					  else if(i==2) begin
						 dataout[7:0]<=ip_header[j][15:8];
						 fifo_rden <= 1'b1;
						 i<=i+1'b1;
					  end
					  else if(i==3) begin
						 dataout[7:0]<=ip_header[j][7:0];
						 i<=0;
						 j<=0;
						 fifo_rden <= 1'b0;
						 tx_state<=senddata;			 
					  end
					  else
						 txer<=1'b1;
				end		 
				else begin
					  if(i==0) begin
						 dataout[7:0]<=ip_header[j][31:24];
						 i<=i+1'b1;
					  end
					  else if(i==1) begin
						 dataout[7:0]<=ip_header[j][23:16];
						 i<=i+1'b1;
					  end
					  else if(i==2) begin
						 dataout[7:0]<=ip_header[j][15:8];
						 i<=i+1'b1;
					  end
					  else if(i==3) begin
						 dataout[7:0]<=ip_header[j][7:0];
						 i<=0;
						 j<=j+1'b1;
					  end					
					  else
						 txer<=1'b1;
				end
			 end
			 senddata:begin                                      //发送UDP数据包
			   if(tx_data_counter==tx_data_length-9) begin       //发送最后的数据
				   tx_state<=sendcrc;	
					if(i==0) begin	
                 fifo_dout_reg <= 	fifo_dout;				
					  dataout[7:0]<=fifo_dout[31:24];
					  fifo_rden <= 1'b0;
					  i<=0;
					end
					else if(i==1) begin
					  dataout[7:0]<=fifo_dout_reg[23:16];
					  i<=0;
					  fifo_rden <= 1'b0;
					end
					else if(i==2) begin
					  dataout[7:0]<=fifo_dout_reg[15:8];
					  i<=0;
					  fifo_rden <= 1'b0;
					end
					else if(i==3) begin
			        dataout[7:0]<=fifo_dout_reg[7:0];
					  i<=0;
					  fifo_rden <= 1'b0;
					end
            end
            else begin                                     //发送其它的数据包
               tx_ing <= 1'b1;
					tx_data_counter<=tx_data_counter+1'b1;	               				
					if(i==0) begin   
                 fifo_dout_reg <= 	fifo_dout;					
					  dataout[7:0]<=fifo_dout[31:24];
					  i<=i+1'b1;
					end
					else if(i==1) begin
					  dataout[7:0]<=fifo_dout_reg[23:16];
					  i<=i+1'b1;
					end
					else if(i==2) begin
					  dataout[7:0]<=fifo_dout_reg[15:8];
					  i<=i+1'b1;
					  if(tx_data_counter<(tx_data_length-12))
					  fifo_rden <= 1'b1;
					end
					else if(i==3) begin
			        dataout[7:0]<=fifo_dout_reg[7:0];
					  i<=0; 
					  fifo_rden <= 1'b0;						  
					end
				end
			end	
			sendcrc: begin                              //发送32位的crc校验
				crcen<=1'b0;
				crc_valid<=1'b1;
				if(i==0)	begin
					  dataout[7:0] <= {~crc[24], ~crc[25], ~crc[26], ~crc[27], ~crc[28], ~crc[29], ~crc[30], ~crc[31]};
					  i<=i+1'b1;
					end
				else begin
				  if(i==1) begin
					   dataout[7:0]<={~crc[16], ~crc[17], ~crc[18], ~crc[19], ~crc[20], ~crc[21], ~crc[22], ~crc[23]};
						i<=i+1'b1;
				  end
				  else if(i==2) begin
					   dataout[7:0]<={~crc[8], ~crc[9], ~crc[10], ~crc[11], ~crc[12], ~crc[13], ~crc[14], ~crc[15]};
						i<=i+1'b1;
				  end
				  else if(i==3) begin
					   dataout[7:0]<={~crc[0], ~crc[1], ~crc[2], ~crc[3], ~crc[4], ~crc[5], ~crc[6], ~crc[7]};
						i<=0;
						tx_state<=idle;
						crc_valid<=1'b0;
						tx_ing <=1'b0;
				  end
				  else begin
                  txer<=1'b1;
				  end
				end
			end					
			default:tx_state<=idle;		
       endcase	
        else
			begin
	          crc_valid<=1'b0;
				 txer<=1'b0;
				 txen<=1'b0;
				 crcen<=1'b0;
				 crcre<=1;
				 j<=0;
				 i<=0;
				 dataout<=0;
				 tx_data_counter<=0;
				 fifo_rden <= 1'b0;
				 tx_state<=idle;
        end				 
      end		 
 end
endmodule


