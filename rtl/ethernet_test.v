`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test
(
	//				input reset_n,                           
					input  fpga_gclk,                   
					output  e_reset,
//               output CLK_25_ASIC,
 //              output e_mdc,
	//				inout  e_mdio,	           
					input	 e_rxc,                       //125Mhz ethernet gmii rx clock
					input	 e_rxdv,	
					input	 e_rxer,						
					input  [7:0] e_rxd,        

					input	 e_txc,                     //25Mhz ethernet mii tx clock         
					output e_gtxc_oddr,                    //25Mhz ethernet gmii tx clock  
					output e_txen, 
					output e_txer,
					output [7:0] e_txd,	
////////////////////////cameraLink//////////////////
               output  [27:0] tx,
					input          sync_out,
					output txclk,
               output cc_en,
               output ccen_n,
               output pwr_dwn_n,
					
//////////////////////////////////////////////////////cameraLink RX 
               input  [9:0] cameraRX_data,
					input  camera_rx_clk,
					input  camera_rx_locked,
					output camera_rx_refclk,
					output camera_rx_en,
					output camera_rx_pwdrn,
					output camera_rx_rck_f,
 	//////////////////////////////ddr3-c3 ios/////////////////////////////////////////////				
					 
				   inout  [15:0]                                    mcb3_dram_dq,     
					output [12:0]                                    mcb3_dram_a,      
					output [2:0]                                     mcb3_dram_ba,
					output                                           mcb3_dram_ras_n,
					output                                           mcb3_dram_cas_n,
					output                                           mcb3_dram_we_n,
					output                                           mcb3_dram_odt,
					output                                           mcb3_dram_cke,
					output                                           mcb3_dram_dm,
					inout                                            mcb3_dram_udqs,
					inout                                            mcb3_dram_udqs_n,
					inout                                            mcb3_rzq,
					inout                                            mcb3_zio,
					output                                           mcb3_dram_udm,
					inout                                            mcb3_dram_dqs,
					inout                                            mcb3_dram_dqs_n,
					output                                           mcb3_dram_ck,
					output                                           mcb3_dram_ck_n,
					output                                           mcb3_dram_reset_n,
					output  reg                                      led,
					output                                           led1,

////////////////////////////////////////////////////////////////////////////////////////////
               input                                            UART_rx,
					output                                           UART_tx,
					output                                           rs422_de,
					output                                           rs422_re_n,
					output                                           rs422_te
    );
                    
wire        reset;
wire [31:0] ram_wr_data;
wire [31:0] ram_rd_data;
wire [8:0] ram_wr_addr;
wire [8:0] ram_rd_addr;
wire [9:0] cameratest_data;
assign led1 = (~reset);
wire system_clk;        
wire [3:0] tx_state;
wire [3:0] rx_state;
wire [15:0] rx_total_length;          //rx 的IP包的长度
wire [15:0] tx_total_length;          //tx 的IP包的长度
wire [15:0] rx_data_length;           //rx 的UDP的数据包长度
wire [15:0] tx_data_length;           //tx 的UDP的数据包长度
wire clk_50MHz;
wire ddr3_clk;
wire data_receive;
reg ram_wr_finish;
wire [63:0] dout;
reg [31:0] udp_data [4:0];                        //存储发送字符
reg ram_wren_i;
reg [8:0] ram_addr_i;
reg [31:0] ram_data_i;
reg [4:0] i;
wire [63:0] etx_din;
wire data_o_valid;
wire [15:0] data_o_length;
wire [15:0] total_o_length;
wire wea;
wire [8:0] addra;
wire [31:0] dina;
wire [31:0]  rx_data_o;
wire [8:0]   ram_wr_ddr_o; 
wire         data_valid_o;
wire         comm_o_valid; 
wire [63:0]  commomd;
wire  etx_empty;
wire  etx_fifo_rst;
///////////////////ddr
wire        c3_clk0;
wire [63:0] ddr2fifo_data;
wire        fifo2_wren;
wire        fifo2_full;
wire [63:0] fifo2ddr_data;
wire        fifo1_rden;
wire        fifo1_empty;
wire [63:0] ddr3_data;
wire        ddr3fifo_empty;
wire       cameraread_en;
wire        ddr_dataneed;
wire test_wire;
//////////////////camera
wire [15:0] ddr3_dout;
wire  camera_pause;
wire camera_refclk;
//assign e_gtxc_oddr = e_rxc;
reg [26:0] counter;
//////////////cameraLink rx
wire camerard_clk;
wire camerard_en;
wire [63:0] cameradata;
wire camer_fifo_empty;
wire linedone;
wire [15:0] camer_total_data;
wire rx_canera_en;	 
always@(posedge c3_clk0)
begin
if(counter==0)
begin led <= ~led;  counter =counter +1; end
else
counter =counter +1;
end	  
//////////////system clk///////////////
   IBUFG #(
      .IOSTANDARD("DEFAULT")
   ) IBUFG_inst (
      .O(system_clk), // Clock buffer output
      .I(fpga_gclk)  // Clock buffer input (connect directly to top-level port)
   );
	   systemclk myclk
   (// Clock in ports
    .CLK_IN1(system_clk),      // IN
    // Clock out ports
    .CLK_OUT1(clk_cammera),     // OUT
    .CLK_OUT2(e_gtxc),
    .CLK_OUT3(clk_50MHz),
	 .CLK_OUT4(camera_refclk));    // OUT
	  ddr_clk instance_name
   (// Clock in ports
    .CLK_IN1(system_clk),      // IN
    // Clock out ports
    .CLK_OUT1(ddr3_clk));    // OUT
////////udp发送和接收程序/////////////////// 
udp u1 (
    .reset_n(~reset), 
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
	.etx_fifo_rst(etx_fifo_rst),
    .etx_full(etx_full), 
	.etx_empty(etx_empty),
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

comctromodule contro(
    .test_wire(test_wire),
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
	.etx_empty(etx_empty),
    .ewr_en(ewr_en), 
	.etx_fifo_rst(etx_fifo_rst),
    .tx_data_length(tx_data_length), 
    .tx_total_length(tx_total_length),
//////////////ddr write IOs///////////////////	 
    .ddr3_data(ddr3_data), 
    .ddr3_wren(ddr3_wren), 
    .ddr3_full(ddr3fifo_full), 
    .ddr3_wr_clk(ddr3_wr_clk), 
	 .ddr_dataneed(ddr_dataneed),
///////////////////////////////////////////////
    .linedone(linedone),
    .cameradata(cameradata),
    .camer_tatal_data(camer_total_data),
    .camer_rden(camerard_en),
    .camer_rdclk(camerard_clk),
    .camer_fifo_empty(camer_fifo_empty),
	.rx_canera_en(rx_canera_en),
/////////////////////////////////////////////	 
    .reset_o(reset), 
    .mode(mode),
	.camera_pause(camera_pause)
    );

ddr_con ddr_con_c3(
    .test(test_wire),
    .c3_clk0(c3_clk0), 
	 //////////ddr3 write interface////////////////////
    .ddr3wr_clk(ddr3_wr_clk), 
    .ddr3_din(ddr3_data), 
    .ddr3wr_en(ddr3_wren), 
    .ddr3fifo_full(ddr3fifo_full), 
	 .data_need(ddr_dataneed),
	 ///////////ddr3 read interface/////////////////////
    .ddr3_dout(ddr3_dout), 
    .ddr3fifo_empty(ddr3fifo_empty),
    .ddr3rd_en(cameraread_en),  
    .ddr3rd_clk(clk_cammera), 
	 ///////////ddr3 state signal///////////////////////
    .c3_p0_wr_underrun(c3_p0_wr_underrun), 
    .c3_p0_wr_full(c3_p0_wr_full), 
    .c3_p0_cmd_full(c3_p0_cmd_full), 
    .c3_p1_rd_overflow(c3_p1_rd_overflow), 
    .c3_p1_rd_empty(c3_p1_rd_empty), 
    .c3_p1_cmd_full(c3_p1_cmd_full), 
	 ///////////ddr3 control and clk///////////////////////
    .c3_sys_clk(ddr3_clk), 
    .c3_sys_rst_n(~reset), 
    .c3_rst0(c3_rst0), 
	 //////////to ddr3 chip////////////////////////////////
    .mcb3_dram_dq(mcb3_dram_dq), 
    .mcb3_dram_a(mcb3_dram_a), 
    .mcb3_dram_ba(mcb3_dram_ba), 
    .mcb3_dram_ras_n(mcb3_dram_ras_n), 
    .mcb3_dram_cas_n(mcb3_dram_cas_n), 
    .mcb3_dram_we_n(mcb3_dram_we_n), 
    .mcb3_dram_odt(mcb3_dram_odt), 
    .mcb3_dram_cke(mcb3_dram_cke), 
    .mcb3_dram_dm(mcb3_dram_dm), 
    .mcb3_dram_udqs(mcb3_dram_udqs), 
    .mcb3_dram_udqs_n(mcb3_dram_udqs_n), 
    .mcb3_rzq(mcb3_rzq), 
    .mcb3_zio(mcb3_zio), 
    .mcb3_dram_udm(mcb3_dram_udm), 
    .mcb3_dram_dqs(mcb3_dram_dqs), 
    .mcb3_dram_dqs_n(mcb3_dram_dqs_n), 
    .mcb3_dram_ck(mcb3_dram_ck), 
    .mcb3_dram_ck_n(mcb3_dram_ck_n), 
    .mcb3_dram_reset_n(mcb3_dram_reset_n)
    );	
 
CameraLinknew cameraout (
    .pClk(clk_cammera), 
    .nrst(~reset), 
    .dat(ddr3_dout), 
    .syncOrNot(1'b0), 
    .sync_out(sync_out), 
    .empty(ddr3fifo_empty), 
	 //.empty(1'b0),
    .mode(1'b0), 
    .tx(tx), 
    .txclk(txclk), 
    .cc_en(cc_en), 
    .ccen_n(ccen_n), 
    .pwr_dwn_n(pwr_dwn_n), 
    .read_en(cameraread_en),
	 .test_data(cameratest_data),
	 .camera_pause(~test_wire)
    ); 
	 
/*CamerLinkRX rx_cammera (
    .Datin(cameratest_data), 
    .nrst(~reset), 
    .camerard_clk(camerard_clk), 
    .camerard_en(camerard_en), 
    .rx_clk(clk_cammera), 
    .rx_locked(1'b1), 
    .ameradout(cameradata), 
    .cameralmost_empty(camer_fifo_empty), 
    .rx_refclk(rx_refclk), 
    .rclk_f(rclk_f), 
    .rx_pwdrn(rx_pwdrn), 
    .rx_en(rx_en), 
    .data_length(camer_total_data), 
    .Line_final(linedone)
    );*/

CamerLinkRX rx_cammera (
    .Datin(cameratest_data), 
    .nrst(~reset), 
    .camerard_clk(camerard_clk), 
    .camerard_en(camerard_en), 
    .rx_clk(clk_cammera), 
    //.rx_locked(camera_rx_locked),	
	.rx_locked(1'b0),
    .clk1(camera_refclk),
    .en(rx_canera_en),	
    .ameradout(cameradata), 
    .cameralmost_empty(camer_fifo_empty), 
    .rx_refclk(camera_rx_refclk), 
    .rclk_f(camera_rx_rck_f), 
    .rx_pwdrn(camera_rx_pwdrn), 
    .rx_en(camera_rx_en), 
    .data_length(camer_total_data), 
    .Line_final(linedone)
    );
reg [7:0] UART_data_in;
reg 	 UART_wt_en;
UART_module uart (
    .nrst(~reset), 
    .tx_en(1'b1), 
    .rx_en(1'b1), 
    .clk(clk_50MHz), 
    .UART_data_in(UART_data_in), 
    .UART_wt_en(UART_wt_en), 
    .UART_wt_clk(clk_50MHz), 
    .UART_wt_full(UART_wt_full), 
    .UART_tx(UART_tx), 
    .UART_rd_en(UART_rd_en), 
    .UART_rd_clk(clk_50MHz), 
    .UART_rx(UART_rx), 
    .UART_rd_data(UART_rd_data), 
    .UART_rd_empty(UART_rd_empty), 
    .UART_rd_almostempty(UART_rd_almostempty), 
    .rs422_de(rs422_de), 
    .rs422_re_n(rs422_re_n), 
    .rs422_te(rs422_te)
    );
always@(posedge clk_50MHz)
	 begin
	    if(UART_wt_full)
		  UART_wt_en <= 0;
		  else
		  begin UART_wt_en <= 1; UART_data_in <= UART_data_in +1 ;end
	 end
endmodule
