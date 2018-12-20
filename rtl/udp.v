//////////////////////////////////////////////////////////////////////////////////
// Module Name:    udp
//////////////////////////////////////////////////////////////////////////////////

module udp(
			input wire            reset_n,
		   input wire            read_clk,
			input wire            rd_en,
			output     [63:0]     dout,
			output                empty,			
			input	 wire           e_rxc,
			input  wire	[7:0]	    e_rxd, 
			input	 wire           e_rxdv,	
			output wire [15:0]    rx_total_length,                     //接收IP包的总长度
			output wire [15:0]    rx_data_length,		                 //接收IP包的数据长度/
		
			input  wire           e_txc,
			input  wire           wr_clk,
			input  wire           tx_enable,
			input  wire           wr_en,
			input  wire           etx_fifo_rst,
			output wire           etx_full,
			output wire           etx_empty,
			output wire	          e_txen,
			output wire	[7:0]     e_txd,                              
			output wire		       e_txer,
			input  wire [63:0]    etx_din,
			input  wire [15:0]    tx_data_length,                      //发送IP包的数据长度/
			input  wire [15:0]    tx_total_length,                     //发送IP包的总长度/
			output wire           data_receive,
			output wire [3:0] rx_state,
			output wire [3:0] tx_state,
			output wire       clk_oddr
);

wire	[31:0] crcnext;
wire	[31:0] crc32;
wire	crcreset;
wire	crcen;
wire  [31:0] data_o;
wire  data_o_valid;
wire  empty_etx;
wire  fifo_rden;
wire  [31:0] fifo_dout;
assign etx_empty = empty_etx;
//IP frame发送
ipsend ipsend_instance (
    .clk(e_txc), 
    .txen(e_txen), 
    .txer(e_txer), 
    .dataout(e_txd), 
    .fifo_dout(fifo_dout), 
    .fifo_rden(fifo_rden), 
    .empty(empty_etx), 
    .reset_n(reset_n), 
    .tx_enable(tx_enable), 
    .crc(crc32), 
    .crcen(crcen), 
    .crcre(crcreset), 
    .crc_valid(crc_valid), 
    .tx_data_length(tx_data_length), 
    .tx_total_length(tx_total_length), 
    .tx_state(tx_state), 
    .clk_oddr(clk_oddr)
    );
	
//crc32校验
crc	crc_inst(
	.Clk(e_txc),
	.Reset(crcreset),
	.Enable(crcen),
	.Data_in(e_txd),
	.Crc(crc32),
	.CrcNext(crcnext));

//IP frame接收程序
iprecieve iprecieve_inst (
    .clk(e_rxc), 
    .datain_wire(e_rxd), 
    .e_rxdv_wire(e_rxdv), 
    .clr(reset_n), 
    .data_o(data_o), 
    .data_o_valid(data_o_valid), 
    .board_mac(), 
    .pc_mac(), 
    .IP_Prtcl(), 
    .IP_layer(), 
    .pc_IP(), 
    .board_IP(), 
    .UDP_layer(), 
    .valid_ip_P(), 
    .rx_total_length(rx_total_length), 
    .rx_data_length(rx_data_length), 
    .data_receive(data_receive), 
    .rx_state(rx_state),
	.reset_fifo(reset_fifo)
    );


e_rxfifo fifo_erx (
  .rst((~reset_n)|reset_fifo), // input rst
  .wr_clk(e_rxc), // input wr_clk
  .rd_clk(read_clk), // input rd_clk
  .din(data_o), // input [63 : 0] din
  .wr_en(data_o_valid), // input wr_en
  .rd_en(rd_en), // input rd_en
  .dout(dout), // output [63 : 0] dout
  .full(), // output full
  .empty(), // output empty
  .almost_empty(empty) // output almost_empty
);

e_tx_fifo fifo_etx(
  .rst((~reset_n)|| etx_fifo_rst), // input rst
  .wr_clk(wr_clk), // input wr_clk
  .rd_clk(e_txc), // input rd_clk
  .din(etx_din), // input [63 : 0] din
  .wr_en(wr_en), // input wr_en
  .rd_en(fifo_rden), // input rd_en
  .dout(fifo_dout), // output [31 : 0] dout
  .full(), // output full
  .almost_full(),
  .empty(empty_etx), // output empty
  .almost_empty(), // output almost_empty
  .prog_full(etx_full)
);
endmodule
