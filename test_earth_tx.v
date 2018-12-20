`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:13 11/07/2016 
// Design Name: 
// Module Name:    test_earth_tx 
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
module test_earth_tx(
input                 en,
input                 etx_full,
input                 etx_empty,
input                 clk,
output   reg          ewr_en,
output             etx_enable,
output   reg  [63:0]  etx_din,
output      [15:0] tx_data_length,
output      [15:0] tx_total_length,
output   reg          etx_fifo_rst
);
reg [63:0] udp_data [2:0];  
reg [2:0] j;
assign etx_enable  =1;
assign tx_data_length = 16'd32;
assign tx_total_length = 16'd52;
always @(*)
begin     //定义发送的字符
	 udp_data[0]<={8'h4a,8'h75,8'h73,8'h74,8'h20,8'h66,8'h6f,8'h72};   //存储字符O ALHELL 
     udp_data[1]<={8'h20,8'h65,8'h61,8'h72,8'h74,8'h68,8'h6e,8'h65};   //存储字符AX51INX空格
	 udp_data[2]<={8'h74,8'h20,8'h74,8'h65,8'h73,8'h74,8'h21,8'h0d};   //存储字符INX空格6空格换行符回车符                          
end 

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
	   if((!etx_full)&&(flag))
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
else
    begin
	j<=0;
	ewr_en<=0;
	end
end
endmodule



























