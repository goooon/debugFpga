`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:20:52 08/12/2016
// Design Name:   udp
// Module Name:   C:/14_ethernet_test/14_ethernet_test/test_earth.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: udp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_earth;

	// Inputs
	reg reset_n;
	reg read_clk;
	reg rd_en;
	reg e_rxc;
	reg [7:0] e_rxd;
	reg e_rxdv;
	reg e_txc;
	reg wr_clk;
	reg tx_enable;
	reg wr_en;
	reg [63:0] etx_din;
	reg [15:0] tx_data_length;
	reg [15:0] tx_total_length;

	// Outputs
	wire [63:0] dout;
	wire empty;
	wire [15:0] rx_total_length;
	wire [15:0] rx_data_length;
	wire etx_full;
	wire e_txen;
	wire [7:0] e_txd;
	wire e_txer;
	wire data_receive;
	wire [3:0] rx_state;
	wire [3:0] tx_state;
	wire clk_oddr;

	// Instantiate the Unit Under Test (UUT)
	udp uut (
		.reset_n(reset_n), 
		.read_clk(read_clk), 
		.rd_en(rd_en), 
		.dout(dout), 
		.empty(empty), 
		.e_rxc(e_rxc), 
		.e_rxd(e_rxd), 
		.e_rxdv(e_rxdv), 
		.rx_total_length(rx_total_length), 
		.rx_data_length(rx_data_length), 
		.e_txc(e_txc), 
		.wr_clk(wr_clk), 
		.tx_enable(tx_enable), 
		.wr_en(wr_en), 
		.etx_full(etx_full), 
		.e_txen(e_txen), 
		.e_txd(e_txd), 
		.e_txer(e_txer), 
		.etx_din(etx_din), 
		.tx_data_length(tx_data_length), 
		.tx_total_length(tx_total_length), 
		.data_receive(data_receive), 
		.rx_state(rx_state), 
		.tx_state(tx_state), 
		.clk_oddr(clk_oddr)
	);

	initial begin
		// Initialize Inputs
		reset_n = 0;
		read_clk = 0;
		rd_en = 0;
		e_rxc = 0;
		e_rxd = 0;
		e_rxdv = 0;
		e_txc = 0;
		wr_clk = 0;
		tx_enable = 0;
		wr_en = 0;
		etx_din = 0;
		tx_data_length = 0;
		tx_total_length = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

