`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:05 08/10/2016 
// Design Name: 
// Module Name:    CamerLinkRX 
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
module CamerLinkRX(input     [9:0]   Datin,
                   input             nrst,
				  input             camerard_clk,
				 input             camerard_en,
                  // input                     rx_fval,
						//input                     rx_hval,
                   input                     rx_clk,
						 input                     rx_locked,
						 input                     clk1,//模式1时钟
						// input                     clk2,//模式2时钟
						input                      en,
						 output    [63:0]          ameradout,
						 output                    cameralmost_empty,
						 output                    rx_refclk,
						 output                    rclk_f,
						 output                    rx_pwdrn,
						 output                    rx_en,
                   output    reg [15:0]	   data_length,
                   output    reg             Line_final						 
    );

parameter  idle = 3'd0;
parameter  rx_start = 3'd1;
parameter  waite_receive = 3'd2;
parameter  receiving = 3'd3;

wire rx_fval;
wire rx_hval;

assign rx_fval = Datin[9];
assign rx_hval = Datin[8];
assign rx_pwdrn = 1'b1;
assign rx_en =  1'b1;
assign rclk_f = 1'b0;


reg [2:0]   rx_state;
reg [47:0]  rx_data;
reg [15:0]  h_data_count;
reg [1:0]   fval_reg;
reg [1:0]   hval_reg;
reg         dlay_flag;
reg         fifo_wt_en;
reg [3:0]   fifo_wt_count;

  ODDR2 #(
      .DDR_ALIGNMENT("NONE"), // Sets output alignment to "NONE", "C0" or "C1"
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
    ) ODDR2_inst (
      .Q(rx_refclk),   // 1-bit DDR output data
      .C0(clk1),   // 1-bit clock input
      .C1(~clk1),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(1'b1), // 1-bit data input (associated with C0)
      .D1(1'b0), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
    );
	 
always@(negedge rx_clk)
begin
rx_data <= {rx_data[39:0],Datin[7:0]};  
fval_reg <= {fval_reg[0],Datin[9]};
hval_reg <= {hval_reg[0],Datin[8]};
end

reg reset_fifo;
always@(negedge rx_clk)
begin
if(en)
begin
    reset_fifo <=0;
	if(!nrst)
		begin
		  rx_state <= idle;
		  h_data_count <=0;		  
		end
	else if(!rx_locked)
	   begin
		  case(rx_state)
		     idle     :   begin// idle state : waite for valid frame
			                 if(fifo_wt_en == 1'b1)
                             fifo_wt_en <= 1'b0;
			                 if((fval_reg == 2'b01) || dlay_flag )//detect the fval negedge
								    begin
									 if(hval_reg == 2'b01)//detect the hval podedge
									    begin
									    rx_state <= rx_start;
										 Line_final <= 0;
										 h_data_count <= 0;
										 dlay_flag <= 1'b0;
										 fifo_wt_count <= 4'd1;//received 1 data
										 end
									 else
									    dlay_flag <= 1'b1;// the hval negedge is delayed compare with fval negedge
									 end
			                end
			  rx_start  : begin//rx_start state: receive the first row of the frame
			                 
								  if(rx_fval & rx_hval)
								  begin
									  if(fifo_wt_count == 3)
										  begin
										  fifo_wt_en <= 1'b1;
										  fifo_wt_count <= 0;
										  h_data_count <= h_data_count + 16'd4;
										  end
								     else
								        begin
										  fifo_wt_count <=  fifo_wt_count + 1;
										  fifo_wt_en  <=1'b0;
									    end
								  end
								  else if(rx_fval &(!rx_hval))
								  begin
									  rx_state <= waite_receive;
									  if(fifo_wt_count == 3)
									  begin
									  fifo_wt_en <= 1'b1;
									  fifo_wt_count <= 0;
									  h_data_count <= h_data_count + 16'd4;
									  data_length <= h_data_count + 4;
									  Line_final <= 1;
									  end
									  else
									  begin
									  fifo_wt_en <= 1'b0;
									  fifo_wt_count <= 0;
									  h_data_count <= 0;
									  Line_final <= 1;
									  data_length <= h_data_count ;
									  end
								  end
								  else
								  begin
								  rx_state <= idle;
								  if(fifo_wt_count == 3)
									  fifo_wt_en <= 1'b1;
								  end
			              end
		waite_receive :  begin
		                     if(fifo_wt_en == 1'b1)
                              fifo_wt_en <= 1'b0;
									if(rx_fval)
									begin
									  if(hval_reg == 2'b01)
									  begin
									     rx_state <= receiving;
										  Line_final <= 0;
										  h_data_count <= 0;
										  fifo_wt_count <=  4'd1;
									  end
									end
									else
									rx_state <= idle;
								end
		receiving      :  begin
		                     if(rx_fval & rx_hval)
								  begin
									  if(fifo_wt_count == 3)
										  begin
										  fifo_wt_en <= 1'b1;
										  fifo_wt_count <= 0;
										  h_data_count <= h_data_count + 16'd4;
										  end
								     else
								        begin
										  fifo_wt_count <=  fifo_wt_count + 1;
										  fifo_wt_en  <=1'b0;
									    end
								  end
								  else if(rx_fval &(!rx_hval))
								  begin
									  rx_state <= waite_receive;							     
									  if(fifo_wt_count == 3)
									  begin
									  fifo_wt_en <= 1'b1;
									  fifo_wt_count <= 0;
									  h_data_count <= h_data_count + 16'd4;
									  data_length <= h_data_count + 4;
									  Line_final <= 1;
									  end
									  else
									  begin
									  fifo_wt_en <= 1'b0;
									  fifo_wt_count <= 0;
									  h_data_count <= 0;
									  Line_final <= 1;
									  data_length <= h_data_count;
									  end
								  end
								  else
								  begin
								  rx_state <= idle;
								   if(fifo_wt_count == 3)
									  fifo_wt_en <= 1'b1;
									  h_data_count <= h_data_count + 16'd4;
								  end
                        end		
		  default:   begin rx_state <= idle;  end
		  endcase
		end
	else
	   begin
		  rx_state <= idle;
		  h_data_count <=0;
		end
end
else
begin
	rx_state <= idle;
    h_data_count <=0;
	reset_fifo <= 1;
	fifo_wt_en <=0;
end
end
camerarxfifo rx_fifo (
  .rst((~nrst)||reset_fifo), // input rst
  .wr_clk(~rx_clk), // input wr_clk
  .rd_clk(camerard_clk), // input rd_clk
  .din(rx_data[47:16]), // input [31 : 0] din
  .wr_en(fifo_wt_en), // input wr_en
  .rd_en(camerard_en), // input rd_en
  .dout(ameradout), // output [63 : 0] dout
  .full(full), // output full
  .almost_full(almost_full), // output almost_full
  .empty(empty), // output empty
  .almost_empty(cameralmost_empty) // output almost_empty
);

endmodule
