`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: uestc
// Engineer: heyj
// 
// Create Date:    21:02:00 05/27/2016 
// Design Name: 
// Module Name:    CameraLink 
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
module cameraLink(
pClk,//发送时钟
nrst,//复位
empty,//fifo空
dat,//数据
tx,//发送数据
syncOrNot,
sync_out,//外同步信号
txclk,//发送时钟
cc_en,//控制使能
pwr_dwn_n,//上升下降沿选择
read_en,//fifo读数据使能
ccen_n
);
input pClk,nrst;
input [15:0] dat;
input syncOrNot;
input sync_out;
input empty;
output [27:0]tx;
output txclk;
output cc_en;
output ccen_n;
output pwr_dwn_n;
output reg read_en;
reg   [16:0] clk_count=17'b0;
reg   sync_inner = 1'b0;
wire   sync;
reg [1:0] sync_reg=2'b0;
reg [1:0] f_reg=2'b0;
reg [1:0] l_reg=2'b0;
reg [3:0] f_count_reg=4'b0;
reg [3:0] l_count_reg=4'b0;
reg [3:0] d_count_reg=4'b0;
reg [8:0] l_count2 =  9'b0;
reg       l_count2_en=1'b0;
reg  f_count_reg_en=1'b0;
reg  l_count_reg_en=1'b0;
reg  d_count_reg_en=1'b0;
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

always@(posedge pClk) begin
if(clk_count==17'd66000) begin
  sync_inner <= ~sync_inner;
  clk_count <= 17'b0; end
  else
  clk_count <= clk_count + 17'b1;
end

assign sync = syncOrNot ? sync_out : sync_inner;

always@(posedge pClk) begin
sync_reg[1] <= sync_reg[0];
sync_reg[0] <= sync;
if(f_count_reg_en == 1'b1)
f_count_reg <= f_count_reg + 4'b0001;
else
f_count_reg <= 4'b0000;
if(l_count_reg_en == 1'b1)
l_count_reg <= l_count_reg + 4'b1;
else
l_count_reg <= 4'b0;
if(d_count_reg_en == 1'b1)
d_count_reg <= d_count_reg + 4'b1;
else
d_count_reg <= 4'b0;
if(l_count2_en == 1'b1)
l_count2 <= l_count2 + 9'd1;
else
l_count2 <= 9'b0;
end


always @(posedge pClk)
begin//读入bit转换
	if(!nrst) begin
		lineCount<=9'b0;
		fvalReg<=1'b0;
		lvalReg<=1'b0;
		dvalReg<=1'b0;
		f_count_reg_en <= 1'b0;
	   lineDatCount <= 9'b0;
      l_count_reg_en <= 1'b0;
      d_count_reg_en <= 1'b0;
		l_count2_en <= 1'b0;
		
	end
	else if(!empty)
	begin
		if(sync_reg == 2'b10 )//检测到同步信号下降沿
		   begin
			f_count_reg_en <= 1'b1;
			fvalReg <= 1'b0;
		   dvalReg <= 1'b0;
			lineDatCount <= 9'b0;
         l_count_reg_en <= 1'b0;
         d_count_reg_en <= 1'b0;
			end
		else if(f_count_reg == 4'd9)//积分时间暂时为10
			begin
			fvalReg <=1;
			lvalReg <= 1'b0;
			dvalReg <= 1'b0;
			lineCount <= 9'b0;
			f_count_reg_en <= 1'b0;
			l_count_reg_en <= 1'b1;
			l_count2_en <= 1'b0;
			end
		else if((lineCount == 9'b0) & (l_count_reg == 4'd3) & (lineCount < 9'd256))
		   begin
			lvalReg<=1'b1;
			l_count_reg_en <= 1'b0;
			d_count_reg_en <= 1'b1;
			lineCount <= lineCount + 9'b1;
			end
		else if((lineCount != 9'b0) & (l_count_reg ==4'd5) & (lineCount < 9'd256))
		   begin
			lvalReg<=1'b1;
			l_count_reg_en <= 1'b0;
			d_count_reg_en <= 1'b1;
			lineCount <= lineCount +9'b1;
			end
		else if((d_count_reg == 4'd8)& (lineDatCount < 9'd319))
		   begin
         read_en <= 1'b1;
			end	
      else if((d_count_reg == 4'd9)& (lineDatCount < 9'd319))
		   begin
			dvalReg <= 1'b1;
			d_count_reg_en <= 1'b0;
         //outDat <= dat;
			lineDatCount <= lineDatCount + 9'b1;
			end
      else if(dvalReg & lvalReg & fvalReg & (lineDatCount < 9'd319))
         begin
			//outDat <= dat;
			lineDatCount <= lineDatCount + 9'b1;
         end			
      else if(dvalReg & lvalReg & fvalReg & (lineDatCount == 319))
         begin
			//outDat <= dat;
			lineDatCount <= lineDatCount + 9'b1;
			read_en <= 1'b0;
         end	
      else if(dvalReg & lvalReg & fvalReg & (lineDatCount == 320))
         begin
			//outDat <= 0;
			d_count_reg_en <= 1'b1;
			dvalReg <= 1'b0;
         end		
      else if((lvalReg==1'b1) & (d_count_reg == 4'd3) & (lineDatCount == 320))
         begin
			lvalReg <= 1'b0;
			l_count_reg_en <= 1'b1;
			d_count_reg_en <= 1'b0;
			lineDatCount <= 9'b0;
         end
      else if((l_count_reg == 4'd5) & (lineCount > 9'd255) )
         begin
			lvalReg <= 1'b1;
		   fvalReg <=0;
			l_count2_en <= 1'b1;
			l_count_reg_en <= 1'b0;
         end
      else if(l_count2 == 334) 
         begin
			lvalReg <= 1'b0;
			l_count_reg_en <= 1'b1;
			l_count2_en <= 1'b0;
         end					
	end
	else
		begin
		   f_count_reg_en <= 1'b0;
			fvalReg <= 1'b0;
		   dvalReg <= 1'b0;
			lineDatCount <= 9'b0;
         l_count_reg_en <= 1'b0;
         d_count_reg_en <= 1'b0;
		end
end	
endmodule
