`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:28 11/13/2016 
// Design Name: 
// Module Name:    camerain_earth 
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
module camerain_earth(
input           en,
input           clk,//系统时钟
/////////////earthnet TX IOs/////////////////
output                etx_enable,
output        [63:0]  etx_din,
input                 etx_full,
input                 etx_empty,
output                ewr_en,
output   reg          etx_fifo_rst,

output      [15:0] tx_data_length,
output      [15:0] tx_total_length,


//////////////camera_rx ios////////////////////
input         linedone,
input  [63:0] cameradata,
input  [15:0] camer_tatal_data,
output  reg   camer_rden,
input         camer_fifo_empty
 );
 
assign etx_enable = 1;
 
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


reg [1:0] linedone_reg;
always@(posedge clk) //检测行完成接收信号
begin
linedone_reg <= {linedone_reg[0],linedone};
end

assign ewr_en = camer_rden_reg;
assign etx_din = cameradata;
assign tx_data_length = camer_tatal_data + 8;
assign tx_total_length = camer_tatal_data + 28;

reg linetxing;
reg camer_rden_reg;
reg [12:0] data_count;


always@(posedge clk)
begin
	if(en)//if(en)
	begin
	    if((!etx_full)&&(!camer_fifo_empty)&&((linedone_reg==2'b01)||linetxing))
		begin
		    if(data_count == (camer_tatal_data[15:3]))
			begin
			    linetxing <= 0;//本行发送结束
				data_count <= 0;
				camer_rden <=0;
			end
			else
			begin
		        linetxing <=1;
				camer_rden <=1;
				data_count <= data_count + 1'b1;
			end			
			camer_rden_reg <= camer_rden;
		end
		else if(camer_fifo_empty && linetxing)//若行未发送完，但是canmeralink接收fifo空，标志着此行出错。
		    begin
			   data_count <=0;
               linetxing <= 0;
               camer_rden <=0;
               camer_rden_reg <= camer_rden;			   
			end
		else
			begin
				camer_rden <=0;
				camer_rden_reg <= camer_rden;
			end
	end
	else//if(!en)
	begin
		data_count <=0;
        linetxing <= 0;
        camer_rden <=0;	
        camer_rden_reg <= camer_rden;		
	end
end
 
endmodule





























