`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:17 01/07/2013 
// Design Name: 
// Module Name:    ethernet 
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
module ethernet_test(
					input reset_n,                           
					input  fpga_gclk,
					output e_reset,
//               output CLK_25_ASIC,		
            
					input	 e_rxc,
					input	 e_rxdv,	
					input	 e_exer,						
					input  [7:0] e_rxd,        

					input	 e_txc,              
					output e_gtxc,  
					output e_txen, 
					output e_txer, 					
					output [7:0] e_txd	 
  
    );



reg data_wr_en;                     
reg [31:0] fifo_data_in;

wire [31:0] fifo_w_data;
wire [31:0] fifo_rd_data;
wire read_udp_fifo;
wire fifo_full;

(*keep="true"*) wire [7:0] e_txd;
(*keep="true"*) wire e_txen;
(*keep="true"*) wire e_rxc;

(*keep="true"*) wire [7:0] e_rxd;

parameter SEND_TEST =1'b1;       //默认为发送测试程序

assign e_gtxc=e_rxc;	            

////////udp发送和接收程序/////////////////// 
udp udp_inst(
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
   .e_rxdv(e_rxdv),
	.udp_clk(e_rxc),
	.txen(e_txen),
	.txer(txer),
	.phyreset(e_reset),
	.e_txd(e_txd),
	.data_o_valid(data_o_valid),                    //数据接收有效信号,写入FIFO/
	.fifo_w_data(fifo_w_data),                      //接收到的32bit数据写入FIFO/
	.read_udp_fifo(read_udp_fifo),                  //FIFO读命令/                   
	.fifo_r_data(fifo_rd_data),                     //FIFO读出的32bit数据/
	.fifo_empty(fifo_empty),  
	.valid_ip_p(),
	.crc_valid()
	);
	
//////////FIFO用于存储以太网接收到的数据或测试数据///////////////////
fifo fifo_rw (
  .clk(e_rxc),               	      // input clk
  .rst(0),                 	      // input rst
  .din(fifo_data_in),       	      // input [31 : 0] din
  .wr_en(data_wr_en),      	      // input wr_en
  .rd_en(read_udp_fifo),            // input rd_en
  .dout(fifo_rd_data),      	      // output [31 : 0] dout
  .full(fifo_full),             	   // output full
  .empty(fifo_empty),        	      // output empty
  .prog_full()    	               // output prog_full  
  
);

//////////added for receive test///////////////////

always @(negedge e_rxc)
begin
	if(reset_n==1'b0)
	  begin
	    data_wr_en<=1'b0;
	  end
   else 
	  begin
	    if (fifo_full)	             //如果FIFO满了, 不再写入	  
	  	    data_wr_en<=1'b0;
		 else 
		   if (SEND_TEST ==1'b1) begin       //Ethernet发送测试
			   data_wr_en<=1'b1;
				fifo_data_in<=fifo_w_data+1'b1;
		   end		
		   else                          //Ethernet环路测试
				if (data_o_valid) begin           
					fifo_data_in<= fifo_w_data;
					data_wr_en<=1'b1;
				end	
				else
					data_wr_en<=1'b0;		  
	  end
end	
	


endmodule
