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
	//flash ��ģ��ӿ��ź�                         
	input [7:0] mydata,                 //��flash����������
   input myvalid,                     //�ֽ���Ч�ź�
	output read_flash,                    //��flash����
	
	input fifo_clk,                     //fifo��clock 
   input fifo_rd_en,                   //fifo�Ķ�ʹ��
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

//�Ĵ������ڴ洢��flash����������
reg [31:0] flash_data_reg;
reg [31:0] fifo_wdata_reg;

/*****************************************************************************/
//����flash�������ȡflash������
always @(posedge spi_clk)
begin
	if(rst)                            //reset����Ч
	  begin 
	    read_flash<=1'b0;
		 counter<=10'd0;
	  end
	else 
	  if((counter==10'd1000) && !fifo_full)      //fifo����,����һ����flash����
	     begin
	    	 read_flash<=1'b1; 
			 counter<=counter+1;
		  end
	  else if(counter==10'd1001)              //counter����ֹͣ
	     read_flash<=1'b0;
	  else
	     begin
	  	    read_flash<=1'b0; 
			 counter<=counter+1; 
        end
end	


/*****************************************************************************/
//��ȡ4���ֽڵ�flash����ת��Ϊ32bit�����ݴ�fifo��
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
	     if(counter1<3)                               //��ȡǰ3��flash����
			  begin
			    flash_data_reg<={mydata,flash_data_reg[31:8]};
			    counter1<=counter1+1;
				 fifo_wren<=1'b0;
			  end
        else                                        //��ȡ��4��flash����
		     begin
			    fifo_wdata_reg<={mydata,flash_data_reg[31:8]};
				 flash_data_reg<=0;
				 counter1<=0;
				 fifo_wren<=1'b1;                        //���յ�4��bytes����,����fifoд�ź�
			  end
		end
   else 
      fifo_wren<=1'b0;
	  
end

/*****************************************************************************/
//����ת��,fifo_wren--->fifo_w_en
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
	    if(fifo_w_en_reg1 && !fifo_w_en_reg2)           //�����⵽fifo_wren��������,����fifoд����
		   fifo_w_en<=1'b1;
		 else
		   fifo_w_en<=1'b0;
	  end
end

assign fifo_w_data=fifo_wdata_reg;



endmodule
