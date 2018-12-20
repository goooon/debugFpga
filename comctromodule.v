`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:24 11/07/2016 
// Design Name: 
// Module Name:    comctromodule 
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
module comctromodule(
output      reg    test_wire,
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
input                 etx_empty,
output   reg          ewr_en,
output   reg          etx_fifo_rst,

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
output   reg  rx_canera_en,
///////////////////////////////////////////////
output          reset_o,//高有效
output   reg    mode,
////////////////////////////////////////////
output  reg   camera_pause
    );
reg [9:0] enable;
reg e_rd_en;
reg read_com_en ;
reg command;
reg [63:0] commmand_data_reg;
reg [127:0] commmand_data;
reg reset_flag;//确保每次指令到来时只执行一次复位
reg [8:0] init_counter;
reg init_flag;//上电复位标志
reg init_reset;
reg out_reset;
reg [3:0] comm_read_counter;
///////////////////////////////
assign    reset_o = ((!init_flag) ? init_reset :out_reset);
assign   e_reset_n = (~reset_o);
assign   readclk = clk;
assign   ewrclk  = clk;
assign   ddr3_wr_clk = clk;
assign   camer_rdclk = clk;
assign   e_rd_en_o = (command ? read_com_en:e_rd_en);
//上电复位
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
//系统发送暂停
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
	read_com_en <=1'b1;
   end
else if (command && (comm_read_counter==2))
	begin   
	commmand_data_reg <= data_in; 
	read_com_en <=1'b0;
	comm_read_counter <= comm_read_counter+1'b1;
   end	
else if(command &&(comm_read_counter==3))
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


wire ewr_en1;
wire etx_enable1;
wire [63:0] etx_din1;
wire [15:0] tx_data_length1;
wire [15:0] tx_total_length1;
wire        etx_fifo_rst1;


test_earth_tx U4 (
    .en(enable[0]),
    .etx_full(etx_full), 
    .etx_empty(etx_empty), 
    .clk(clk), 
    .ewr_en(ewr_en1), 
    .etx_enable(etx_enable1), 
    .etx_din(etx_din1), 
    .tx_data_length(tx_data_length1), 
    .tx_total_length(tx_total_length1), 
    .etx_fifo_rst(etx_fifo_rst1)
    );

wire 	e_rd_en_o2;
wire    etx_enable2;
wire    [63:0]  etx_din2;
wire    ewr_en2;
wire    [15:0] tx_data_length2;  
wire    [15:0]  tx_total_length2;
wire    etx_fifo_rst2;

test_earth_tx_rx U2(
    .en(enable[1]),
    .clk(clk), 
    .e_rd_en_o(e_rd_en_o2), 
    .data_in(data_in), 
    .empty(empty), 
    .dadaLength(dadaLength), 
    .totalLength(totalLength), 
    .etx_empty(etx_empty), 
    .etx_enable(etx_enable2), 
    .etx_din(etx_din2), 
    .etx_full(etx_full), 
    .ewr_en(ewr_en2), 
    .tx_data_length(tx_data_length2), 
    .tx_total_length(tx_total_length2), 
    .etx_fifo_rst(etx_fifo_rst2)
    );
wire 	e_rd_en_o3;
wire    etx_enable3;
wire    [63:0]  etx_din3;
wire    ewr_en3;
wire    [15:0] tx_data_length3;  
wire    [15:0]  tx_total_length3;
wire    etx_fifo_rst3;
wire    [63:0] ddr3_data3;
wire    ddr3_wren3;


earth_cameraout U3 (
    .en(enable[2]),
    .clk(clk), 
    .e_rd_en_o(e_rd_en_o3), 
    .data_in(data_in), 
    .empty(empty), 
    .dadaLength(dadaLength), 
    .totalLength(totalLength), 
    .etx_enable(etx_enable3), 
    .etx_din(etx_din3), 
    .etx_full(etx_full),
    .etx_empty(etx_empty),	
	.etx_fifo_rst(etx_fifo_rst3),
    .ewr_en(ewr_en3), 
    .tx_data_length(tx_data_length3), 
    .tx_total_length(tx_total_length3), 
    .ddr3_data(ddr3_data3), 
    .ddr3_wren(ddr3_wren3), 
    .ddr3_full(ddr3_full), 
    .ddr_dataneed(ddr_dataneed)
    );
	
wire        etx_enable4;
wire [63:0] etx_din4;
wire        ewr_en4;
wire        etx_fifo_rst4;
wire [15:0] tx_data_length4;
wire [15:0] tx_total_length4;
wire        camer_rden4;
camerain_earth U5 (
    .en(enable[3]), 
    .clk(clk), 
    .etx_enable(etx_enable4), 
    .etx_din(etx_din4), 
    .etx_full(etx_full), 
    .etx_empty(etx_empty), 
    .ewr_en(ewr_en4), 
    .etx_fifo_rst(etx_fifo_rst4), 
    .tx_data_length(tx_data_length4), 
    .tx_total_length(tx_total_length4), 
    .linedone(linedone), 
    .cameradata(cameradata), 
    .camer_tatal_data(camer_tatal_data), 
    .camer_rden(camer_rden4), 
    .camer_fifo_empty(camer_fifo_empty)
    );
	
always@(*)
begin
	case(commmand_data[119:112])
		8'd1:   begin //网口上行测试模式，发送固定内容
	             ewr_en <= ewr_en1;
                 etx_enable <= etx_enable1;
                 etx_din <= etx_din1;
                 tx_data_length <= tx_data_length1;
                 tx_total_length <= tx_total_length1;
                 etx_fifo_rst <= etx_fifo_rst1; 
                 e_rd_en <= 0;
                 ddr3_data <= 64'd0;
                 ddr3_wren <= 0;
                 camer_rden <=0; 
				 rx_canera_en<=0;
                 enable	<= 10'b00_0000_0001;
                 test_wire <= 0;				 
		        end
		8'd2:   begin //网口转发下行数据
				 ewr_en <= ewr_en2;
                 etx_enable <= etx_enable2;
                 etx_din <= etx_din2;
                 tx_data_length <= tx_data_length2;
                 tx_total_length <= tx_total_length2;
                 etx_fifo_rst <= etx_fifo_rst2; 
                 e_rd_en <= e_rd_en_o2;
                 ddr3_data <= 64'd0;
                 ddr3_wren <= 0;
                 camer_rden <=0; 
				 rx_canera_en<=0;
                 enable	<= 10'b00_0000_0010;
                 test_wire <= 0;				 
         	    end 
		8'd3:   begin //camerlink发送网口下行数据	
                 ewr_en <= ewr_en3;
                 etx_enable <= etx_enable3;
                 etx_din <= etx_din3;
                 tx_data_length <= tx_data_length3;
                 tx_total_length <= tx_total_length3;
                 etx_fifo_rst <= etx_fifo_rst3; 
                 e_rd_en <= e_rd_en_o3;
                 ddr3_data <= ddr3_data3;
                 ddr3_wren <= ddr3_wren3;
                 camer_rden <=0;
				 rx_canera_en<=0;
                 enable	<= 10'b00_0000_0100;
                 test_wire <= 0;				 
         	    end 
		4'd4:    begin //camerlink接收数据并通过网口发送	
                 ewr_en <= ewr_en4;
                 etx_enable <= etx_enable4;
                 etx_din <= etx_din4;
                 tx_data_length <= tx_data_length4;
                 tx_total_length <= tx_total_length4;
                 etx_fifo_rst <= etx_fifo_rst4; 
                 e_rd_en <= 0;
                 ddr3_data <= 0;
                 ddr3_wren <= 0;
                 camer_rden <=camer_rden4;
				 rx_canera_en<=1;
                 enable	<= 10'b00_0000_1000;
                 test_wire <= 1;				 
         	     end
		default: begin//
		         ewr_en <= 0;
                 etx_enable <= 0;
                 etx_din <= 0;
                 tx_data_length <= 0;
                 tx_total_length <= 0;
                 etx_fifo_rst <= 0; 
                 e_rd_en <= 0;
                 ddr3_data <= 0;
                 ddr3_wren <= 0;
                 camer_rden <=0;
				 rx_canera_en<=0;
                 enable	<= 10'b00_0000_0000;				 
	        	 end//网口发送节收的图像数据		
	endcase
end



endmodule
