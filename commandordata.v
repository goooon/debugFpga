`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:06 07/02/2016 
// Design Name: 
// Module Name:    commandordata 
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
module commandordata(
input           clk,
input  [15:0]   data_length,
input  [31:0]   data,
input  [8:0]    wr_ddr,
input  [15:0]   total_length,
input  data_valid,
output reg [31:0] rx_data,
output reg [8:0] ram_wr_ddr,
output reg   data_o_valid,
output reg  reset,
output reg [15:0] data_o_length,
output reg [15:0] total_o_length
    );
	 
reg [1:0] flag;
reg flag_reset;
reg comm_o_valid;
reg [63:0] commomd;
reg init_flag;//上电复位标志
always@(posedge clk)
begin
		if((data_length == 16'd16) || (total_length==16'd36))//判断当前数据包为命令包还是数据包
		begin
			if(data_valid)
			  begin
				commomd <= {commomd[31:0],data};
				data_o_length <= data_o_length;
				total_o_length <= total_o_length;
				if(flag == 2'b01)
					begin flag <= 0; comm_o_valid <=1; end
				else
					begin comm_o_valid <=0; flag <= flag + 1; end
			  end
			else
			begin data_o_length  <= data_o_length; total_o_length <= total_o_length; end
		end
	else
	begin
		rx_data <= data;
		ram_wr_ddr <= wr_ddr;
		data_o_valid <= data_valid;
		data_o_length <= data_length;
		total_o_length <= total_length;
	end
end
always@(posedge clk)//提取系统复位命令
begin
	if(comm_o_valid)
	begin
		if((commomd[63:56] == 8'b0) & (flag_reset==0))
		begin reset <=1 ; flag_reset<=1; end
		else
		reset <=0 ;
	end
	else
	begin flag_reset <= 0; end
end
endmodule
