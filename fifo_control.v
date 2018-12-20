`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:03 08/23/2013 
// Design Name: 
// Module Name:    fifo_control 
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
module fifo_control(
	input rst,
	input spi_clk,
	//flash 读模块接口信号                         
	input [7:0] mydata,                 //从flash读出的数据
   input myvalid,                     //字节有效信号
	output read_flash,                    //读flash请求
	
	input fifo_clk,                     //fifo的clock 
   input fifo_rd_en,                   //fifo的读使能
	output [31:0] fifo_r_data,
	output prog_full
    );

wire prog_full;
wire fifo_full;
wire fifo_empty;
wire fifo_w_data;


reg [9:0] counter;
reg [3:0] counter1;



reg fifo_w_en_reg1;
reg fifo_w_en_reg2;
reg fifo_wren;
reg fifo_w_en;

reg read_flash;

//寄存器用于存储从flash读出的数据
reg [31:0] flash_data_reg;
reg [31:0] fifo_wdata_reg;

/*****************************************************************************/
//产生flash读请求读取flash的数据
always @(posedge spi_clk)
begin
	if(rst)                            //reset高有效
	  begin 
	    read_flash<=1'b0;
		 counter<=10'd0;
	  end
	else 
	  if((counter==10'd1000) && !fifo_full)      //fifo不满,产生一个读flash请求
	     begin
	    	 read_flash<=1'b1; 
			 counter<=counter+1;
		  end
	  else if(counter==10'd1001)              //counter记数停止
	     read_flash<=1'b0;
	  else
	     begin
	  	    read_flash<=1'b0; 
			 counter<=counter+1; 
        end
end	


/*****************************************************************************/
//读取4个字节的flash数据转换为32bit的数据存fifo中
always @(negedge spi_clk)
begin
	if(rst)
		begin
			counter1<=10'd0;
			fifo_wren<=1'b0;
			flash_data_reg<=0;
			fifo_wdata_reg<=0;
		end		
   else if (myvalid)
      begin   
	     if(counter1<3)                               //读取前3个flash数据
			  begin
			    flash_data_reg<={mydata,flash_data_reg[31:8]};
			    counter1<=counter1+1;
				 fifo_wren<=1'b0;
			  end
        else                                        //读取第4个flash数据
		     begin
			    fifo_wdata_reg<={mydata,flash_data_reg[31:8]};
				 flash_data_reg<=0;
				 counter1<=0;
				 fifo_wren<=1'b1;                        //接收到4个bytes数据,产生fifo写信号
			  end
		end
   else 
      fifo_wren<=1'b0;
	  
end

/*****************************************************************************/
//脉宽转化,fifo_wren--->fifo_w_en
always @(negedge fifo_clk)
begin
	if(rst)
	  begin
	    fifo_w_en_reg1<=1'b0;
	    fifo_w_en_reg2<=1'b0;
	    fifo_w_en<=1'b0;
	  end
   else 
	  begin
	  	 fifo_w_en_reg1<=fifo_wren;
	    fifo_w_en_reg2<=fifo_w_en_reg1;   
	    if(fifo_w_en_reg1 && !fifo_w_en_reg2)           //如果检测到fifo_wren的上升沿,产生fifo写请求
		   fifo_w_en<=1'b1;
		 else
		   fifo_w_en<=1'b0;
	  end
end

assign fifo_w_data=fifo_wdata_reg;



endmodule
