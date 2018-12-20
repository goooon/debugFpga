`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:06:59 08/10/2016
// Design Name:   CameraLinknew
// Module Name:   C:/14_ethernet_test/14_ethernet_test/test_camerlinknew.v
// Project Name:  ethernet_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CameraLinknew
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_camerlinknew;

	// Inputs
	reg pClk;
	reg nrst;
	reg [15:0] dat;
	reg syncOrNot;
	reg sync_out;
	reg empty;
	reg mode;
   reg clk_50MHz;
	reg e_gtxc;
	// Outputs
	wire [27:0] tx;
	wire txclk;
	wire cc_en;
	wire ccen_n;
	wire pwr_dwn_n;
	wire read_en;
   wire [9:0] tx_data;
	wire ewrclk;
	wire etx_enable;
	wire ewr_en;
	wire [63:0] etx_din;
	wire etx_full;
	wire [15:0] tx_data_length;
	wire [15:0] tx_total_length;
	wire linedone;
	wire [63:0] ameradout;
	wire [15:0] camer_tatal_data;
	wire camer_fifo_empty;
	reg camer_rden;
	wire camer_rdclk;
	// Instantiate the Unit Under Test (UUT)
	CameraLinknew uut (
		.pClk(pClk), 
		.nrst(nrst), 
		.dat(dat), 
		.syncOrNot(syncOrNot), 
		.sync_out(sync_out), 
		.empty(empty), 
		.mode(mode), 
		.tx(tx), 
		.txclk(txclk), 
		.cc_en(cc_en), 
		.ccen_n(ccen_n), 
		.pwr_dwn_n(pwr_dwn_n), 
		.read_en(read_en),
		.test_data(tx_data),
		.camera_pause(1'b0)
	);
CamerLinkRX instance_name (
    .Datin(tx_data), 
    .nrst(nrst), 
    .camerard_clk(clk_50MHz), 
    .camerard_en(camer_rden), 
    .rx_clk(txclk), 
    .rx_locked(1'b0), 
    //.clk1(clk1), 
   // .clk2(clk2), 
    .ameradout(ameradout), 
    .cameralmost_empty(camer_fifo_empty), 
    .rx_refclk(rx_refclk), 
    .rclk_f(rclk_f), 
    .rx_pwdrn(rx_pwdrn), 
    .rx_en(rx_en), 
    .data_length(camer_tatal_data),
	 .Line_final(linedone)
    );
	 
	 
	 
	 controler contro(
    .clk(clk_50MHz), 
    .e_reset_n(e_reset), 
	 /////////////earthnet RX IOs/////////////////
    .readclk(read_clk), 
    .e_rd_en_o(e_rd_en), 
    .data_in(dout), 
    .empty(empty), 
    .dadaLength(rx_data_length), 
    .totalLength(rx_total_length), 
	 /////////////earthnet TX IOs/////////////////
    .ewrclk(ewrclk), 
    .etx_enable(etx_enable), 
    .etx_din(etx_din), 
    .etx_full(etx_full), 
    .ewr_en(ewr_en), 
    .tx_data_length(tx_data_length), 
    .tx_total_length(tx_total_length),
//////////////ddr write IOs///////////////////	 
    .ddr3_data(ddr3_data), 
    .ddr3_wren(ddr3_wren), 
    .ddr3_full(ddr3fifo_full), 
    .ddr3_wr_clk(ddr3_wr_clk),
/////////////////////////////	 
	 .linedone(linedone), 
    .cameradata(ameradout), 
    .camer_tatal_data(camer_tatal_data), 
    .camer_rden(), 
    .camer_rdclk(camer_rdclk), 
    .camer_fifo_empty(camer_fifo_empty),
	 /////////////////////////////////////
    .reset_o(reset), 
    .mode(mode)
    );
udp u1 (
    .reset_n(nrst), 
    .read_clk(read_clk), 
    .rd_en(e_rd_en), 
    .dout(dout), 
    .empty(empty), 
    .e_rxc(e_rxc), 
    .e_rxd(e_rxd), 
    .e_rxdv(e_rxdv),  
    .rx_total_length(rx_total_length), 
    .rx_data_length(rx_data_length), 
	 
	 
    .e_txc(e_gtxc), 
    .wr_clk(ewrclk), 
    .tx_enable(etx_enable),
    .wr_en(ewr_en),	 
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
    .clk_oddr(e_gtxc_oddr)
    );

	initial begin
		// Initialize Inputs
		pClk = 0;
		nrst = 0;
		dat = 0;
		syncOrNot = 0;
		sync_out = 0;
		empty = 0;
		mode = 0;
      clk_50MHz = 0;
		e_gtxc = 0;
		camer_rden = 0;
		// Wait 100 ns for global reset to finish
		#100;
		nrst = 1;
       forever #12   pClk = ~pClk ;
		// Add stimulus here
	end
	initial begin
	forever #10   clk_50MHz = ~clk_50MHz ;
	end
	
	initial begin
	forever #4   e_gtxc = ~e_gtxc ;
	end
	
   always@(negedge pClk) 
   begin
	if(read_en)
	dat <= dat +1;

   end
always@(posedge clk_50MHz)	
begin
	if(camer_fifo_empty)
	camer_rden <= 0;
	else
	camer_rden <=1;
end
endmodule









































































