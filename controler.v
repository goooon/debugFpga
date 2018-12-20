`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:06 07/02/2016 
// Design Name: 
// Module Name:    controler
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controler(
input           clk,//系统时钟

///////////// earthnet reset_pin/////////////
output          e_reset_n,
/////////////earthnet RX IOs/////////////////
output          readclk,
output          e_rd_en_o,
input  [63:0]   data_in,
input           empty,
input   [15:0]  dadaLength,
input   [15:0]  totalLength,

/////////////earthnet TX IOs/////////////////
output                ewrclk,
output   reg          etx_enable,
output   reg  [63:0]  etx_din,
input                 etx_full,
output   reg          ewr_en,
output   reg   [15:0] tx_data_length,
output   reg   [15:0] tx_total_length,
//////////////ddr write IOs///////////////////
output   reg    [63:0] ddr3_data,
output   reg    ddr3_wren,
input           ddr3_full,
output          ddr3_wr_clk,
input           ddr_dataneed,
//////////////camera_rx ios////////////////////
input         linedone,
input  [63:0] cameradata,
input  [15:0] camer_tatal_data,
output  reg   camer_rden,
output        camer_rdclk,
input         camer_fifo_empty,
///////////////////////////////////////////////
output          reset_o,//高有效
output   reg    mode,
////////////////////////////////////////////
output  reg   camera_pause
    );
	 
	 

reg [63:0] udp_data [2:0];  
reg  [63:0] uplink_command [1:0];
reg [4:0] i;
reg [4:0] j;
reg read_com_en ;
reg command;
reg [63:0] commmand_data_reg;
reg [127:0] commmand_data;
reg reset_flag;//确保每次指令到来时只执行一次复位
reg [8:0] init_counter;
reg init_flag;//上电复位标志
reg init_reset;
reg out_reset;
reg e_rd_en;
reg case2_flag;
reg [3:0] comm_read_counter;
///////////////////////////////mode 3
reg [1:0] ddr_dataneed_REG;
reg  command_tx;
reg  [3:0] kk;
///////////////////////////////mode  4
reg [1:0] linedone_reg;
reg camerarxing;
reg case4_flag;
reg [15:0] tx_data_count=0;
reg [15:0] byte_8_length;
reg pre_read_flag=0;
reg tail_byte;
///////////////////////////////
assign reset_o = ((!init_flag) ? init_reset :out_reset);
assign   e_reset_n = (~reset_o);
assign   readclk = clk;
assign   ewrclk  = clk;
assign   ddr3_wr_clk = clk;
assign    camer_rdclk = clk;
assign   e_rd_en_o = (command ? read_com_en:e_rd_en);

always @(posedge clk)
begin     //定义发送的字符
	 udp_data[0]<={8'h4a,8'h75,8'h73,8'h74,8'h20,8'h66,8'h6f,8'h72};   //存储字符O ALHELL 
    udp_data[1]<={8'h20,8'h65,8'h61,8'h72,8'h74,8'h68,8'h6e,8'h65};   //存储字符AX51INX空格
	 udp_data[2]<={8'h74,8'h20,8'h74,8'h65,8'h73,8'h74,8'h21,8'h0d};   //存储字符INX空格6空格换行符回车符                          
end 
//上电复位
always @(posedge clk)
begin     //定义发送的字符
	 uplink_command[0] <= 64'd0; 
	 uplink_command[1] <= 64'd0;
end
always@(posedge clk)
begin
if((init_flag==1'b0)&&(init_counter < 9'b1111_1111_1))
      begin init_reset<=1; init_counter <= init_counter +1; end 
else
begin init_reset <= 0; init_flag = 1'b1; end
end
//控制命令标志提取
always@(posedge clk)
begin
if(dadaLength == 16'd24)
command <= 1'b1;
else
command <= 1'b0;
end

always@(posedge clk)
begin
if(commmand_data[111:104] == 8'hff)
camera_pause <=1;
else
camera_pause <=0;
end
always@(posedge clk)//提取当前控制命令
begin
if(command && (!empty)&&(comm_read_counter==0))
	begin 
	 comm_read_counter <= comm_read_counter+1; 
	 read_com_en <=1'b1;
   end
else if (command && (comm_read_counter==1))
	begin   
	comm_read_counter <= comm_read_counter+1'b1;
	read_com_en <=1'b0;
   end
else if (command && (comm_read_counter==2))
	begin   
	commmand_data_reg <= data_in; 
	comm_read_counter <= comm_read_counter+1'b1;
   end	
else if(command && (!empty)&&(comm_read_counter==3))
   begin
   read_com_en <=1'b1;
	comm_read_counter <= comm_read_counter+1'b1;
	end
else if(command &&(comm_read_counter==4))
   begin
   read_com_en <=1'b0;
	commmand_data <= {commmand_data_reg[63:0],data_in}; 
	comm_read_counter <= 4'b0;
	read_com_en <=1'b0;
	reset_flag <=1'b1;//新的可能的reset命令到来
	end
else
   reset_flag <=1'b0;
  // commmand_data[119:112] <= 8'd4;	//just for test
end

always@(posedge clk)//系统软复位
begin
if((commmand_data[127:120] == 8'b0)&&(reset_flag==1'b1))
begin out_reset = 1'b1;  end
else
out_reset = 1'b0;
end

always@(posedge clk)
begin
	case(commmand_data[119:112])
		8'd1:   begin //网口上行测试模式，发送固定内容
	             	mode <= 8'b0000_0001;
						etx_enable <=1;
						tx_data_length <= 16'd32;
						tx_total_length <= 16'd52;
						if(!etx_full)
						begin
						etx_din <= udp_data[j];
						ewr_en  <=1;
							if(j==2)
							j <=0;
							else
							j<= j+1;
						end
						else
						ewr_en  <= 0;	
		        end
		8'd2:   begin //网口转发下行数据
					  mode <= 8'b0000_0010;
					  etx_enable <=1;
					  tx_data_length <= dadaLength;
					  tx_total_length <= totalLength;				  
					  if((!empty)&&(!etx_full))
				        begin 
						     if(e_rd_en == 1'b0)
							     begin
										e_rd_en <= 1'b1;
										case2_flag <=e_rd_en;
										if(case2_flag == 1)
										   begin
											 etx_din <= data_in; 
											 ewr_en  <= 1'b1;
											end
											else
											ewr_en  <= 1'b0;
								  end						    
							  else if(e_rd_en == 1'b1)
							     begin   
								      e_rd_en <= (1'b1)&empty;	
                              case2_flag <=e_rd_en;
                              if(case2_flag == 1)
										   begin
											 etx_din <= data_in; 
											 ewr_en  <= 1'b1;
											end
											else
											ewr_en  <= 1'b0;										
								  end
						  end
						else if((empty)&&(!etx_full))
						     begin
							           case2_flag<=e_rd_en;
							           if(case2_flag == 1)
										   begin
											 etx_din <= data_in; 
											 ewr_en  <= 1'b1;
											end
											else
											ewr_en  <= 1'b0;
							  end
						else
                    begin 
							  e_rd_en <= 1'b0;
							  ewr_en  <= 1'b0;
							  j <=0;
						   end						  
         	  end 
		8'd3:   begin //camerlink  Transport the earthnet data	
                 ddr_dataneed_REG <= {ddr_dataneed_REG[0],ddr_dataneed};
					  
                 if((ddr_dataneed_REG == 2'b01)&& (!command_tx))
						begin
						command_tx <= 1;
						kk <= 0;
						end
						else if(command_tx)
						begin
						etx_enable <=1;
						tx_data_length <= 16'd24;
						tx_total_length <= 16'd44;
						if(!etx_full)
							begin
							etx_din <= uplink_command[kk[0]];
								if(kk==2)
								begin 
								kk <=0; 
								command_tx <= 0;
								ewr_en  <= 0;
								end
								else
								begin
								kk<= kk+1;
								ewr_en  <=1;
								end
							end
						else
						ewr_en  <= 0;	
						end	
						
					  if((!empty)&&(!ddr3_full))
				        begin 
						     if(e_rd_en == 1'b0)
							     begin
										e_rd_en <= 1'b1;
										case2_flag <=e_rd_en;
										if(case2_flag == 1)
										   begin
											 ddr3_data <= data_in; 
											 ddr3_wren  <= 1'b1;
											end
											else
											ddr3_wren  <= 1'b0;
								  end						    
							  else if(e_rd_en == 1'b1)
							     begin   
								      e_rd_en <= (1'b1)&empty;	
                              case2_flag <=e_rd_en;
                              if(case2_flag == 1)
										   begin
											 ddr3_data <= data_in; 
											 ddr3_wren  <= 1'b1;
											end
											else
											ddr3_wren  <= 1'b0;										
								  end
						  end
						else if((empty)&&(!ddr3_full))
						     begin
							           case2_flag<=e_rd_en;
							           if(case2_flag == 1)
										   begin
											 ddr3_data <= data_in; 
											 ddr3_wren  <= 1'b1;
											end
											else
											ddr3_wren  <= 1'b0;
							  end
						else
                    begin 
							  e_rd_en <= 1'b0;
							  ddr3_wren  <= 1'b0;
							  j <=0;
						   end						  
         	  end 
		8'd4:   begin//cameralink get the data and transport by earthnet
		         linedone_reg <= {linedone_reg[0],linedone};//detect the posedge of linedone
					if((linedone_reg==2'b01))
               begin
					  camerarxing<=1;
					  etx_enable <=1;
					  tx_data_length <= camer_tatal_data+8;
					  tx_total_length <= camer_tatal_data + 28;
					  byte_8_length <= {3'b0,camer_tatal_data[15:3]};
					  camer_rden <=0;
					  tx_data_count <= 0;
					end
					if((camerarxing)&&(!etx_full))
				        begin 
						     if((!camer_rden))
							     begin
										camer_rden <= 1'b1;
										case4_flag <=camer_rden;
										ewr_en  <= case4_flag;
										if(case4_flag == 1)
										   begin
											 etx_din <= cameradata; 
											 if(tx_data_count ==(byte_8_length-3))
													camerarxing <=0;
											  else
											  tx_data_count <=tx_data_count +1;
											  end
									end				
							  else 
							     begin   
								      camer_rden <= 1'b1;
										case4_flag <=camer_rden;
										ewr_en  <= case4_flag;
                             if(case4_flag == 1)
										   begin
												 etx_din <= cameradata; 
												 if(tx_data_count ==(byte_8_length-3))
														camerarxing <=0;
												  else
												     tx_data_count <=tx_data_count +1;
											end
						         end			
						end
						else if((camerarxing)&&(etx_full))
						     begin
							  camer_rden <= 1'b0;
							  case4_flag <=camer_rden;
								ewr_en  <= case4_flag;
								if(case4_flag == 1)
								  begin
												 etx_din <= cameradata; 
												 if(tx_data_count ==(byte_8_length-3))
														camerarxing <=0;
												  else
												     tx_data_count <=tx_data_count +1;
											end							  
							  end  
						 else
							begin
                     camer_rden <= 1'b0;
							case4_flag <=camer_rden;
						   ewr_en  <= case4_flag;
							if(case4_flag == 1)
							etx_din <= cameradata;
							end							
	        	  end//网口发送节收的图像数据	
		8'd5:   begin mode <= 8'b0001_0000; end//网口发送节收的图像数据，同时CamerLink转发该数据
		default:  begin //网口上行测试模式，发送固定内容
//	             	mode <= 8'b0000_0001;
//						etx_enable <=1;
//						tx_data_length <= 16'd32;
//						tx_total_length <= 16'd52;
//						if(!etx_full)
//						begin
//						etx_din <= udp_data[j];
//						ewr_en  <=1;
//							if(j==2)
//							j <=0;
//							else
//							j<= j+1;
//						end
//						else
//						ewr_en  <= 0;	
		        end
	endcase
end



endmodule





