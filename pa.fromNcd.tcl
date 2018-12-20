
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name ethernet_test -dir "C:/14_ethernet_test/planAhead_run_5" -part xc6slx150fgg484-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/14_ethernet_test/ethernet_test_cs.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/14_ethernet_test} {ipcore_dir} }
add_files [list {C:/14_ethernet_test/chipscope_icon.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {C:/14_ethernet_test/chipscope_ila.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/dgfew.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/e_rxfifo.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/e_tx_fifo.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo64_64_64.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo_32_64_32.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo_64_16.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo_64_16_64.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo_64_32_16.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ram.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "C:/14_ethernet_test/rtl/udp.ucf" [current_fileset -constrset]
add_files [list {C:/14_ethernet_test/rtl/udp.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/14_ethernet_test/ethernet_test.ncd"
if {[catch {read_twx -name results_1 -file "C:/14_ethernet_test/ethernet_test.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/14_ethernet_test/ethernet_test.twx\": $eInfo"
}
