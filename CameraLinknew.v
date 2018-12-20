`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:17 08/10/2016 
// Design Name: 
// Module Name:    CameraLinknew 
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
module CameraLinknew(
input wire              pClk,
input wire              nrst,
input wire    [15:0]    dat,
input wire              syncOrNot,
input wire              sync_out,
input wire              empty,
input wire              mode,
output        [27:0]    tx,
output                  txclk,
output                  cc_en,
output                  ccen_n,
output                  pwr_dwn_n,
output reg              read_en,
output      [9:0]    test_data,
input                camera_pause
    );
parameter UNVALDATA = 11'd163;
parameter idle = 3'd0;
parameter txstart = 3'd1;
parameter l_val_peior = 3'd2;
parameter l_unval_peior = 3'd3;
reg  [10:0] H_total;//行数据
reg  [10:0] L_total;//行数目

reg   [2:0]   txstate;
reg   [23:0] clk_count=24'b0;
reg   sync_inner = 1'b0;
wire   sync;
reg [1:0] sync_reg=2'b0;
wire   [15:0]outDat;
reg   dvalReg,lvalReg,fvalReg;
reg   [8:0] lineDatCount,lineCount;
assign outDat = dat; 
assign tx[4:0]=outDat[12:8];
assign tx[5]=outDat[15];
assign tx[6]=outDat[13];
assign tx[9:7]=outDat[2:0];
assign tx[11:10]=2'b0;
assign tx[14:12] = outDat[5:3];
assign tx[23:15] = 9'b0;
assign tx[24]=lvalReg;//行同步
assign tx[25]=fvalReg;//帧同步
assign tx[26]=dvalReg;//数据有效
assign tx[27]=outDat[14];
assign  cc_en = 1'b1;
assign  ccen_n = 1'b0;
assign  pwr_dwn_n = 1'b1;
assign  test_data[7:0] = outDat[15:8];
assign  test_data[8] = lvalReg; 
assign  test_data[9] = fvalReg;
always@(negedge pClk)
begin
	if(mode)
	  begin
	  H_total <= 1024;
	  L_total <= 1024;
	  end
	 else
	   begin
	  H_total <= 1032;
	  L_total <= 512;
	  end	  
end
  ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1"
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
    ) ODDR2_inst (
      .Q(txclk),   // 1-bit DDR output data
      .C0(pClk),   // 1-bit clock input
      .C1(~pClk),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(1'b1), // 1-bit data input (associated with C0)
      .D1(1'b0), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
    );
	 
	 
always@(negedge pClk) begin
if(clk_count==24'd2000000) begin
  sync_inner <= ~sync_inner;
  clk_count <= 24'b0; end
  else
  clk_count <= clk_count + 1;
end
assign sync = syncOrNot ? sync_out : sync_inner;
always@(negedge pClk) begin//get the posedge of sync signal
sync_reg[1] <= sync_reg[0];
sync_reg[0] <= sync;
end
reg [10:0]  val_data ;
reg [10:0]  unval_data;
reg [10:0] l_counter ;

always@(negedge pClk)
begin
  if(!nrst)
    begin
	  txstate <= idle;
	  val_data <= 0;
	  unval_data <= 0;
	  l_counter <= 0;
	  read_en <= 0;
	  lvalReg <=0;
	  fvalReg <=0;
	  dvalReg <=0;
	 end
  else if(!empty)
    begin
	  case(txstate)
	      idle: begin 
			      if((sync_reg == 2'b10)&&(!camera_pause))//检测到同步信号下降沿
						begin
						txstate <= txstart;
						read_en <= 1;
						end
				   end
		   txstart : begin
			          fvalReg <= 1;
			          lvalReg <= 1;
						 dvalReg <= 1;
						 val_data <= val_data +1;
						 txstate <= l_val_peior;
			          end
			l_val_peior : begin
			              if(val_data == H_total)
								  begin
								  val_data <= 0;
								  lvalReg <= 0;
						          dvalReg <= 0;
								  unval_data <= unval_data + 1;
								  txstate <= l_unval_peior;
								  l_counter <= l_counter +1;
								  end
						  else if(val_data == (H_total-1))
								  begin read_en <= 0; val_data <= val_data + 1; end 
						  else
								  begin
								  val_data <= val_data + 1;
								  lvalReg <= 1;
						          dvalReg <= 1;
								  end
                       end	
			l_unval_peior : begin
			                if(unval_data == (UNVALDATA-1))
								   begin
									   unval_data <= 0;
										if(l_counter == L_total)
										  begin
											txstate <= idle;
											fvalReg <=0;
											l_counter <=0;
										  end
										else
										  begin
											  txstate <= l_val_peior;
											  read_en <= 1;
										  end	
                            end
                            else
                                unval_data <= unval_data + 1; 									 
                         end
          default :  begin
			             txstate <= idle;
							 fvalReg <= 0;
			             lvalReg <= 0;
						    dvalReg <= 0;
                     end
							
	   endcase
	 end
  else
    begin
	  txstate <= idle;
	  val_data <= 0;
	  unval_data <= 0;
	  l_counter <= 0;
	  read_en <= 0;
	 end
end
endmodule
