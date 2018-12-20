`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:10 11/05/2013
// Design Name:   ethernet
// Module Name:   E:/hardware/ethernet_test/ethernet_testch.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ethernet
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ethernet_testch;

	// Inputs
	reg reset;
	reg fpga_gclk;
	reg A_TLK_RXCLK;
	reg [19:0] A_TLK_RXD;

	// Outputs
	wire E_RESET;
	wire A_TLK_RXRATE;
	wire E_TXC;
	wire E_TXEN;
	wire [7:0] E_TXD;


	reg [7:0] rx_couter =0;
	// Instantiate the Unit Under Test (UUT)
	ethernet uut (
		.reset(reset), 
		.fpga_gclk(fpga_gclk), 
		.E_RESET(E_RESET), 
		.A_TLK_RXCLK(A_TLK_RXCLK), 
		.A_TLK_RXD(A_TLK_RXD), 
		.A_TLK_RXRATE(A_TLK_RXRATE), 
		.E_TXC(E_TXC), 
		.E_TXEN(E_TXEN), 
		.E_TXD(E_TXD)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		fpga_gclk = 0;
		A_TLK_RXCLK = 0;
		A_TLK_RXD = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	
	
	
	always #4 fpga_gclk = !fpga_gclk;	
	
	always #4 A_TLK_RXCLK = !A_TLK_RXCLK;
	
	always @(negedge A_TLK_RXCLK)
    begin

	  if (rx_couter == 8'd100)
	    rx_couter=0;
	  else 
	    rx_couter = rx_couter + 1'b1; 	
		 
	  case(rx_couter)
	   0: A_TLK_RXD[7:0] = 20'h55;
	   1: A_TLK_RXD[7:0]  = 20'hd5;
	   2: A_TLK_RXD[7:0]  = 20'h55;
	   3: A_TLK_RXD[7:0]  = 20'h55;
	   4: A_TLK_RXD[7:0]  = 20'h2c;
	   5: A_TLK_RXD[7:0]  = 20'h00;
	   6: A_TLK_RXD[7:0]  = 20'h11;                 //crc8
	   7: A_TLK_RXD[7:0]  = 20'h00;      
	   8: A_TLK_RXD[7:0]  = 20'h00;     
	   9: A_TLK_RXD[7:0]  = 20'h00;     
	   10: A_TLK_RXD[7:0]  = 20'h00;                //mac address    
	   11: A_TLK_RXD[7:0]  = 20'h00;     
	   12: A_TLK_RXD[7:0]  = 20'h01;
	   13: A_TLK_RXD[7:0]  = 20'h00;      
	   14: A_TLK_RXD[7:0]  = 20'h00;     
	   15: A_TLK_RXD[7:0]  = 20'h00;     
	   16: A_TLK_RXD[7:0]  = 20'h00;     
	   17: A_TLK_RXD[7:0]  = 20'h00;     
	   18: A_TLK_RXD[7:0]  = 20'h02; 	
	   19: A_TLK_RXD[7:0]  = 20'h08;                //ip    
	   20: A_TLK_RXD[7:0]  = 20'h00; 	
	   21: A_TLK_RXD[7:0]  = 20'h45;     
	   22: A_TLK_RXD[7:0]  = 20'h00; 
	   23: A_TLK_RXD[7:0]  = 20'h00;               //packet length    
	   24: A_TLK_RXD[7:0]  = 20'h2E; 
		25: A_TLK_RXD[7:0]  = 20'h00; 	
		default:A_TLK_RXD <=A_TLK_RXD+1'b1;	
	 endcase
   end
      
endmodule

