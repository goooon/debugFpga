`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:19 11/07/2016 
// Design Name: 
// Module Name:    earth_cameraout 
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
module earth_cameraout(
input           en,
input           clk,//系统时钟
/////////////earthnet RX IOs/////////////////
output   reg       e_rd_en_o,
input  [63:0]   data_in,
input           empty,
input   [15:0]  dadaLength,
input   [15:0]  totalLength,

/////////////earthnet TX IOs/////////////////
output                etx_enable,
output   reg  [63:0]  etx_din,
input                 etx_full,
input                 etx_empty,
output   reg          ewr_en,
output   reg          etx_fifo_rst,
output   reg   [15:0] tx_data_length,
output   reg   [15:0] tx_total_length,

//////////////ddr write IOs///////////////////
output         [63:0] ddr3_data,
output          ddr3_wren,
input           ddr3_full,
input           ddr_dataneed
    );
reg [1:0] ddr_dataneed_reg;
reg [63:0]  uplink_command[1:0];
reg need_sending;
reg [2:0] j;
reg  e_rd_en_reg;
always@(posedge clk)
begin
  ddr_dataneed_reg = {ddr_dataneed_reg[0],ddr_dataneed};
end
always @(*)
begin     //定义发送的字符
	 uplink_command[0] <= 64'd0; 
	 uplink_command[1] <= 64'd0;
end
//向网口发送数据请求
assign ddr3_data = data_in;
assign ddr3_wren = e_rd_en_reg;
assign  etx_enable = 1;
reg  flag= 0;
always@(posedge clk)
begin
if(en)
begin
	if((!etx_empty)&&(!flag))
	begin etx_fifo_rst<=1; end
	else
	begin etx_fifo_rst<=0; flag <= 1;end//flag=1表示复位完成
end
else
begin   flag<= 0; etx_fifo_rst<=0; end 
end

always@(posedge clk)
begin 
if(en)
   begin
   if((!etx_full)&&((ddr_dataneed_reg == 2'b01)||need_sending))
		begin
		  if(ddr_dataneed_reg == 2'b01)
			  need_sending <= 1;
			  etx_din <= uplink_command[j];
			  ewr_en  <=1;
			  if(j==1)
				begin
				  j <=0;
				  need_sending <= 0;
				  ewr_en  <=1;
				end
			   else
				j<= j+1;
		end
    else
	    begin
		ewr_en  <= 0;	
		need_sending <= 0;
		end
	end
else
   begin
   ewr_en  <= 0;	
   need_sending <= 0;
   j<=0;
   end
end
reg [11:0] datacount;
//将网口数据写入ddr中
always@(posedge clk)
begin
if(en)
    begin
		if((!empty)&&(!ddr3_full))
			begin
			  e_rd_en_o <=1;
			  e_rd_en_reg <= e_rd_en_o;
			  datacount <= datacount +1;
			end	
		else
		   begin
			  e_rd_en_o <=0;
			  e_rd_en_reg <= e_rd_en_o;
		   end
    end
else
	begin
	e_rd_en_o <=0;
	e_rd_en_reg <= e_rd_en_o;
    end
end
endmodule






























