`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:02 07/07/2016
// Design Name:   fifo_32_64_32
// Module Name:   C:/14_ethernet_test/14_ethernet_test/ftest_fifo3.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo_32_64_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ftest_fifo3;

	// Inputs
	reg rst;
	reg wr_clk;
	reg rd_clk;
	reg [63:0] din;
	reg wr_en;
	reg rd_en;

	// Outputs
	wire [31:0] dout;
	reg [63:0] dout_reg;
	wire full;
	wire almost_full;
	wire empty;
	wire almost_empty;
   reg  read_flag;
 	// Instantiate the Unit Under Test (UUT)
e_tx_fifo uut (
		.rst(rst), 
		.wr_clk(wr_clk), 
		.rd_clk(rd_clk), 
		.din(din), 
		.wr_en(wr_en), 
		.rd_en(rd_en), 
		.dout(dout), 
		.full(full), 
		.almost_full(almost_full), 
		.empty(empty), 
		.almost_empty(almost_empty)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		wr_clk = 0;
		rd_clk = 0;
		din = 0;
		wr_en = 0;
		rd_en = 0;
      dout_reg =0 ;
		read_flag = 0;
		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
      forever #10 wr_clk = ~wr_clk;		
		// Add stimulus here

	end
   initial begin
	forever #4 rd_clk = ~rd_clk;
   end
	
	always@(posedge wr_clk)
	begin
	if(!almost_full)
	begin
	din <= din+1;
	wr_en<=1;
	end
	else
	wr_en<=0;
   end
	
	always@(posedge rd_clk)
	begin
	if(!almost_empty)
		begin
		  if(rd_en==0)
		    begin rd_en<=1; read_flag<=1;end
		  else
		    dout_reg <=dout;
		end
	else
		begin
		   rd_en<=0	;
			if(read_flag==1)
		   begin dout_reg <=dout;read_flag<=0; end 
		end
	
	end
	
endmodule

