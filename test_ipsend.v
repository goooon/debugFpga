`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:09:50 07/06/2016
// Design Name:   ipsend
// Module Name:   D:/HYJ/Xilinx/Myproject/14_ethernet_test/test_ipsend.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ipsend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ipsend;

	// Inputs
	reg clk;
	reg wr_clk;
	reg [63:0] din;
	reg wr_en;
	reg reset_n;
	reg tx_enable;
	reg [15:0] tx_data_length;
	reg [15:0] tx_total_length;
   reg [3:0] i;
	// Outputs
	wire almost_full;
	wire txen;
	wire txer;
	wire [7:0] dataout;
	wire [3:0] tx_state;
	wire clk_oddr;
   reg [63:0] udp_data [2:0];
	reg wr_reg;
	// Instantiate the Unit Under Test (UUT)
udp instance_name (
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
    
	 ///////////////////////////////////
	 .e_txc(clk), 
    .wr_clk(wr_clk), 
    .tx_enable(tx_enable), 
    .wr_en(wr_en), 
    .etx_full(almost_full), 
    .e_txen(e_txen), 
    .e_txd(e_txd), 
    .e_txer(e_txer), 
    .etx_din(din), 
    .tx_data_length(tx_data_length), 
    .tx_total_length(tx_total_length), 
    .data_receive(data_receive), 
    .rx_state(rx_state), 
    .tx_state(tx_state), 
    .clk_oddr(clk_oddr)
    );

	
	
	initial begin
		// Initialize Inputs
		clk = 0;
		wr_clk = 0;
		wr_en = 0;
		reset_n = 0;
		tx_enable = 0;
		tx_data_length = 0;
		tx_total_length = 0;
      i = 0;
		wr_reg = 0;
		din = 0;
		// Wait 100 ns for global reset to finish
		#10;
       forever #4 clk = ~clk;
		// Add stimulus here
		end	 
	   
		initial begin
		forever #10  wr_clk = ~wr_clk;
		end
		
		 always @(posedge wr_clk)
			begin     //¶¨Òå·¢ËÍµÄ×Ö·û
				 udp_data[0]<={8'd72,8'd69,8'd76,8'd76,8'd79,8'd32,8'd65,8'd76};   //´æ´¢×Ö·ûHELL 
				 udp_data[1]<={8'd73,8'd78,8'd88,8'd32,8'd65,8'd88,8'd53,8'd49};   //´æ´¢×Ö·ûINX¿Õ¸ñ
				 udp_data[2]<={8'd73,8'd78,8'd88,8'd32,8'd54,8'd32,8'd10,8'd13};   //´æ´¢×Ö·û6¿Õ¸ñ»»ÐÐ·û»Ø³µ·û                           
			end 
			
		
		 always@(posedge  wr_clk)
		 begin
		 tx_enable <=1;
		 reset_n <= 1;
		 tx_data_length <=32;
		 tx_total_length <=52;
		 if(!almost_full)
			begin				
			wr_en <=1;
         din<=	udp_data[i];		
		   if(i==2)
				i<=0;
			else
				i<=i+1;
			end
		else
			 wr_en <=0;
		 end    
endmodule

