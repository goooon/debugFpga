`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:56 08/26/2016
// Design Name:   UART_module
// Module Name:   C:/14_ethernet_test/test_uart.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_uart;

	// Inputs
	reg nrst;
	reg tx_en;
	reg rx_en;
	reg clk;
	reg [7:0] UART_data_in;
	reg UART_wt_en;
	wire UART_wt_clk;
	reg UART_rd_en;
	reg UART_rd_clk;

	// Outputs
	wire UART_wt_full;
	wire UART_tx;
	wire [7:0] UART_rd_data;
	wire UART_rd_empty;
	wire UART_rd_almostempty;

	// Instantiate the Unit Under Test (UUT)
	UART_module uut (
		.nrst(nrst), 
		.tx_en(tx_en), 
		.rx_en(rx_en), 
		.clk(clk), 
		.UART_data_in(UART_data_in), 
		.UART_wt_en(UART_wt_en), 
		.UART_wt_clk(UART_wt_clk), 
		.UART_wt_full(UART_wt_full), 
		.UART_tx(UART_tx), 
		.UART_rd_en(UART_rd_en), 
		.UART_rd_clk(clk), 
		.UART_rx(UART_tx), 
		.UART_rd_data(UART_rd_data), 
		.UART_rd_empty(UART_rd_empty), 
		.UART_rd_almostempty(UART_rd_almostempty)
	);

	initial begin
		// Initialize Inputs
		nrst = 0;
		tx_en = 0;
		rx_en = 0;
		clk = 0;
		UART_data_in = 0;
		UART_wt_en = 0;
		UART_rd_en = 0;
		UART_rd_clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
      nrst = 1; 
      tx_en = 1;
		rx_en = 1;
      UART_data_in = 65;
      forever #10 clk =~clk;
      		
		// Add stimulus here
end
  
assign UART_wt_clk = clk;


always@(posedge clk)
begin
if(UART_wt_full)
UART_wt_en <= 0;
else
UART_wt_en <= 1;
end

always@(posedge clk)
begin
if(UART_rd_almostempty)
UART_rd_en <= 0;
else
UART_rd_en <= 1;
end
  
endmodule

