//wm8731中寄存器的配置程序
 module phy_reg_config(
					 input clock_50m,
					 input reset_n,
					 output phy_mdc,
					 inout phy_mdio
					);
    
reg clock_20k;
reg [15:0]clock_20k_cnt;
reg [1:0]config_step;
reg [3:0]reg_index;
reg [23:0]mdio_data;
reg [23:0]reg_data;
reg start;

assign phy_mdc =clock_20k; 

 
mdio_com u1(
           .reset_n(reset_n),
           .mdio_data(mdio_data),
           .start(start),
           .tr_end(tr_end),
           .mdc(clock_20k),
           .mdio(phy_mdio));
			  

					
//产生i2c控制时钟-20khz  
always@(posedge clock_50m or negedge reset_n)   
begin
   if(!reset_n) begin
      clock_20k<=0;
      clock_20k_cnt<=0;
   end
   else if(clock_20k_cnt<1249)
      clock_20k_cnt<=clock_20k_cnt+1;
   else begin
      clock_20k<=!clock_20k;
      clock_20k_cnt<=0;
   end
end
    
//PHY寄存器配置过程控制	 
always@(posedge clock_20k or negedge reset_n)    
begin
   if(!reset_n) begin
       config_step<=0;
       start<=0;
       reg_index<=0;
   end
   else begin
     if(reg_index<12) begin
        case(config_step)
        0:begin
            mdio_data<=reg_data;           
            start<=1;                                //开始mdio数据传输
            config_step<=1;
        end
        1:begin
           if(tr_end) begin                           //mdio发送结束
               config_step<=2;
               start<=0;
           end
        end
        2:begin
           reg_index<=reg_index+1;            //配置下一个寄存器
           config_step<=0;
        end
        endcase
      end
   end
end
			
//WM8731的寄存器赋值	
always@(reg_index)   
begin
        case(reg_index)		  
        0:reg_data<=24'h1f0005;          //Reg31 = 0x0005(disable EEE)
        1:reg_data<=24'h058b85;          //Reg5 = 0x8B85(disable EEE)
        2:reg_data<=24'h060ae2;          //Reg6 = 0x0AE2(disable EEE)
        3:reg_data<=24'h1f0007;          //Reg31 =0x0007(disable EEE)	  
        4:reg_data<=24'h1e0020; 	        //Reg30 =0x0020(disable EEE)	  
        5:reg_data<=24'h151008; 			  //Reg21 =0x1008(disable EEE)
        6:reg_data<=24'h1e0000; 			  //Reg30 =0x0000(disable EEE)
        7:reg_data<=24'h0d0007; 			  //Reg13 =0x0007(disable EEE)
        8:reg_data<=24'h0e003c; 			  //Reg14 =0x003C(disable EEE)
        9:reg_data<=24'h0d4007; 			  //Reg13 =0x4007(disable EEE)	
        10:reg_data<=24'h0e0000; 		  //Reg14 =0x0000(disable EEE)			  
		//  11:reg_data<=24'h090000; 		  //Reg9 =0x0000
		  11:reg_data<=24'h001340; 		  //Reg0 =0x1340(restart auto-negatiation)
       default:reg_data<=24'h000000;
      endcase
end
endmodule

