
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:54 05/29/2016 
// Design Name: 
// Module Name:    file_top 
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
module camera_con(clk,din,wr_clk,rst,wr_en,tx,sync_out,txclk,cc_en,pwr_dwn_n,ccen_n,almost_full,syncOrNot
    );
input clk;//时钟
input [15:0] din;
input wr_clk;
input syncOrNot;
input rst;
input wr_en;
output [27:0] tx;//cameraLink数据输出
input sync_out;//cameraLink外同步脉冲
output txclk;//cameraLink数据时钟
output cc_en;//cameraLink外部控制信号使能
output ccen_n;//cameraLink外部控制信号使能
output pwr_dwn_n;//cameraLink数据上升沿还是下降沿有效选择
output almost_full;
wire CLK_OUT1;
wire [15:0] dat;
wire read_en;
wire empty;
		systemclk u1 (
		.CLK_IN1(clk), 
		.CLK_OUT1(CLK_OUT1) 
	);
	myfifo u2 (
		.rst(rst), 
		.wr_clk(wr_clk), 
		.rd_clk(CLK_OUT1), 
		.din(din), 
		.wr_en(wr_en), 
		.rd_en(read_en), 
		.dout(dat), 
		.full(), 
		.almost_full(almost_full), 
		.empty(empty)
	);
	
cameraLink u3 (
		.pClk(CLK_OUT1), 
		.nrst(rst), 
		.empty(empty), 
		.dat(dat), 
		.tx(tx), 
		.syncOrNot(syncOrNot), 
		.sync_out(sync_out), 
		.txclk(txclk), 
		.cc_en(cc_en), 
		.pwr_dwn_n(pwr_dwn_n), 
		.read_en(read_en),
		.ccen_n(ccen_n)
	);	
endmodule

