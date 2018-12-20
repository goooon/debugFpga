



module UART_module(
input        nrst,
input        tx_en,
input        rx_en,
input        clk,//50MHz

input [7:0]  UART_data_in,
input        UART_wt_en,
input        UART_wt_clk,
output       UART_wt_full,
output reg   UART_tx,

input        UART_rd_en,
input        UART_rd_clk,
input        UART_rx,
output [7:0] UART_rd_data,
output       UART_rd_empty,
output       UART_rd_almostempty,

output       rs422_de,
output       rs422_re_n,
output       rs422_te 
 );

parameter  idle      = 4'd0 ;
parameter  getdata   = 4'd1 ;
parameter  sendstart = 4'd2 ;
parameter  sendbit0  = 4'd3 ;
parameter  sendbit1  = 4'd4 ;
parameter  sendbit2  = 4'd5 ;
parameter  sendbit3  = 4'd6 ;
parameter  sendbit4  = 4'd7 ;
parameter  sendbit5  = 4'd8 ;
parameter  sendbit6  = 4'd9 ;
parameter  sendbit7  = 4'd10;
parameter  sendend   = 4'd11;

parameter  waiterx   = 4'd0;
parameter  rx_start  = 4'd1;
parameter  rx_bit0   = 4'd2;
parameter  rx_bit1   = 4'd3;
parameter  rx_bit2   = 4'd4;
parameter  rx_bit3   = 4'd5;
parameter  rx_bit4   = 4'd6;
parameter  rx_bit5   = 4'd7;
parameter  rx_bit6   = 4'd8;
parameter  rx_bit7   = 4'd9;
parameter  rxend     = 4'd10;


reg   [15:0]  tx_clk_div=0;
reg           txclk=0;
reg   [3:0]   tx_state;
reg   [7:0]   tx_data_reg;
reg           UART_txfifo_rden;
wire  [7:0]   UART_txfifo_data;
wire          UART_txfifo_empty;

reg  [15:0]  rx_clk_div=0;
reg          rxclk=0;
reg  [3:0]   rx_state;
reg  [7:0]   rx_data;
reg  [1:0]   uart_rx_reg;
reg          uart_fifo_wten;
reg  [3:0]   rx_data_count;

assign rs422_de   = 1'b1;
assign rs422_re_n = 1'b0;
assign rs422_te   = 1'b1;
UART_TX_fifo uart_tx (
  .rst(~nrst), // input rst
  .wr_clk(UART_wt_clk), // input wr_clk
  .rd_clk(txclk), // input rd_clk
  .din(UART_data_in), // input [7 : 0] din
  .wr_en(UART_wt_en), // input wr_en
  .rd_en(UART_txfifo_rden), // input rd_en
  .dout(UART_txfifo_data), // output [7 : 0] dout
  .full(), // output full
  .almost_full(UART_wt_full), // output almost_full
  .empty(UART_txfifo_empty) // output empty
);
UART_RX_fifo uart_rx (
  .rst(~nrst), // input rst
  .wr_clk(rxclk), // input wr_clk
  .rd_clk(UART_rd_clk), // input rd_clk
  .din(rx_data), // input [7 : 0] din
  .wr_en(uart_fifo_wten), // input wr_en
  .rd_en(UART_rd_en), // input rd_en
  .dout(UART_rd_data), // output [7 : 0] dout
  .full(full), // output full
  .almost_full(almost_full), // output almost_full
  .empty(UART_rd_empty), // output empty
  .almost_empty(UART_rd_almostempty) // output almost_empty
);
always@(posedge clk)
begin
	if(tx_clk_div == 16'd216)//对应波特率115200
		begin
			 tx_clk_div <=0;
			 txclk <= ~ txclk ;
		end
	 else
      tx_clk_div <= tx_clk_div + 16'd1;
end

always@(posedge clk)
begin
	if(rx_clk_div == 16'd54)//对应波特率115200*4
		begin
			 rx_clk_div <=0;
			 rxclk <= (~rxclk) ;
		end
	 else
      rx_clk_div <= rx_clk_div + 16'd1;
end


always@(posedge txclk)
begin
if(!nrst)
  begin
  tx_state <= idle;
  UART_txfifo_rden <= 0;
  UART_tx <= 1'b1;
  end
else if(tx_en)
  begin
    case(tx_state)
	   idle    :   begin
		            if(!UART_txfifo_empty)
						begin
		            tx_state <= getdata;
						UART_txfifo_rden <=1'b1;
						end
						UART_tx <= 1'b1; 
		            end
		getdata :	begin
		            tx_state <= sendstart;
						UART_txfifo_rden <=1'b0;
						UART_tx <= 1'b1; 
		            end		
	   sendstart:  begin
		            tx_state <= sendbit0;
						UART_txfifo_rden <=1'b0;
						UART_tx <= 1'b0;
                  tx_data_reg <= UART_txfifo_data;						
		            end
	   sendbit0 :  begin
		            tx_state <= sendbit1;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[0]; 
		            end
	   sendbit1 :  begin
		            tx_state <= sendbit2;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[1]; 
		            end
	   sendbit2 :  begin
		            tx_state <= sendbit3;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[2]; 
		            end
	   sendbit3 :  begin
		            tx_state <= sendbit4;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[3]; 
		            end
	   sendbit4 :  begin
		            tx_state <= sendbit5;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[4]; 
		            end
		sendbit5 :  begin
		            tx_state <= sendbit6;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[5]; 
		            end
		sendbit6 :  begin
		            tx_state <= sendbit7;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[6]; 
						end
		sendbit7 :  begin
		            tx_state <= sendend;
						UART_txfifo_rden <=1'b0;
						UART_tx <= tx_data_reg[7]; 
		            end            
		sendend  :  begin
		            tx_state <= idle;
						UART_txfifo_rden <=1'b0;
						UART_tx <= 1'b1; 
		            end
		default  :  begin
		            tx_state <= idle;
						UART_txfifo_rden <=1'b0;
						UART_tx <= 1'b1; 
		            end
		endcase
  end
else
	begin
	tx_state <= idle;
   UART_txfifo_rden <= 0;
   UART_tx <= 1'b1;
 	end
end


always@(posedge rxclk)
begin
    uart_rx_reg <= {uart_rx_reg[0],UART_rx};
end

always@(posedge rxclk)
begin
   if(!nrst)
	  begin
	  rx_data_count <= 0;
	  rx_state <=  waiterx;
	  rx_data_count <= 0;
	  uart_fifo_wten <= 0;
	  end
	else if(rx_en)
	  begin
	      case(rx_state)
		   waiterx    :   begin
			               if(uart_rx_reg == 2'b10)
									begin
									rx_state <= rx_start; 
									rx_data_count <= rx_data_count +1;
									end
			               end
		   rx_start   :  begin
			               if(rx_data_count == 1)
								begin  rx_state <= rx_bit0; rx_data_count <= 0; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit0    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit1; rx_data_count <= 0;  rx_data[0] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			              end
			rx_bit1    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit2; rx_data_count <= 0;  rx_data[1] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit2    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit3; rx_data_count <= 0;  rx_data[2] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit3    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit4; rx_data_count <= 0;  rx_data[3] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit4    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit5; rx_data_count <= 0;  rx_data[4] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit5    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit6; rx_data_count <= 0;  rx_data[5] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit6    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rx_bit7; rx_data_count <= 0;  rx_data[6] <= UART_rx; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rx_bit7    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= rxend; rx_data_count <= 0;  rx_data[7] <= UART_rx; uart_fifo_wten <= 1; end
								else
								rx_data_count <= rx_data_count  + 1;
			               end
			rxend    :  begin
			               if(rx_data_count == 3)
								begin  rx_state <= waiterx;  rx_data_count <= 0;   end
								else
								begin rx_data_count <= rx_data_count  + 1; uart_fifo_wten <= 0;end
			               end
			default   :   begin
			              rx_data_count <= 0;
	                    rx_state <=  waiterx;
	                    rx_data_count <= 0; 
							  uart_fifo_wten <= 0;
			              end
			endcase		 
	  end
	else
	 begin
	   rx_data_count <= 0;
	   rx_state <=  waiterx;
	   rx_data_count <= 0;
		uart_fifo_wten <= 0;
	 end
end
endmodule 