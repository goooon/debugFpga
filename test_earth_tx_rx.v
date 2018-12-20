`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:54 11/07/2016 
// Design Name: 
// Module Name:    test_earth_tx_rx 
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
module test_earth_tx_rx(
input           en,
input           clk,
output   reg       e_rd_en_o,
input  [63:0]   data_in,
input           empty,
input   [15:0]  dadaLength,
input   [15:0]  totalLength,

/////////////earthnet TX IOs/////////////////
input                 etx_empty,
output       reg      etx_enable,
output        [63:0]  etx_din,
input                 etx_full,
output                ewr_en,
output        [15:0]  tx_data_length,
output        [15:0]  tx_total_length,
output   reg          etx_fifo_rst
    );
 reg          e_rd_en_reg;
 assign tx_data_length = dadaLength;
 assign tx_total_length = totalLength;
 assign	etx_din =  data_in;
 assign  ewr_en = e_rd_en_reg; 

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
    etx_enable <=1;	
    if((!empty)&&(!etx_full)&&flag)						  			
		 begin 
		 e_rd_en_o <=1;
		 e_rd_en_reg <= e_rd_en_o;
         end
    else
		begin 
		 e_rd_en_o <= 0;
		 e_rd_en_reg <= e_rd_en_o;
		end	
	end
else
    begin
	e_rd_en_o<=0;
	etx_enable <=0;
	end
end
endmodule




























