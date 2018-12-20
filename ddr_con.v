`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:37 07/02/2016 
// Design Name: 
// Module Name:    ddr_con 
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
module ddr_con #
(
   parameter C3_NUM_DQ_PINS          = 16,        // External memory data width
   parameter C3_MEM_ADDR_WIDTH       = 13,        // External memory address width
   parameter C3_MEM_BANKADDR_WIDTH   = 3          // External memory bank address width
    )
(
    input  test,
	output c3_clk0,
//////////////////////写ddr3 fifo入口///////////////////////
   input ddr3wr_clk,
   input [63:0] ddr3_din,
   input ddr3wr_en,
   output ddr3fifo_full,	
	output reg data_need,
//////////////////////读ddr3 fifo出口///////////////////////	
	output  [15:0]	ddr3_dout,
	output     	   ddr3fifo_empty,  
   input	         ddr3rd_en,
	input          ddr3rd_clk,
   //ddr的状态信号
   output c3_p0_wr_underrun, 
   output c3_p0_wr_full,
	output c3_p0_cmd_full, 
	
	output c3_p1_rd_overflow,
   output c3_p1_rd_empty,
	output c3_p1_cmd_full, 
   //ddr 的系统信号
   input                                            c3_sys_clk,
   input                                            c3_sys_rst_n,
   output                                           c3_rst0,
   //DDR的接口信号,至DDR芯片
   inout  [C3_NUM_DQ_PINS-1:0]                      mcb3_dram_dq,     
   output [C3_MEM_ADDR_WIDTH-1:0]                   mcb3_dram_a,      
   output [C3_MEM_BANKADDR_WIDTH-1:0]               mcb3_dram_ba,
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
   output                                           mcb3_dram_reset_n	
	 );

parameter ONE_FRAME_SIZE           = 163840;

wire c3_calib_done;			

//ddr p0 user interface
wire				c3_clk0;
reg				c3_p0_cmd_en;
reg [2:0]		c3_p0_cmd_instr;
reg [5:0]		c3_p0_cmd_bl;
reg [29:0]		c3_p0_cmd_byte_addr;
wire				c3_p0_cmd_empty;
wire				c3_p0_cmd_full;

reg				c3_p0_wr_en;
reg [7:0]	   c3_p0_wr_mask;
wire [63:0]	   c3_p0_wr_data;
wire				c3_p0_wr_full;
wire				c3_p0_wr_empty;
wire [6:0]		c3_p0_wr_count;
wire				c3_p0_wr_underrun;
wire				c3_p0_wr_error;

reg				c3_p0_rd_en;
wire [63:0]	   c3_p0_rd_data;
wire				c3_p0_rd_full;
wire				c3_p0_rd_empty;
wire [6:0]		c3_p0_rd_count;
wire				c3_p0_rd_overflow;
wire				c3_p0_rd_error;

//ddr p1 user interface
reg				c3_p1_cmd_en;
reg [2:0]		c3_p1_cmd_instr;
reg [5:0]		c3_p1_cmd_bl;
reg [29:0]		c3_p1_cmd_byte_addr;
wire				c3_p1_cmd_empty;
wire				c3_p1_cmd_full;

reg				c3_p1_wr_en;
reg [7:0]	   c3_p1_wr_mask;
reg [63:0]	   c3_p1_wr_data;
wire				c3_p1_wr_full;
wire				c3_p1_wr_empty;
wire [6:0]		c3_p1_wr_count;
wire				c3_p1_wr_underrun;
wire				c3_p1_wr_error;

reg				c3_p1_rd_en;
wire [63:0]	   c3_p1_rd_data;
wire				c3_p1_rd_full;
wire				c3_p1_rd_empty;
wire [6:0]		c3_p1_rd_count;
wire				c3_p1_rd_overflow;
wire				c3_p1_rd_error;
//////////////暂时保留//////////////////////////////
////////////////////////////////////////////
reg ddr_rd_cmd_req;
reg ddr_rd_cmd_reg1;
reg ddr_rd_cmd_reg2;
//DDR写状态寄存器
reg [2:0] ddr_write_state;
parameter write_idle=3'b000;
parameter write_fifo=3'b001;
parameter write_data_done=3'b010;
parameter write_cmd_start=3'b011;
parameter write_cmd=3'b100;
parameter write_done=3'b101;

//DDR读状态寄存器
reg [2:0] ddr_read_state;
parameter read_idle=3'b000;
parameter read_cmd_start=3'b001;
parameter read_cmd=3'b010;
parameter read_wait=3'b011;
parameter read_data=3'b100;
parameter read_done=3'b101;
reg  [7:0] waite_counter_wr;
reg  [7:0] waite_counter_rd;
reg  ddr_flag;//ddr地址是否翻转
reg  ddr_empty;//ddr读空
reg  ddr_full;//ddr写满
reg [29:0] ddr_read_addr;
reg [29:0] ddr_write_addr;
////////////写ddr3 fifo 入口变量////////////////
wire [63:0] fifo2ddr_data;
reg  fifo_rden;
wire fifo_empty;
wire prog_empty;
////////////读ddr3 fifo 出口变量////////////////
reg [63:0]	ddr2fifo_data;
reg    	   fifo_wren;
wire        fifo_full;
wire        prog_full;
///////////////////////////////////////////////
//入DDR3 FIFO
///////////////////////////////////////////////

fifo64_64_64 ddr_in_fifo(
  .rst(~c3_sys_rst_n), // input rst
  .wr_clk(ddr3wr_clk), // input wr_clk
  .rd_clk(c3_clk0), // input rd_clk
  .din(ddr3_din), // input [63 : 0] din
  .wr_en(ddr3wr_en), // input wr_en
  .rd_en(fifo_rden), // input rd_en
  .dout(c3_p0_wr_data), // output [63 : 0] dout
  .full(), // output full
  .almost_full(ddr3fifo_full), // output almost_full
  .empty(fifo_empty), // output empty
  .prog_empty(prog_empty) // output prog_empty
);
///////////////////////////////////////////////
//
//
//
///////////////////////////////////////////////
fifo_64_16_64 ddr_out_fifo (
  .rst(~c3_sys_rst_n), // input rst
  .wr_clk(c3_clk0), // input wr_clk
  .rd_clk(ddr3rd_clk), // input rd_clk
  .din(c3_p1_rd_data), // input [63 : 0] din
  .wr_en(fifo_wren), // input wr_en
  .rd_en(ddr3rd_en), // input rd_en
  .dout(ddr3_dout), // output [63 : 0] dout
  .full(full), // output full
  .almost_full(fifo_full), // output almost_full
  .empty(), // output empty
  .almost_empty(ddr3fifo_empty),
  .prog_full(prog_full) // output prog_full
);

reg cameratxing;
reg cameratxend;
reg write_reg;
reg read_reg;
reg [29:0]  data_count;
always@(posedge c3_clk0)
begin
if(write_reg^read_reg)
data_count <= c3_p0_cmd_byte_addr+128974848-c3_p1_cmd_byte_addr;
else
data_count <= c3_p0_cmd_byte_addr-c3_p1_cmd_byte_addr;
end

always@(posedge c3_clk0)
begin
if(data_count > 0)
ddr_empty <= 0;
else
ddr_empty <= 1;//just test
end

always@(posedge c3_clk0)
begin
if(data_count < 42991616)//41 MB
data_need <= 1;
else
data_need <= 0;
end


always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done) begin  			 
     c3_p0_wr_en<=1'b0;
	  c3_p0_wr_mask<=8'd0;
     c3_p0_cmd_en<=1'b0;
     c3_p0_cmd_instr<=3'd0;
     c3_p0_cmd_bl<=6'd0;
     c3_p0_cmd_byte_addr<=30'd0;
	  fifo_rden<=1'b0;
     ddr_write_state<=write_idle;	  
  end
  else begin
     if(!c3_sys_rst_n) begin
	        c3_p0_cmd_byte_addr<=30'd0;	//p0写ddr的地址置位0 
           ddr_write_state <=	write_idle;	
           fifo_rden<=1'b0;
           write_reg <=0;			  
	  end  
     else begin
			case(ddr_write_state)
			write_idle:begin			  
				c3_p0_wr_en<=1'b0;
				c3_p0_wr_mask<=8'd0;
				if((c3_p0_wr_count==0)&&(!prog_empty))//fifo内部数据已经写入ddr
				begin
				fifo_rden <=1;
				ddr_write_state<=write_fifo;        //准备写入DDR的数据
				end
			end
			write_fifo:begin	  
				if(!c3_p0_wr_full) begin             //如p0写fifo数据不满,写入FIFO
					//c3_p0_wr_data<=fifo2ddr_data;
					if(c3_p0_wr_count<30)
					begin c3_p0_wr_en<=1'b1; fifo_rden <=1; end
               else if(c3_p0_wr_count==30)
					begin c3_p0_wr_en<=1'b1; fifo_rden <=0; end
					else
               begin					
				   ddr_write_state <= write_data_done;
					c3_p0_wr_en<=1'b0;
					fifo_rden <=1'b0;
					end
				end			   
			end
			write_data_done:begin
				ddr_write_state<=write_cmd_start;
			end
			write_cmd_start:begin
				c3_p0_cmd_en<=1'b0;                    
				c3_p0_cmd_instr<=3'b010;           //010为写命令
				c3_p0_cmd_bl<=6'd31;                //burst length为16个64bit宽的数据
				ddr_write_state<=write_cmd;
			end
			write_cmd:begin
				if (!c3_p0_cmd_full) 
				begin            //如果命令FIFO不满
					c3_p0_cmd_en<=1'b1;                //写命令使能
					ddr_write_state<=write_done;
				end
			end
			write_done:begin
				c3_p0_cmd_en<=1'b0;
				ddr_write_state<=write_idle;
				  if(c3_p0_cmd_byte_addr==30'd105676544)//128974592
				  //if(c3_p0_cmd_byte_addr==(ONE_FRAME_SIZE-256))
				   begin
					c3_p0_cmd_byte_addr <=30'd0;
					write_reg <= (~write_reg);
					end
				else
				   c3_p0_cmd_byte_addr<=c3_p0_cmd_byte_addr+256;	   //地址加256
			end
			default:begin		
				c3_p0_wr_en<=1'b0;
				c3_p0_cmd_en<=1'b0;
				c3_p0_cmd_instr<=3'd0; 
				c3_p0_cmd_bl<=6'd0;
				ddr_write_state<=write_idle;
			end				  
			endcase;	
      end			
   end
end  

always @(posedge c3_clk0)
begin
	if(c3_rst0 || !c3_calib_done)
    begin  			 
     c3_p1_rd_en<=1'b0;
     c3_p1_cmd_en<=1'b0;
     c3_p1_cmd_instr<=3'd0;
     c3_p1_cmd_bl<=6'd0;
     c3_p1_cmd_byte_addr<=30'd0;
     ddr_read_state<=read_idle; 
     ddr2fifo_data<=64'd0;
     ddr_write_addr<=30'b0;	
     cameratxing <=0;	  
	 end 
  else 
  begin
     if(!c3_sys_rst_n) begin
         c3_p1_cmd_byte_addr<=30'd0;
	      ddr_write_addr<=30'b0;
			ddr_read_state<=read_idle;
			read_reg <= 0;
			ddr_read_addr <=0;
     end				
    // else if((!ddr_empty)||cameratxing || test) 
	  else if(test) 
	  begin
	      case(ddr_read_state) 
         read_idle:begin
             if(!prog_full)  
				 begin                     //如果有ddr读请求(fifo未满)
                   ddr_read_state<=read_cmd_start;
				 end
         end
         read_cmd_start:begin
			      c3_p1_cmd_en<=1'b0;
               c3_p1_cmd_instr<=3'b001;            //命令字为读
               c3_p1_cmd_bl<=6'd31;                 //每次读32个数据
               ddr_read_state<=read_cmd; 
         end						 
         read_cmd:begin			
               c3_p1_cmd_en<=1'b1;                 //ddr读命令使能
					ddr_read_state<=read_wait;
					waite_counter_rd <= 0;
			end
			read_wait:begin			
               c3_p1_cmd_en<=1'b0;
					if((!c3_p1_rd_empty)&&(c3_p1_rd_count==32))                   //如果read fifo不空
               ddr_read_state<=read_data; 
		   end
         read_data:begin                    //读数据使能 
               if(c3_p1_rd_count == 1)
					begin 
					ddr_read_state<=read_done;
					c3_p1_rd_en<=1'b0; 
					fifo_wren<=0;
					end
					else
					begin
						c3_p1_rd_en<=1'b1;
						//if( c3_p1_rd_en==1'b1)//延迟一个时钟给出fifo写使能信号
						fifo_wren<=1;
						//else	
						//fifo_wren<=0;
               end					
			end
			read_done:begin
			      fifo_wren<=0;
			      ddr_read_state<=read_idle;
				  if(c3_p1_cmd_byte_addr==30'd105676544)//128974592
				 // if(c3_p1_cmd_byte_addr==(ONE_FRAME_SIZE-256))
				   begin
						c3_p1_cmd_byte_addr <=30'd0;
						read_reg <= (~read_reg);
					end
				   else
						c3_p1_cmd_byte_addr<=c3_p1_cmd_byte_addr+256;    //ddr的地址加8                 					
		   end
		   default:begin
					  c3_p1_rd_en<=1'b0;
                 c3_p1_cmd_en<=1'b0;
                 ddr_read_state<=read_idle;
                 end
			endcase;
      end
   end
end

mig_39_2 # (
    .C3_P0_MASK_SIZE(8),
    .C3_P0_DATA_PORT_SIZE(64),
    .C3_P1_MASK_SIZE(8),
    .C3_P1_DATA_PORT_SIZE(64),
    .DEBUG_EN(0),
    .C3_MEMCLK_PERIOD(3200),
    .C3_CALIB_SOFT_IP("TRUE"),
    .C3_SIMULATION("FALSE"),
    .C3_RST_ACT_LOW(1),
    .C3_INPUT_CLK_TYPE("SINGLE_ENDED"),
    .C3_MEM_ADDR_ORDER("ROW_BANK_COLUMN"),
    .C3_NUM_DQ_PINS(16),
    .C3_MEM_ADDR_WIDTH(13),
    .C3_MEM_BANKADDR_WIDTH(3)
)
myddr3 (
    .mcb3_dram_dq(mcb3_dram_dq), 
    .mcb3_dram_a(mcb3_dram_a), 
    .mcb3_dram_ba(mcb3_dram_ba), 
    .mcb3_dram_ras_n(mcb3_dram_ras_n), 
    .mcb3_dram_cas_n(mcb3_dram_cas_n), 
    .mcb3_dram_we_n(mcb3_dram_we_n), 
    .mcb3_dram_odt(mcb3_dram_odt), 
    .mcb3_dram_reset_n(mcb3_dram_reset_n), 
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
	 
    .c3_sys_clk(c3_sys_clk), 
    .c3_sys_rst_i(c3_sys_rst_n), 
    .c3_calib_done(c3_calib_done), 
    .c3_clk0(c3_clk0), 
    .c3_rst0(c3_rst0), 
	 

	 
    .c3_p0_cmd_clk(c3_clk0), 
    .c3_p0_cmd_en(c3_p0_cmd_en), 
    .c3_p0_cmd_instr(c3_p0_cmd_instr), 
    .c3_p0_cmd_bl(c3_p0_cmd_bl), 
    .c3_p0_cmd_byte_addr(c3_p0_cmd_byte_addr), 
    .c3_p0_cmd_empty(c3_p0_cmd_empty), 
    .c3_p0_cmd_full(c3_p0_cmd_full), 
	 
    .c3_p0_wr_clk(c3_clk0), 
    .c3_p0_wr_en(c3_p0_wr_en), 
    .c3_p0_wr_mask(c3_p0_wr_mask), 
    .c3_p0_wr_data(c3_p0_wr_data), 
    .c3_p0_wr_full(c3_p0_wr_full), 
    .c3_p0_wr_empty(c3_p0_wr_empty), 
    .c3_p0_wr_count(c3_p0_wr_count), 
    .c3_p0_wr_underrun(c3_p0_wr_underrun), 
    .c3_p0_wr_error(c3_p0_wr_error), 
	 
    .c3_p0_rd_clk(c3_clk0), 
    .c3_p0_rd_en(c3_p0_rd_en), 
    .c3_p0_rd_data(c3_p0_rd_data), 
    .c3_p0_rd_full(c3_p0_rd_full), 
    .c3_p0_rd_empty(c3_p0_rd_empty), 
    .c3_p0_rd_count(c3_p0_rd_count), 
    .c3_p0_rd_overflow(c3_p0_rd_overflow), 
    .c3_p0_rd_error(c3_p0_rd_error), 
	 
    .c3_p1_cmd_clk(c3_clk0), 
    .c3_p1_cmd_en(c3_p1_cmd_en), 
    .c3_p1_cmd_instr(c3_p1_cmd_instr), 
    .c3_p1_cmd_bl(c3_p1_cmd_bl), 
    .c3_p1_cmd_byte_addr(c3_p1_cmd_byte_addr), 
    .c3_p1_cmd_empty(c3_p1_cmd_empty), 
    .c3_p1_cmd_full(c3_p1_cmd_full), 
	 
    .c3_p1_wr_clk(c3_clk0), 
    .c3_p1_wr_en(c3_p1_wr_en), 
    .c3_p1_wr_mask(c3_p1_wr_mask), 
    .c3_p1_wr_data(c3_p1_wr_data), 
    .c3_p1_wr_full(c3_p1_wr_full), 
    .c3_p1_wr_empty(c3_p1_wr_empty), 
    .c3_p1_wr_count(c3_p1_wr_count), 
    .c3_p1_wr_underrun(c3_p1_wr_underrun), 
    .c3_p1_wr_error(c3_p1_wr_error), 
	 
    .c3_p1_rd_clk(c3_clk0), 
    .c3_p1_rd_en(c3_p1_rd_en), 
    .c3_p1_rd_data(c3_p1_rd_data), 
    .c3_p1_rd_full(c3_p1_rd_full), 
    .c3_p1_rd_empty(c3_p1_rd_empty), 
    .c3_p1_rd_count(c3_p1_rd_count), 
    .c3_p1_rd_overflow(c3_p1_rd_overflow), 
    .c3_p1_rd_error(c3_p1_rd_error)
    );
endmodule
