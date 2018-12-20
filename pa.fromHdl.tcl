
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ethernet_test -dir "C:/14_ethernet_test/planAhead_run_4" -part xc6slx150fgg484-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "C:/14_ethernet_test/rtl/udp.ucf" [current_fileset -constrset]
add_files [list {ipcore_dir/ram.ngc}]
set hdlfile [add_files [list {ipcore_dir/systemclk.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {ipcore_dir/fifo.ngc}]
add_files [list {ipcore_dir/fifo_64_16.ngc}]
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/iodrp_mcb_controller.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/iodrp_controller.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/mcb_soft_calibration.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/mcb_soft_calibration_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/mcb_raw_wrapper.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mcb_controller/mcb_ui_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/memc_wrapper.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/infrastructure.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rtl/ipsend.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rtl/iprecieve.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rtl/crc.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ddr3_new/rtl/mig_39_2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rtl/udp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/ram.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/fifo_64_16.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/fifo.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ddr_con.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {commandordata.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rtl/ethernet_test.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ethernet_test $srcset
add_files [list {C:/14_ethernet_test/rtl/udp.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {C:/14_ethernet_test/chipscope_icon.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {C:/14_ethernet_test/chipscope_ila.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo_64_16.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ram.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx150fgg484-2
