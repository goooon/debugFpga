////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: dgfew.v
// /___/   /\     Timestamp: Mon Jul 04 10:54:01 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/14_ethernet_test/ipcore_dir/tmp/_cg/dgfew.ngc C:/14_ethernet_test/ipcore_dir/tmp/_cg/dgfew.v 
// Device	: 6slx150fgg484-2
// Input file	: C:/14_ethernet_test/ipcore_dir/tmp/_cg/dgfew.ngc
// Output file	: C:/14_ethernet_test/ipcore_dir/tmp/_cg/dgfew.v
// # of Modules	: 1
// Design Name	: dgfew
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module dgfew (
  reset, signal_detect, gtx_clk, pma_rx_clk0, pma_rx_clk1, gmii_tx_en, gmii_tx_er, mdc, mdio_in, configuration_valid, loc_ref, ewrap, en_cdet, 
gmii_rx_dv, gmii_rx_er, gmii_isolate, mdio_out, mdio_tri, rx_code_group0, rx_code_group1, gmii_txd, phyad, configuration_vector, tx_code_group, 
gmii_rxd, status_vector
)/* synthesis syn_black_box syn_noprune=1 */;
  input reset;
  input signal_detect;
  input gtx_clk;
  input pma_rx_clk0;
  input pma_rx_clk1;
  input gmii_tx_en;
  input gmii_tx_er;
  input mdc;
  input mdio_in;
  input configuration_valid;
  output loc_ref;
  output ewrap;
  output en_cdet;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output mdio_out;
  output mdio_tri;
  input [9 : 0] rx_code_group0;
  input [9 : 0] rx_code_group1;
  input [7 : 0] gmii_txd;
  input [4 : 0] phyad;
  input [4 : 0] configuration_vector;
  output [9 : 0] tx_code_group;
  output [7 : 0] gmii_rxd;
  output [15 : 0] status_vector;
  
  // synthesis translate_off
  
  wire \U0/gpcs_pma_inst/RXNOTINTABLE_REG_65 ;
  wire \U0/gpcs_pma_inst/RXDISPERR_REG_66 ;
  wire \NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_INVALID ;
  wire \U0/gpcs_pma_inst/RECEIVER/RUDI_I_68 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RUDI_C_69 ;
  wire \NlwRenamedSignal_U0/gpcs_pma_inst/STATUS_VECTOR_0 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EWRAP_71 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EN_CDET_72 ;
  wire \NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_DV ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_ER_74 ;
  wire \NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_OUT_76 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_TRI_77 ;
  wire N0;
  wire NlwRenamedSig_OI_N1;
  wire \U0/gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 ;
  wire \U0/gpcs_pma_inst/SRESET_PIPE_81 ;
  wire \U0/gpcs_pma_inst/SRESET_82 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_85 ;
  wire \U0/gpcs_pma_inst/RXNOTINTABLE_SRL ;
  wire \U0/gpcs_pma_inst/RXDISPERR_SRL ;
  wire \U0/gpcs_pma_inst/SIGNAL_DETECT_REG ;
  wire \U0/gpcs_pma_inst/RESET_INT ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_91 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_92 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_93 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_94 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TXCHARISK_95 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_0_117 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_1_118 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_2_119 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_3_120 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_4_121 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_5_122 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_6_123 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_7_124 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_8_125 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_9_126 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_10_127 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_11_128 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_12_129 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_13_130 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_14_131 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_15_132 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_16_133 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_17_134 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_18_135 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_19_136 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/DISPARITY ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[9] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[8] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[7] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[6] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[5] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[4] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[3] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[2] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[1] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[0] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[12] ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_lut<2> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<3>1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<2>1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<1>1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<0>1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[3].SYNC_WR_ADDRGRAY/data_sync1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[2].SYNC_WR_ADDRGRAY/data_sync1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[1].SYNC_WR_ADDRGRAY/data_sync1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[0].SYNC_WR_ADDRGRAY/data_sync1 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_GND_134_o_MUX_311_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_GND_134_o_MUX_310_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_PWR_30_o_MUX_309_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[2]_WR_ADDR_PLUS2[1]_XOR_33_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[3]_WR_ADDR_PLUS2[2]_XOR_32_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<0> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<1> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<2> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<3> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<4> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<5> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<6> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<7> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<8> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<9> ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_204 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_205 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_206 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_207 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_208 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_209 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/REMOVE_IDLE_211 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_GND_134_o_MUX_305_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_GND_134_o_MUX_303_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_GND_134_o_MUX_301_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_GND_134_o_MUX_299_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_GND_134_o_MUX_297_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_GND_134_o_MUX_295_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_PIPE_317 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/CHARISK_BIT8_MUX_267_o ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_320 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT511 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_24_o_0 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/DISP5 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_26_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_25_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_185_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_26_o_MUX_191_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_36_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<0> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<1> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<2> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<3> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<4> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<5> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<6> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<7> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_59_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<0> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<1> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<2> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<3> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<4> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<5> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<6> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<7> ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_22_o_MUX_178_o ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/V_369 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/R_370 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_373 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_377 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/K28p5_378 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_380 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/T_381 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_S_382 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/S_383 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_388 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync1 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync1 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_DATA_WR[5]_MUX_125_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG_DATA_WR[10]_MUX_123_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_DATA_WR[14]_MUX_119_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG2 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG2 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_417 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG4_418 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG3_419 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG3_420 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_REG_421 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_422 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_424 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3_425 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11_445 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB2_446 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT3 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT2 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT1 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1-In ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2-In ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In_456 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv_458 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_37_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_36_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/GND_24_o_GND_24_o_MUX_61_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_PWR_20_o_AND_3_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/LAST_DATA_SHIFT_477 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_482 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG2_483 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_484 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<0> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<1> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<2> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<3> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<4> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<5> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<6> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<7> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<8> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<9> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<10> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<11> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<12> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<13> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<14> ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<15> ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_val ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_inv ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_510 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/GND_27_o_CGBAD_OR_43_o ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_GND_27_o_AND_69_o ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_520 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1_521 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K28p51_522 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<6>1_524 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<4>1_525 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<2>1_526 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<0>1_527 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_REG2_528 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_133_o_norst ;
  wire \U0/gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_123_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_122_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_68_o_532 ;
  wire \U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/D0p0_534 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_92_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_96_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_74_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<1> ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<3> ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<5> ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<7> ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_184_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_161_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_199_o_545 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_142_o_546 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_132_o_547 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_144_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/K28p5 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_228_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/K23p7 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/K29p7 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_556 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_558 ;
  wire \U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_559 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_567 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_K_568 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_569 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_570 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_571 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_572 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_ERR_573 ;
  wire \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_574 ;
  wire \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_575 ;
  wire \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_576 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_577 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EOP_REG1_578 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EOP_579 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SOP_580 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FROM_RX_CX_581 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_583 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_584 ;
  wire \U0/gpcs_pma_inst/RECEIVER/CGBAD_REG3_585 ;
  wire \U0/gpcs_pma_inst/RECEIVER/CGBAD_586 ;
  wire \U0/gpcs_pma_inst/RECEIVER/R_587 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_596 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ;
  wire \U0/gpcs_pma_inst/RECEIVER/SOP_REG2_599 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_601 ;
  wire \U0/gpcs_pma_inst/RECEIVER/CGBAD_REG2 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_603 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_REG3_604 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ;
  wire \U0/gpcs_pma_inst/RECEIVER/I_REG_606 ;
  wire \U0/gpcs_pma_inst/RECEIVER/R_REG1_607 ;
  wire \U0/gpcs_pma_inst/RECEIVER/T_REG2_608 ;
  wire \U0/gpcs_pma_inst/RECEIVER/T_REG1_609 ;
  wire \U0/gpcs_pma_inst/RECEIVER/D0p0_REG_610 ;
  wire \U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_612 ;
  wire \U0/gpcs_pma_inst/RECEIVER/I_613 ;
  wire \U0/gpcs_pma_inst/RECEIVER/T_614 ;
  wire \U0/gpcs_pma_inst/RECEIVER/S_615 ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o1_620 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o2_621 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o3_622 ;
  wire N10;
  wire N14;
  wire N16;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o1_626 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o2_627 ;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB1_632 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB3_633 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB4_634 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB5_635 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB6_636 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB7_637 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB8_638 ;
  wire N26;
  wire N28;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In2 ;
  wire N30;
  wire N32;
  wire N34;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_645 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_646 ;
  wire N40;
  wire N44;
  wire N46;
  wire \U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o ;
  wire \U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o1_651 ;
  wire N48;
  wire N50;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o1_654 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o2_655 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o3_656 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o4_657 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o1 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o12_659 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o13_660 ;
  wire \U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o1_661 ;
  wire \U0/gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_88_o2_662 ;
  wire N52;
  wire \U0/gpcs_pma_inst/TRANSMITTER/V_glue_set_664 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_665 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/R_glue_set_666 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_667 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_glue_set_668 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_669 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_670 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_671 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_DV_glue_set_672 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXTEND_glue_set_673 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_674 ;
  wire \U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_675 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_rstpot_676 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_677 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_rstpot_678 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_rstpot_679 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_rstpot_680 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_rstpot_681 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_rstpot_682 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_683 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_684 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_685 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_686 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_687 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/S_rstpot_688 ;
  wire \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0_rstpot_689 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_rstpot_690 ;
  wire \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_rstpot_691 ;
  wire \U0/gpcs_pma_inst/RECEIVER/C_rstpot_692 ;
  wire \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_693 ;
  wire \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_694 ;
  wire \U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_695 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_696 ;
  wire \U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_697 ;
  wire N56;
  wire N57;
  wire N59;
  wire N60;
  wire N64;
  wire N66;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_rstpot_704 ;
  wire \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_rstpot_705 ;
  wire N71;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N88;
  wire N89;
  wire N90;
  wire N91;
  wire N92;
  wire \U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_718 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_719 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_720 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_721 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_722 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_723 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_724 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_725 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_726 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_727 ;
  wire \U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_728 ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[0].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[1].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[2].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[3].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[4].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[5].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[6].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[7].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[8].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[9].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[10].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[11].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[12].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[13].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[14].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[15].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[16].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[17].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[18].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[19].DIST_RAM_SPO_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_REGCEA_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_REGCEB_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<15>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<14>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<13>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<11>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<10>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<15>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<14>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<13>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<12>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<11>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<10>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<9>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<8>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<7>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<6>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<5>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<4>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_REGCEA_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_REGCEB_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<15>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<14>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<13>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<12>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<11>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<10>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<9>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<8>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<7>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<6>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<5>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<4>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<3>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<2>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<1>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<0>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<31>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<30>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<29>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<28>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<27>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<26>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<25>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<24>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<23>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<22>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<21>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<20>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<19>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<18>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<17>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<16>_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_Q15_UNCONNECTED ;
  wire \NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2_Q15_UNCONNECTED ;
  wire [9 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI ;
  wire [7 : 0] \U0/gpcs_pma_inst/RECEIVER/RXD ;
  wire [7 : 0] \U0/gpcs_pma_inst/TRANSMITTER/TXDATA ;
  wire [7 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA ;
  wire [9 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result ;
  wire [1 : 1] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRBIN ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC ;
  wire [19 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO ;
  wire [3 : 1] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR ;
  wire [2 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY ;
  wire [3 : 1] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR ;
  wire [19 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 ;
  wire [19 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 ;
  wire [19 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 ;
  wire [3 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY ;
  wire [15 : 0] \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT ;
  wire [1 : 0] \U0/gpcs_pma_inst/TRANSMITTER/Result ;
  wire [1 : 1] \U0/gpcs_pma_inst/TRANSMITTER/_n0235 ;
  wire [1 : 0] \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT ;
  wire [3 : 0] \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA ;
  wire [7 : 0] \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP ;
  wire [7 : 0] \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 ;
  wire [6 : 6] \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD ;
  wire [15 : 0] \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG ;
  wire [4 : 0] \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR ;
  wire [1 : 0] \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE ;
  wire [3 : 0] \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT ;
  wire [1 : 0] \U0/gpcs_pma_inst/SYNCHRONISATION/Result ;
  wire [1 : 0] \U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS ;
  wire [2 : 0] \U0/gpcs_pma_inst/RECEIVER/IDLE_REG ;
  wire [3 : 0] \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG ;
  wire [7 : 0] \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 ;
  assign
    tx_code_group[9] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [9],
    tx_code_group[8] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [8],
    tx_code_group[7] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [7],
    tx_code_group[6] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [6],
    tx_code_group[5] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [5],
    tx_code_group[4] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [4],
    tx_code_group[3] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [3],
    tx_code_group[2] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [2],
    tx_code_group[1] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [1],
    tx_code_group[0] = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [0],
    gmii_rxd[7] = \U0/gpcs_pma_inst/RECEIVER/RXD [7],
    gmii_rxd[6] = \U0/gpcs_pma_inst/RECEIVER/RXD [6],
    gmii_rxd[5] = \U0/gpcs_pma_inst/RECEIVER/RXD [5],
    gmii_rxd[4] = \U0/gpcs_pma_inst/RECEIVER/RXD [4],
    gmii_rxd[3] = \U0/gpcs_pma_inst/RECEIVER/RXD [3],
    gmii_rxd[2] = \U0/gpcs_pma_inst/RECEIVER/RXD [2],
    gmii_rxd[1] = \U0/gpcs_pma_inst/RECEIVER/RXD [1],
    gmii_rxd[0] = \U0/gpcs_pma_inst/RECEIVER/RXD [0],
    status_vector[15] = NlwRenamedSig_OI_N1,
    status_vector[14] = NlwRenamedSig_OI_N1,
    status_vector[13] = NlwRenamedSig_OI_N1,
    status_vector[12] = NlwRenamedSig_OI_N1,
    status_vector[11] = NlwRenamedSig_OI_N1,
    status_vector[10] = NlwRenamedSig_OI_N1,
    status_vector[9] = NlwRenamedSig_OI_N1,
    status_vector[8] = NlwRenamedSig_OI_N1,
    status_vector[7] = NlwRenamedSig_OI_N1,
    status_vector[6] = \U0/gpcs_pma_inst/RXNOTINTABLE_REG_65 ,
    status_vector[5] = \U0/gpcs_pma_inst/RXDISPERR_REG_66 ,
    status_vector[4] = \NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_INVALID ,
    status_vector[3] = \U0/gpcs_pma_inst/RECEIVER/RUDI_I_68 ,
    status_vector[2] = \U0/gpcs_pma_inst/RECEIVER/RUDI_C_69 ,
    status_vector[1] = \NlwRenamedSignal_U0/gpcs_pma_inst/STATUS_VECTOR_0 ,
    status_vector[0] = \NlwRenamedSignal_U0/gpcs_pma_inst/STATUS_VECTOR_0 ,
    loc_ref = NlwRenamedSig_OI_N1,
    ewrap = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EWRAP_71 ,
    en_cdet = \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EN_CDET_72 ,
    gmii_rx_dv = \NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_DV ,
    gmii_rx_er = \U0/gpcs_pma_inst/RECEIVER/RX_ER_74 ,
    gmii_isolate = \NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ,
    mdio_out = \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_OUT_76 ,
    mdio_tri = \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_TRI_77 ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(NlwRenamedSig_OI_N1)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/DELAY_RXNOTINTABLE  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .Q(\U0/gpcs_pma_inst/RXNOTINTABLE_SRL )
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/DELAY_RXDISPERR  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ),
    .Q(\U0/gpcs_pma_inst/RXDISPERR_SRL )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync  (
    .C(gtx_clk),
    .D(signal_detect),
    .Q(\U0/gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNC_SIGNAL_DETECT/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/SIGNAL_DETECT_REG )
  );
  FD   \U0/gpcs_pma_inst/RXNOTINTABLE_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RXNOTINTABLE_SRL ),
    .Q(\U0/gpcs_pma_inst/RXNOTINTABLE_REG_65 )
  );
  FD   \U0/gpcs_pma_inst/RXDISPERR_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RXDISPERR_SRL ),
    .Q(\U0/gpcs_pma_inst/RXDISPERR_REG_66 )
  );
  FDP   \U0/gpcs_pma_inst/SRESET  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SRESET_PIPE_81 ),
    .PRE(\U0/gpcs_pma_inst/RESET_INT ),
    .Q(\U0/gpcs_pma_inst/SRESET_82 )
  );
  FDP   \U0/gpcs_pma_inst/SRESET_PIPE  (
    .C(gtx_clk),
    .D(NlwRenamedSig_OI_N1),
    .PRE(\U0/gpcs_pma_inst/RESET_INT ),
    .Q(\U0/gpcs_pma_inst/SRESET_PIPE_81 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EWRAP  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_91 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EWRAP_71 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EN_CDET  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_85 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/EN_CDET_72 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_1  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[1]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_1_118 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_2  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[2]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_2_119 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_0  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[0]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_0_117 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_4  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[4]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_4_121 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_5  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[5]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_5_122 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_3  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[3]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_3_120 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_7  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[7]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_7_124 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_8  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[8]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_8_125 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_6  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[6]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_6_123 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_10  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[0]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_10_127 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_11  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[1]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_11_128 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_9  (
    .C(pma_rx_clk1),
    .D(rx_code_group1[9]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_9_126 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_13  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[3]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_13_130 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_14  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[4]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_14_131 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_12  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[2]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_12_129 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_16  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[6]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_16_133 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_17  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[7]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_17_134 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_15  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[5]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_15_132 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_18  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[8]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_18_135 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_19  (
    .C(pma_rx_clk0),
    .D(rx_code_group0[9]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_19_136 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_9  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[0] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [9])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_8  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[1] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [8])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[2] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [7])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[3] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [6])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[4] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [5])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[5] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [4])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[6] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [3])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[7] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [2])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[8] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [1])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[9] ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/TX_TBI [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[0].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_0_117 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[0].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[1].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_1_118 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[1].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[2].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_2_119 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[2].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[3].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_3_120 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[3].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[4].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_4_121 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[4].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[5].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_5_122 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[5].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[6].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_6_123 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[6].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[7].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_7_124 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[7].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[8].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_8_125 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[8].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[9].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_9_126 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk1),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_LOWER[9].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[10].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_10_127 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[10].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [10])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[11].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_11_128 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[11].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [11])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[12].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_12_129 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[12].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[13].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_13_130 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[13].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[14].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_14_131 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[14].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[15].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_15_132 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[15].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [15])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[16].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_16_133 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[16].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [16])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[17].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_17_134 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[17].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [17])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[18].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_18_135 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[18].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [18])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[19].DIST_RAM  (
    .A0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .A1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1]),
    .A2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2]),
    .A3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3]),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/RX_TBI_DATA_19_136 ),
    .DPRA0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .DPRA1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .DPRA2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .DPRA3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .WCLK(pma_rx_clk0),
    .WE(N0),
    .SPO(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GEN_RXD_FIFO_UPPER[19].DIST_RAM_SPO_UNCONNECTED ),
    .DPO(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [19])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2_2  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<2>1 ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0])
  );
  FDS   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2_1  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<1>1 ),
    .S(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2_3  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<3>1 ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [3])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2_0  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<0>1 ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[3].SYNC_WR_ADDRGRAY/data_sync  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [3]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[3].SYNC_WR_ADDRGRAY/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[3].SYNC_WR_ADDRGRAY/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[3].SYNC_WR_ADDRGRAY/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[2].SYNC_WR_ADDRGRAY/data_sync  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [2]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[2].SYNC_WR_ADDRGRAY/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[2].SYNC_WR_ADDRGRAY/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[2].SYNC_WR_ADDRGRAY/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[1].SYNC_WR_ADDRGRAY/data_sync  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [1]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[1].SYNC_WR_ADDRGRAY/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[1].SYNC_WR_ADDRGRAY/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[1].SYNC_WR_ADDRGRAY/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[0].SYNC_WR_ADDRGRAY/data_sync  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [0]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[0].SYNC_WR_ADDRGRAY/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[0].SYNC_WR_ADDRGRAY/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RECLOCK_WR_ADDRGRAY[0].SYNC_WR_ADDRGRAY/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [0])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_9  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<9> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [9])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_8  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<8> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [8])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<7> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [7])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<6> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [6])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<5> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [5])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<4> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [4])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<3> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [3])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<2> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [2])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<1> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [1])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<0> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [0])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_19  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [19]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [19])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_18  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [18]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [18])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_17  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [17]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [17])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_16  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [16]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [16])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_15  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [15]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [15])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_14  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [14]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [14])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_13  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [13]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [13])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_12  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [12]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [12])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_11  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [11]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [11])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_10  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [10]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [10])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_9  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [9]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [9])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_8  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [8]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [8])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_7  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [7]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [7])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_6  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [6]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [6])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_5  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [5]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [5])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_4  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [4]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [4])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [3])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [2])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [1])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [0])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [3])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [2])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [1])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [0])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_19  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [19]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [19])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_18  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [18]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [18])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_17  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [17]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [17])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_16  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [16]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [16])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_15  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [15]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [15])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_14  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [14]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [14])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_13  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [13]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [13])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_12  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [12]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [12])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_11  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [11]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [11])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_10  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [10]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [10])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_9  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [9]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [9])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_8  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [8]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [8])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_7  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [7]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [7])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_6  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [6]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [6])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_5  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [5])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_4  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [4])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [3])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [2])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [1])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG2 [0])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_19  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [19]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [19])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_18  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [18]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [18])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_17  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [17]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [17])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_16  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [16]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [16])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_15  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [15]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [15])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_14  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [14]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [14])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_13  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [13]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [13])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_12  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [12]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [12])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_11  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [11]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [11])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_10  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [10]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [10])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_9  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [9]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [9])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_8  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [8]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [8])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_7  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [7]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [7])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_6  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [6]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [6])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_5  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [5]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_4  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [4]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1])
  );
  FDRE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY_2  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[3]_WR_ADDR_PLUS2[2]_XOR_32_o ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [2])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY_1  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[2]_WR_ADDR_PLUS2[1]_XOR_33_o ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [1])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY_0  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<1>1 ),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRGRAY [0])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_3  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [3]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [3])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_2  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [2]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [2])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_1  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [1]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR [1])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR_3  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [3]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [3])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR_2  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [2])
  );
  FDR   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR_1  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1]),
    .R(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEXT_WR_ADDR [1])
  );
  FDP   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET  (
    .C(pma_rx_clk0),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_PIPE_317 ),
    .PRE(\U0/gpcs_pma_inst/RESET_INT ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_318 )
  );
  FDP   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_PIPE  (
    .C(pma_rx_clk0),
    .D(NlwRenamedSig_OI_N1),
    .PRE(\U0/gpcs_pma_inst/RESET_INT ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_PIPE_317 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/CHARISK_BIT8_MUX_267_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [7]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [6]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [5]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [4]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [3]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [2]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [1]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [0]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0])
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [12]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [8]),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 )
  );
  FDS   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/Result [1]),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1])
  );
  FDS   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/Result [0]),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<7> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [7])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<6> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [6])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<5> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [5])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<4> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [4])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<3> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [3])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<2> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [2])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<1> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [1])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXDATA_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<0> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [0])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TXCHARISK  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_26_o_MUX_191_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARISK_95 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<7> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [7])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<6> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [6])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<5> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [5])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<4> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [4])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<3> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [3])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<2> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [2])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<1> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [1])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<0> ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [0])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_185_o ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_388 )
  );
  FDSE   \U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o ),
    .D(NlwRenamedSig_OI_N1),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 )
  );
  FDS   \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_59_o ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_94 )
  );
  FDRE   \U0/gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o ),
    .D(N0),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_373 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_S  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_25_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_S_382 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/T  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_26_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/T_381 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [3])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [2])
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/_n0235 [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [1])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1  (
    .C(gtx_clk),
    .D(gmii_tx_er),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1  (
    .C(gtx_clk),
    .D(gmii_tx_en),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_7  (
    .C(gtx_clk),
    .D(gmii_txd[7]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [7])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_6  (
    .C(gtx_clk),
    .D(gmii_txd[6]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [6])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_5  (
    .C(gtx_clk),
    .D(gmii_txd[5]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [5])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_4  (
    .C(gtx_clk),
    .D(gmii_txd[4]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [4])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_3  (
    .C(gtx_clk),
    .D(gmii_txd[3]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [3])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_2  (
    .C(gtx_clk),
    .D(gmii_txd[2]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [2])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_1  (
    .C(gtx_clk),
    .D(gmii_txd[1]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [1])
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1_0  (
    .C(gtx_clk),
    .D(gmii_txd[0]),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync  (
    .C(gtx_clk),
    .D(mdc),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync  (
    .C(gtx_clk),
    .D(mdio_in),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync_reg  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync1 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG2 )
  );
  FDS   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG3_419 ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG4_418 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG_DATA_WR[10]_MUX_123_o ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_DATA_WR[5]_MUX_125_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_417 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_DATA_WR[14]_MUX_119_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_91 )
  );
  FDS   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG2 ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG3_419 )
  );
  FDR   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG2 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG3_420 )
  );
  FDR   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_REG  (
    .C(gtx_clk),
    .D(configuration_valid),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_REG_421 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT3 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT2 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT1 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1-In ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2-In ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In_456 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 )
  );
  FDSE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_TRI  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_37_o ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_TRI_77 )
  );
  FDSE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_OUT  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_36_o ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_OUT_76 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG2_483 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3_425 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv_458 ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv_458 ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [0])
  );
  FDRE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR_4  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [4])
  );
  FDRE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [3])
  );
  FDRE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [2])
  );
  FDRE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [1])
  );
  FDRE   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_484 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG2_483 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/LAST_DATA_SHIFT  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_PWR_20_o_AND_3_o ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/LAST_DATA_SHIFT_477 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_15  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<15> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_14  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<14> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_13  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<13> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_12  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<12> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_11  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<11> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_10  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<10> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_9  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<9> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_8  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<8> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_7  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<7> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_6  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<6> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_5  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<5> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_4  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<4> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_3  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<3> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<2> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<1> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o ),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<0> ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_484 )
  );
  FDRE   \U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS_0  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_inv ),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/Result [0]),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_val ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0])
  );
  FDRE   \U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS_1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_inv ),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/Result [1]),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_val ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 ),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 ),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 ),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_510 ),
    .R(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 )
  );
  FD   \U0/gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SIGNAL_DETECT_REG ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_520 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_7  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<7> ),
    .R(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [7])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_6  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<6>1_524 ),
    .R(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [6])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<5> ),
    .R(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [5])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_4  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<4>1_525 ),
    .R(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [4])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<3> ),
    .R(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [3])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<2>1_526 ),
    .R(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [2])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<1> ),
    .R(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [1])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RXD_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<0>1_527 ),
    .R(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXD [0])
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/C_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/C_REG2_528 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/C_REG3_604 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/CGBAD_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/CGBAD_REG2 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/CGBAD_REG3_585 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/SOP_REG3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/SOP_REG2_599 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/C_REG2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/C_REG2_528 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/IDLE_REG_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [2])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/IDLE_REG_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [1])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/IDLE_REG_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [0])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_571 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_570 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_575 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_574 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/C_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/C_612 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/T_REG2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/T_REG1_609 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/T_REG2_608 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_3  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [3])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0]),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_584 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0])
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_572 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG1_571 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_576 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG1_575 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXTEND_556 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/I_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/I_613 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/R_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/R_REG1_607 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/T_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/T_614 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/T_REG1_609 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RUDI_I  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_123_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RUDI_I_68 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RUDI_C  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_122_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RUDI_C_69 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/FALSE_K  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_228_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_K_568 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/RECEIVER/RX_ER  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_199_o_545 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_ER_74 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_569 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EXTEND_ERR  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_92_o ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXTEND_ERR_573 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_184_o ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_576 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EOP  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EOP_579 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/SOP  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_161_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/SOP_580 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EOP_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_74_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EOP_REG1_578 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/FROM_RX_CX  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_68_o_532 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FROM_RX_CX_581 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_583 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_142_o_546 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_INT_584 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/R  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/K23p7 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/R_587 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/CGBAD  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/CGBAD_586 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_603 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/D0p0_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/D0p0_534 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/D0p0_REG_610 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/K28p5_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/K28p5 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/I  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_132_o_547 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/I_613 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/S  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/S_615 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/T  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/K29p7 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/T_614 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RESET_INT1  (
    .I0(reset),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_92 ),
    .O(\U0/gpcs_pma_inst/RESET_INT )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/Mmux_DISPARITY11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_93 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPMODE_94 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[12] ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/DISPARITY )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_WR_ADDR_PLUS2_xor<3>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [3]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_WR_ADDR_PLUS2_xor<2>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_RD_ADDR_xor<3>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_RD_ADDR_xor<2>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_K28p5_REG1_GND_134_o_MUX_299_o11  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_208 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_209 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_GND_134_o_MUX_299_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<1>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_RD_ADDR_xor<1>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_EVEN_PWR_30_o_MUX_309_o11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_PWR_30_o_MUX_309_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mxor_WR_ADDR_PLUS2[3]_WR_ADDR_PLUS2[2]_XOR_32_o_xo<0>1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [3]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[3]_WR_ADDR_PLUS2[2]_XOR_32_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mxor_WR_ADDR_PLUS2[2]_WR_ADDR_PLUS2[1]_XOR_33_o_xo<0>1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2[2]_WR_ADDR_PLUS2[1]_XOR_33_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [10]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT21  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [11]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [1]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT31  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [12]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT41  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [13]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [3]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT51  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [14]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [4]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT61  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [15]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [5]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT71  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [16]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [6]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT81  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [17]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [7]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT91  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [18]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [8]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT101  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [19]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3 [9]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG3[9]_RXDATA_FIFO_REG3[19]_mux_24_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_K28p5_REG2_GND_134_o_MUX_301_o11  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_207 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_GND_134_o_MUX_301_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_K28p5_LOWER_GND_134_o_MUX_297_o11  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_GND_134_o_MUX_297_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_K28p5_UPPER_GND_134_o_MUX_295_o11  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_GND_134_o_MUX_295_o )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/REMOVE_IDLE_211 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_REMOVE_IDLE_OR_124_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/Mmux_CHARISK_BIT8_MUX_267_o11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [12]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [9]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [14]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/CHARISK_BIT8_MUX_267_o )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT51  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [4]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [2]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT61  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [5]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [2]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT81  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT511 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [7]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [2]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT5111  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I1(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT511 )
  );
  LUT5 #(
    .INIT ( 32'hBFFAEAAF ))
  \U0/gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_36_o1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/K28p5_378 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [7]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [6]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [5]),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/DISP5 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_36_o )
  );
  LUT5 #(
    .INIT ( 32'hE881811F ))
  \U0/gpcs_pma_inst/TRANSMITTER/DISP51  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [3]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [4]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [1]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [2]),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/DISP5 )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7>1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT[1]_TX_CONFIG[15]_wide_mux_4_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF444044404440 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_26_o1  (
    .I0(gmii_tx_en),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_380 ),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_T_OR_26_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF45455545 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_24_o11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_S_382 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ),
    .I2(gmii_tx_en),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 ),
    .I5(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_24_o_0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mcount_CODE_GRP_CNT_xor<1>11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/Result [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000001 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_TX_PACKET_PWR_22_o_MUX_178_o11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I5(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_22_o_MUX_178_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/Mram_CODE_GRP_CNT[1]_GND_26_o_Mux_5_o )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_25_o1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(gmii_tx_en),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_EVEN_AND_25_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_59_o1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_388 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_EVEN_AND_59_o )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/Mmux_DATA_RD511  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_422 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3_425 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/_n0159_inv )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/Mmux_UNIDIRECTIONAL_ENABLE_REG_DATA_WR[5]_MUX_125_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .I1(configuration_vector[0]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [5]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_DATA_WR[5]_MUX_125_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/Mmux_ISOLATE_REG_DATA_WR[10]_MUX_123_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .I1(configuration_vector[3]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [10]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG_DATA_WR[10]_MUX_123_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/Mmux_LOOPBACK_REG_DATA_WR[14]_MUX_119_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .I1(configuration_vector[1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [14]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_DATA_WR[14]_MUX_119_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [2]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [3]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDR_WR [4]),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_424 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o )
  );
  LUT6 #(
    .INIT ( 64'hA9A9A9A9FFA9A9A9 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<2>11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT2 )
  );
  LUT6 #(
    .INIT ( 64'h99999999F9980999 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT3 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA20022000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0143_inv )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2-In1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_GND_24_o_GND_24_o_MUX_61_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_482 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/GND_24_o_GND_24_o_MUX_61_o )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040200 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB21  (
    .I0(phyad[3]),
    .I1(phyad[4]),
    .I2(phyad[2]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB2_446 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFB4051 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o12  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [15]),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11_445 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_36_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF1011 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_37_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11_445 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE[3]_PWR_20_o_Mux_37_o )
  );
  LUT5 #(
    .INIT ( 32'hCAAA8AAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1-In1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>141  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 )
  );
  LUT5 #(
    .INIT ( 32'hEAAAC000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1311  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [6]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1411  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [7]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<8> )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1211  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [5]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAAAA0C000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux11111  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [4]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/UNIDIRECTIONAL_ENABLE_REG_417 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAAC0000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux811  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAAAA0C000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux511  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [13]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_91 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hAEAAAAAA0C000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux211  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [10]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAA30000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1111  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [9]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I2(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/DATA_RD [6]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<10> )
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux10111  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_PWR_20_o_AND_3_o1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_484 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG1_PWR_20_o_AND_3_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/LAST_DATA_SHIFT_477 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_IN_LAST_DATA_SHIFT_OR_8_o )
  );
  LUT6 #(
    .INIT ( 64'hF2A8F2AAAA28AA2A ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In21  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1-In2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_val1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I4(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_val )
  );
  LUT5 #(
    .INIT ( 32'hA8A10001 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/GND_27_o_CGBAD_OR_43_o1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/GND_27_o_CGBAD_OR_43_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_xor<1>11  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_01  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SIGNAL_DETECT_REG_520 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/LOOPBACK_REG_91 ),
    .I2(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In1_0 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o<1>1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_GND_27_o_AND_69_o1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_GND_27_o_AND_69_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFBFBFB ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_28_o_mux_8_OUT21  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [1]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_28_o_mux_8_OUT41  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [3]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<2>1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [2]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<2>1_526 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/gpcs_pma_inst/RECEIVER/K29p71  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1_521 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .O(\U0/gpcs_pma_inst/RECEIVER/K29p7 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .O(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1_521 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<0>1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [0]),
    .I3(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<0>1_527 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF4540 ))
  \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<4>1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_ERR_573 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [4]),
    .I4(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<4>1_525 )
  );
  LUT4 #(
    .INIT ( 16'h4100 ))
  \U0/gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_228_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I3(\U0/gpcs_pma_inst/RECEIVER/K28p51_522 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA[7]_RXNOTINTABLE_AND_228_o )
  );
  LUT5 #(
    .INIT ( 32'h08080800 ))
  \U0/gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_161_o1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/S_615 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_559 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/EXTEND_556 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/S_WAIT_FOR_K_AND_161_o )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \U0/gpcs_pma_inst/RECEIVER/K23p71  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1_521 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .O(\U0/gpcs_pma_inst/RECEIVER/K23p7 )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I3(\U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o1_521 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/K27p7_RXFIFO_ERR_AND_128_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/gpcs_pma_inst/RECEIVER/K28p52  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I2(\U0/gpcs_pma_inst/RECEIVER/K28p51_522 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/K28p5 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_28_o_mux_8_OUT61  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [5]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/RECEIVER/Mmux_RXDATA_REG5[7]_GND_28_o_mux_8_OUT81  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [7]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RECEIVER/SOP_REG3_01  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .I1(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .O(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_0 )
  );
  LUT4 #(
    .INIT ( 16'hABAA ))
  \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<6>1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [6]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5[7]_GND_28_o_mux_8_OUT<6>1_524 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_123_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [1]),
    .I1(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG [2]),
    .O(\U0/gpcs_pma_inst/RECEIVER/IDLE_REG[1]_IDLE_REG[2]_OR_123_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_122_o<0>1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [0]),
    .I1(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [1]),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [2]),
    .I3(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG [3]),
    .O(\U0/gpcs_pma_inst/RECEIVER/RX_CONFIG_VALID_REG[0]_RX_CONFIG_VALID_REG[3]_OR_122_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_92_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_596 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/CGBAD_REG3_585 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_REG2_570 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_EXT_ILLEGAL_K_REG2_OR_92_o )
  );
  LUT3 #(
    .INIT ( 8'hAB ))
  \U0/gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_96_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EOP_REG1_578 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_96_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_74_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EXTEND_556 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/EOP_579 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EOP_EXTEND_OR_74_o )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_184_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_603 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/T_614 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_K28p5_REG1_AND_184_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_144_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_144_o )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o1  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I1(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o )
  );
  LUT6 #(
    .INIT ( 64'hFFF1FF11FF11FF11 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_EVEN_GND_134_o_MUX_310_o1_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_204 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_205 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [0]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [1]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [2]),
    .O(N2)
  );
  LUT5 #(
    .INIT ( 32'hCD050505 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_NEARLY_FULL_GND_134_o_MUX_311_o1_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_204 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_205 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [1]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFFFF7FFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_D16p2_UPPER_GND_134_o_MUX_303_o1_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [11]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [15]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [14]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [10]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [12]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [13]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_D16p2_UPPER_GND_134_o_MUX_303_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [19]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [17]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [18]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [16]),
    .I4(\U0/gpcs_pma_inst/SRESET_82 ),
    .I5(N6),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_GND_134_o_MUX_303_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFFFF7FFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_D16p2_LOWER_GND_134_o_MUX_305_o1_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_D16p2_LOWER_GND_134_o_MUX_305_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [9]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [8]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [6]),
    .I4(\U0/gpcs_pma_inst/SRESET_82 ),
    .I5(N8),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_GND_134_o_MUX_305_o )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000008 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o1_620 )
  );
  LUT6 #(
    .INIT ( 64'hAAAEAAAAAAAAAAAA ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o2  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_205 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [6]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [8]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [9]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o1_620 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o2_621 )
  );
  LUT6 #(
    .INIT ( 64'h4000400040000000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o3  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_207 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_206 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [2]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [1]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o3_622 )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT3_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [2]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFFBBBA55551110 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT3  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I3(N10),
    .I4(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [2]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFF51 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT4_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [3]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFE55555554 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT4  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I3(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I4(N14),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [3]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT7_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [6]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hDDDDDDDC11111110 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT7  (
    .I0(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I4(N16),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [1]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o1  (
    .I0(gmii_txd[3]),
    .I1(gmii_txd[7]),
    .I2(gmii_txd[4]),
    .I3(gmii_txd[5]),
    .I4(gmii_txd[6]),
    .I5(gmii_txd[2]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o1_626 )
  );
  LUT6 #(
    .INIT ( 64'hA8AAAAAA20222222 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o2  (
    .I0(gmii_tx_er),
    .I1(gmii_tx_en),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o1_626 ),
    .I3(gmii_txd[0]),
    .I4(gmii_txd[1]),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o2_627 )
  );
  LUT4 #(
    .INIT ( 16'h5540 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT2_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [1]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hDDDDDDDC11111110 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT2  (
    .I0(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I4(N18),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [1]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT1_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TXD_REG1 [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hDCDDDCDC10111010 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_PWR_22_o_CONFIG_DATA[7]_mux_21_OUT1  (
    .I0(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .I4(N20),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/PWR_22_o_CONFIG_DATA[7]_mux_21_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<1>1_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h9999999909099899 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<1>1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(N22),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT1 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I5(N24),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0149_inv_458 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB1_632 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB2  (
    .I0(phyad[3]),
    .I1(phyad[4]),
    .I2(phyad[2]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB3_633 )
  );
  LUT6 #(
    .INIT ( 64'h002008FF00000000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB3  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB3_633 ),
    .I1(phyad[1]),
    .I2(phyad[0]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB1_632 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB4_634 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040216 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB4  (
    .I0(phyad[3]),
    .I1(phyad[4]),
    .I2(phyad[2]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB5_635 )
  );
  LUT4 #(
    .INIT ( 16'h9810 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB5  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I1(phyad[1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB5_635 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB2_446 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB6_636 )
  );
  LUT6 #(
    .INIT ( 64'h8008000020020000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB6  (
    .I0(phyad[1]),
    .I1(phyad[2]),
    .I2(phyad[3]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB7_637 )
  );
  LUT6 #(
    .INIT ( 64'hC3D70055C3C30000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB7  (
    .I0(phyad[1]),
    .I1(phyad[4]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB7_637 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB2_446 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB8_638 )
  );
  LUT5 #(
    .INIT ( 32'hF9F8F1F0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB8  (
    .I0(phyad[0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB4_634 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB6_636 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB8_638 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<0>1_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h55555555D145D155 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<0>1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(N26),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT )
  );
  LUT5 #(
    .INIT ( 32'hABC4AAC4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .O(N28)
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(N28),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In_456 )
  );
  LUT5 #(
    .INIT ( 32'hA2A2A2F6 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In2 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [1]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_482 ),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAFAD ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/OPCODE [0]),
    .I5(N30),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mmux_STATE[3]_PWR_20_o_Mux_36_o11_445 )
  );
  LUT5 #(
    .INIT ( 32'h7F7FFEFF ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux61_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_92 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'hABAA0300 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux61  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [14]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I2(N32),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux16_SW0  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [1]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hF0F4F0F000040000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux16  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I3(N34),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3-In1 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1011 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h7777555722220002 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In32  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_645 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In3 )
  );
  LUT6 #(
    .INIT ( 64'h91C49BE4DD80DFA0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_646 )
  );
  LUT5 #(
    .INIT ( 32'h4040FF40 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In22  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In21_646 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2-In2 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_199_o_SW0  (
    .I0(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 ),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h5555555144444440 ))
  \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_199_o  (
    .I0(N40),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_577 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG3_582 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_ISOLATE_AND_199_o_545 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \U0/gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_132_o_SW0  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_567 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/FALSE_K_568 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_569 ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h00000000AA20A020 ))
  \U0/gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_132_o  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I4(N44),
    .I5(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_133_o_norst ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EVEN_RXCHARISK_AND_132_o_547 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/gpcs_pma_inst/RECEIVER/K28p51_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \U0/gpcs_pma_inst/RECEIVER/K28p51  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I5(N46),
    .O(\U0/gpcs_pma_inst/RECEIVER/K28p51_522 )
  );
  LUT6 #(
    .INIT ( 64'h0000800000000000 ))
  \U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .O(\U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000001000000 ))
  \U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o2  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .O(\U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o1_651 )
  );
  LUT6 #(
    .INIT ( 64'h0013001100030000 ))
  \U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o3  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/D21p5_D2p2_OR_47_o1_651 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_133_o_norst )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/gpcs_pma_inst/RECEIVER/D0p0_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/gpcs_pma_inst/RECEIVER/D0p0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I5(N48),
    .O(\U0/gpcs_pma_inst/RECEIVER/D0p0_534 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_68_o_SW0  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/C_REG2_528 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'hFFFF8AAACEEE8AAA ))
  \U0/gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_68_o  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/C_REG3_604 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/CGBAD_586 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I4(N50),
    .I5(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_603 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/C_REG1_C_REG3_OR_68_o_532 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o1_654 )
  );
  LUT4 #(
    .INIT ( 16'h100E ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o2  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o2_655 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o3  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o3_656 )
  );
  LUT6 #(
    .INIT ( 64'hFF171717FF000000 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o4  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I3(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o2_655 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o3_656 ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o1_654 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o4_657 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o5  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o4_657 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_POS_RXNOTINTABLE_AND_220_o )
  );
  LUT6 #(
    .INIT ( 64'hE8FFFFFFFFFFFFFF ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o13  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o13_660 )
  );
  LUT5 #(
    .INIT ( 32'h88888000 ))
  \U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/T_REG2_608 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/R_REG1_607 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o1_661 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FF80FF80 ))
  \U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o2  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/D0p0_REG_610 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o1_661 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/I_REG_T_REG2_OR_73_o )
  );
  LUT5 #(
    .INIT ( 32'h0F0F0D0C ))
  \U0/gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_88_o2  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/T_REG1_609 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/T_REG2_608 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/R_REG1_607 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_88_o2_662 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_142_o_SW0  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/RXCHARISK_REG1_603 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/CGBAD_586 ),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h0004000400040000 ))
  \U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_142_o  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/RXFIFO_ERR_RXDISPERR_OR_45_o ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I3(N52),
    .I4(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_601 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_C_REG1_AND_142_o_546 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/V  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/V_glue_set_664 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/V_369 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_665 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/R  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/R_glue_set_666 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/R_370 )
  );
  FDS   \U0/gpcs_pma_inst/TRANSMITTER/DISPARITY  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_667 ),
    .S(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_glue_set_668 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 )
  );
  FDR   \U0/gpcs_pma_inst/SYNCHRONISATION/EVEN  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_669 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RECEIVE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_670 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/RX_INVALID  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_671 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_INVALID )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/RECEIVER/RX_DV  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_DV_glue_set_672 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_DV )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/EXTEND  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXTEND_glue_set_673 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXTEND_556 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_674 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_558 )
  );
  FDR   \U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_675 ),
    .R(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_559 )
  );
  FDR   \U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_677 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_rstpot_678 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG2_483 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_424 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/GND_24_o_GND_24_o_MUX_61_o ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_rstpot_679 )
  );
  FDR   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_rstpot_679 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/WE_424 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_rstpot_680 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_482 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_rstpot_681 ),
    .R(\U0/gpcs_pma_inst/SRESET_82 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_92 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_rstpot_682 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_683 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_377 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_22_o_MUX_178_o ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_684 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_rstpot_684 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/K28p5  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_685 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/K28p5_378 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_686 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_93 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_687 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_380 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/gpcs_pma_inst/TRANSMITTER/S_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_373 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_TRIGGER_S_OR_24_o_0 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/S_rstpot_688 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/S  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/S_rstpot_688 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/S_383 )
  );
  FD   \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0_rstpot_689 ),
    .Q(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [0])
  );
  FD   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_rstpot_690 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_422 )
  );
  FD   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_rstpot_691 ),
    .Q(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG  (
    .C(gtx_clk),
    .D(NlwRenamedSig_OI_N1),
    .Q(\U0/gpcs_pma_inst/RECEIVER/C_HDR_REMOVED_REG_601 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/C  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/C_rstpot_692 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/C_612 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_693 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_567 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_694 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_572 )
  );
  FD   \U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_695 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_577 )
  );
  FD   \U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_696 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_85 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_697 ),
    .Q(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mxor_WR_ADDRBIN<1>_xo<0>1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRBIN [1])
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_rstpot  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [12]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [13]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [11]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [15]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_rstpot_682 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/GND_27_o_CGBAD_OR_43_o ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_GND_27_o_AND_69_o ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_rstpot_697 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB5_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [15]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [14]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [13]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [10]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [11]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [12]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB5_SW1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [11]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [14]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [13]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [12]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [15]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [10]),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'h0000002004000420 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB5  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [19]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [18]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [17]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [16]),
    .I4(N57),
    .I5(N56),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB5_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2]),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB5_SW1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [4]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [2]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [5]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [0]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'h0000002004000420 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB5  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [9]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [8]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [7]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_FIFO_REG1 [6]),
    .I4(N60),
    .I5(N59),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB )
  );
  LUT3 #(
    .INIT ( 8'h0E ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_85 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/GND_27_o_CGBAD_OR_43_o ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_GND_27_o_AND_69_o ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/ENCOMMAALIGN_rstpot_696 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA9999995 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o12  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISK_107 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I5(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o12_659 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAEAAAAAAA2A ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_482 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_COMB ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/ADDRESS_MATCH_rstpot_680 )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1511  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [8]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux1012  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [3]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux911  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [2]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux711  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [0]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux411  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [12]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hA8AAAAAA ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/mux311  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [11]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG[14]_DATA_IN[15]_mux_25_OUT<12> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In11  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [1]),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [0]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [2]),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 )
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o4_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_209 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_208 ),
    .I3(N2),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hE0A0E0A0E0A0A0A0 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_EVEN_GND_134_o_MUX_310_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o3_622 ),
    .I2(N64),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o2_621 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB ),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_GND_134_o_MUX_310_o )
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o4_SW1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_208 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_209 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [3]),
    .I3(N4),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'h8000800080000000 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mmux_NEARLY_FULL_GND_134_o_MUX_311_o1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o3_622 ),
    .I2(N66),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_K28p5_REG1_AND_347_o2_621 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_COMB ),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_COMB ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_GND_134_o_MUX_311_o )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_rstpot_704 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 )
  );
  LUT4 #(
    .INIT ( 16'h8DD8 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_rstpot  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [13]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [10]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_320 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_rstpot_704 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_rstpot_705 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_320 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_rstpot  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [13]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [11]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_320 ),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RUNDISP_REG_rstpot_705 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_GND_134_o_MUX_310_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ENABLE_212 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_GND_134_o_MUX_301_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG2_206 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/REMOVE_IDLE  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/NEARLY_FULL_GND_134_o_MUX_311_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/REMOVE_IDLE_211 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_GND_134_o_MUX_305_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_LOWER_204 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_GND_134_o_MUX_303_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/D16p2_UPPER_205 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_GND_134_o_MUX_299_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_REG1_207 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_GND_134_o_MUX_297_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_LOWER_208 )
  );
  FDE   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER  (
    .C(gtx_clk),
    .CE(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/_n0241_inv ),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_GND_134_o_MUX_295_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/K28p5_UPPER_209 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_PWR_30_o_MUX_309_o ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/EVEN_213 )
  );
  FD   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED  (
    .C(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_rstpot_676 ),
    .Q(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000200000 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv1  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/BIT_COUNT [3]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/Mcount_BIT_COUNT_xor<3>14 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/_n0157_inv )
  );
  LUT6 #(
    .INIT ( 64'h1000FFFF10001000 ))
  \U0/gpcs_pma_inst/RECEIVER/RX_DV_glue_set  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 ),
    .I1(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/SOP_REG3_598 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/EOP_REG1_SYNC_STATUS_OR_96_o ),
    .I5(\NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_DV ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RX_DV_glue_set_672 )
  );
  LUT6 #(
    .INIT ( 64'h0444444444444540 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_rstpot  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [1]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [2]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_OCCUPANCY [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_rstpot_676 )
  );
  LUT4 #(
    .INIT ( 16'h6A2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_rstpot_677 )
  );
  LUT3 #(
    .INIT ( 8'h4F ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_glue_set_669 )
  );
  LUT6 #(
    .INIT ( 64'h0E2EAEAE0222A2A2 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_90 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_422 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3_425 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [11]),
    .I5(configuration_vector[2]),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/POWERDOWN_REG_rstpot_678 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/gpcs_pma_inst/TRANSMITTER/V_glue_set_SW0  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0_rstpot  (
    .I0(\U0/gpcs_pma_inst/SRESET_82 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA_0_rstpot_689 )
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDC_RISING_REG3_425 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/SHIFT_REG [15]),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/GND_22_o_MDIO_WE_AND_14_o ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_92 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/RESET_REG_rstpot_681 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_glue_set_665 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \U0/gpcs_pma_inst/RECEIVER/RECEIVE_glue_set  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/SOP_REG2_599 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EOP_579 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_glue_set_670 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \U0/gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FROM_RX_CX_581 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I2(\NlwRenamedSig_OI_U0/gpcs_pma_inst/RECEIVER/RX_INVALID ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RX_INVALID_glue_set_671 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_glue_set  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_IN_REG4_418 ),
    .I3(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_glue_set_668 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/gpcs_pma_inst/TRANSMITTER/K28p5_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CONFIG_DATA [3]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/K28p5_rstpot_685 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot  (
    .I0(gmii_tx_en),
    .I1(\U0/gpcs_pma_inst/SRESET_82 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TRIGGER_T_rstpot_687 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_REG_421 ),
    .I1(\U0/gpcs_pma_inst/SRESET_82 ),
    .I2(configuration_valid),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIGURATION_VALID_EN_rstpot_690 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_rstpot  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG3_420 ),
    .I1(\U0/gpcs_pma_inst/SRESET_82 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_REG2 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_rstpot_691 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCCC0008 ))
  \U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/T_REG2_608 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_144_o ),
    .I4(N77),
    .I5(\U0/gpcs_pma_inst/RECEIVER/RESET_SYNC_STATUS_OR_60_o ),
    .O(\U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_695 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/gpcs_pma_inst/RECEIVER/EXTEND_glue_set_SW0  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/RECEIVE_557 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/R_REG1_607 ),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'hFFFF022202220222 ))
  \U0/gpcs_pma_inst/RECEIVER/EXTEND_glue_set  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/EXTEND_556 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/S_615 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I4(N79),
    .I5(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EXTEND_glue_set_673 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/gpcs_pma_inst/RECEIVER/C_rstpot  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_D21p5_AND_133_o_norst ),
    .O(\U0/gpcs_pma_inst/RECEIVER/C_rstpot_692 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_lut<2>1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h00040404 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_inv1  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDISPERR_106 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/INITIALISED_210 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD_inv )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRPISK_GND_26_o_MUX_191_o11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_377 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_GND_26_o_MUX_191_o )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [0]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT21  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [1]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT31  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [2]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT41  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [3]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h2AEA ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT51  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [4]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT61  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [5]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT71  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [6]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_CODE_GRP[7]_GND_26_o_mux_24_OUT81  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP [7]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP[7]_GND_26_o_mux_24_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/gpcs_pma_inst/TRANSMITTER/_n0235<1>1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/C1_OR_C2_374 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/_n0235 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFF00000FFFF0020 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [1]),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3-In31_645 )
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \U0/gpcs_pma_inst/TRANSMITTER/Mmux_TX_PACKET_CODE_GRP_CNT[1]_MUX_185_o11  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_PWR_22_o_MUX_178_o ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_CODE_GRP_CNT[1]_MUX_185_o )
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_SW1  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_PACKET_371 ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'h55545554FFFE5554 ))
  \U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_CONFIG_INT_372 ),
    .I1(N81),
    .I2(\NlwRenamedSig_OI_U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/ISOLATE_REG ),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [1]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRPISK_rstpot_683 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF4440 ))
  \U0/gpcs_pma_inst/TRANSMITTER/R_glue_set  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/R_370 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/TRANSMITTER/TX_ER_REG1_397 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/T_381 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/R_glue_set_666 )
  );
  LUT5 #(
    .INIT ( 32'h5515AA2A ))
  \U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/INSERT_IDLE_379 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I3(\U0/gpcs_pma_inst/SRESET_82 ),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/DISP3_K28p5_OR_36_o ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_glue_rst_667 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF88A888A888A8 ))
  \U0/gpcs_pma_inst/TRANSMITTER/V_glue_set  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/XMIT_DATA_INT_373 ),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_XMIT_DATA_INT_AND_37_o2_627 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/TX_EN_REG1_398 ),
    .I3(N71),
    .I4(\U0/gpcs_pma_inst/TRANSMITTER/S_383 ),
    .I5(\U0/gpcs_pma_inst/TRANSMITTER/V_369 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/V_glue_set_664 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/gpcs_pma_inst/RECEIVER/RX_DATA_ERROR_rstpot_SW0  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/ILLEGAL_K_REG2_574 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/C_REG1_605 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/CGBAD_REG3_585 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/T_REG2_R_REG1_OR_88_o2_662 ),
    .O(N77)
  );
  LUT5 #(
    .INIT ( 32'h99C3C366 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_xor<3>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [3]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [2]),
    .I4(N83),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [3])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_SW1  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/I_REG_606 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_567 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/S_615 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .O(N85)
  );
  LUT6 #(
    .INIT ( 64'h44444445CCCCCCCD ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_558 ),
    .I2(N85),
    .I3(\U0/gpcs_pma_inst/RECEIVER/FALSE_DATA_569 ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/FALSE_K_568 ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_glue_set_674 )
  );
  LUT5 #(
    .INIT ( 32'hA6665655 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_xor<2>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_lut<2> ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDRBIN [1]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [0]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [2])
  );
  LUT5 #(
    .INIT ( 32'h2AFF2A2A ))
  \U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_559 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/EVEN_84 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_611 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/SYNC_STATUS_REG_583 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/WAIT_FOR_K_glue_set_675 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_xor<0>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [0]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [1]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [0])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot  (
    .I0(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .I1(\U0/gpcs_pma_inst/TRANSMITTER/DISPARITY_368 ),
    .I2(\U0/gpcs_pma_inst/TRANSMITTER/SYNC_DISPARITY_388 ),
    .I3(\U0/gpcs_pma_inst/SRESET_82 ),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/TXCHARDISPVAL_rstpot_686 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .I1(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .I2(\U0/gpcs_pma_inst/SRESET_82 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/K28p5_REG1_EVEN_AND_144_o ),
    .I4(\U0/gpcs_pma_inst/RECEIVER/R_587 ),
    .I5(\U0/gpcs_pma_inst/RECEIVER/S_615 ),
    .O(\U0/gpcs_pma_inst/RECEIVER/EXT_ILLEGAL_K_rstpot_694 )
  );
  LUT6 #(
    .INIT ( 64'h9CC9C99C36636336 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_xor<1>11  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [1]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/GND_134_o_GND_134_o_sub_30_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00696969006900 ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Msub_GND_134_o_GND_134_o_sub_30_OUT<3:0>_xor<3>11_SW0  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [1]),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [2]),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [3]),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [1]),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WA_READSYNC [0]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .O(N83)
  );
  MUXF7   \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2  (
    .I0(N87),
    .I1(N88),
    .S(\U0/gpcs_pma_inst/SYNCHRONISATION/CGBAD ),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_510 )
  );
  LUT6 #(
    .INIT ( 64'hF0F4540400040404 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_F  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .I3(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I5(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS[1]_PWR_23_o_equal_19_o ),
    .O(N87)
  );
  LUT5 #(
    .INIT ( 32'hDBDB8988 ))
  \U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4-In2_G  (
    .I0(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd3_508 ),
    .I1(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd2_507 ),
    .I2(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd4_509 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXCHARISCOMMA_108 ),
    .I4(\U0/gpcs_pma_inst/SYNCHRONISATION/STATE_FSM_FFd1_506 ),
    .O(N88)
  );
  MUXF7   \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot  (
    .I0(N89),
    .I1(N90),
    .S(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .O(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_693 )
  );
  LUT6 #(
    .INIT ( 64'h0404040004000000 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_F  (
    .I0(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o12_659 ),
    .I1(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I2(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o13_660 ),
    .I3(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXRUNDISP_104 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .I5(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .O(N89)
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_rstpot_G  (
    .I0(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .I1(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o12_659 ),
    .I2(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXNOTINTABLE_105 ),
    .I3(\U0/gpcs_pma_inst/RECEIVER/FALSE_NIT_POS_FALSE_NIT_NEG_OR_117_o1 ),
    .I4(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .O(N90)
  );
  MUXF7   \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In3  (
    .I0(N91),
    .I1(N92),
    .S(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4_478 ),
    .O(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00000002 ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In3_F  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In2 ),
    .O(N91)
  );
  LUT6 #(
    .INIT ( 64'h50510001FFFFFFFF ))
  \U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In3_G  (
    .I0(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd3_479 ),
    .I1(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd1_481 ),
    .I2(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd2_480 ),
    .I3(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/MDIO_IN_REG_433 ),
    .I4(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDIO_INTERFACE_1/STATE_FSM_FFd4-In1_447 ),
    .I5(\U0/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/MDC_RISING_REG1_423 ),
    .O(N92)
  );
  INV   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_WR_ADDR_PLUS2_xor<0>11_INV_0  (
    .I(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_ADDR_PLUS2 [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result<0>1 )
  );
  INV   \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Mcount_RD_ADDR_xor<0>11_INV_0  (
    .I(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RD_ADDR [0]),
    .O(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/Result [0])
  );
  INV   \U0/gpcs_pma_inst/TRANSMITTER/Mcount_CODE_GRP_CNT_xor<0>11_INV_0  (
    .I(\U0/gpcs_pma_inst/TRANSMITTER/CODE_GRP_CNT [0]),
    .O(\U0/gpcs_pma_inst/TRANSMITTER/Result [0])
  );
  INV   \U0/gpcs_pma_inst/SYNCHRONISATION/Mcount_GOOD_CGS_xor<0>11_INV_0  (
    .I(\U0/gpcs_pma_inst/SYNCHRONISATION/GOOD_CGS [0]),
    .O(\U0/gpcs_pma_inst/SYNCHRONISATION/Result [0])
  );
  RAMB16BWER #(
    .WRITE_MODE_A ( "NO_CHANGE" ),
    .WRITE_MODE_B ( "NO_CHANGE" ),
    .INIT_A ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h017411CB12CB10DB134B115B125B0394138B119B129B0354131B02D401D40274 ),
    .INIT_01 ( 256'h02B401E402E410EB0364116B126B033403A411AB12AB10BB132B113B123B01B4 ),
    .INIT_02 ( 256'h117901C902C900D903490159025913990389019902991359031912D911D91279 ),
    .INIT_03 ( 256'h12B911E912E900E9136901690269133913A901A902A900B903290139023911B9 ),
    .INIT_04 ( 256'h117501C502C500D503450155025513950385019502951355031512D511D51275 ),
    .INIT_05 ( 256'h12B511E512E500E5136501650265133513A501A502A500B503250135023511B5 ),
    .INIT_06 ( 256'h117301CC02CC00DC034C015C025C1393038C019C029C1353031C12D311D31273 ),
    .INIT_07 ( 256'h12B311E312E300EC1363016C026C133313A301AC02AC00BC032C013C023C11B3 ),
    .INIT_08 ( 256'h017211CD12CD10DD134D115D125D0392138D119D129D0352131D02D201D20272 ),
    .INIT_09 ( 256'h02B201E202E210ED0362116D126D033203A211AD12AD10BD132D113D123D01B2 ),
    .INIT_0A ( 256'h117A01CA02CA00DA034A015A025A139A038A019A029A135A031A12DA11DA127A ),
    .INIT_0B ( 256'h12BA11EA12EA00EA136A016A026A133A13AA01AA02AA00BA032A013A023A11BA ),
    .INIT_0C ( 256'h117601C602C600D603460156025613960386019602961356031612D611D61276 ),
    .INIT_0D ( 256'h12B611E612E600E6136601660266133613A601A602A600B603260136023611B6 ),
    .INIT_0E ( 256'h017111CE12CE10DE134E115E125E0391138E119E129E0351131E02D101D10271 ),
    .INIT_0F ( 256'h02B101E102E110EE0361116E126E033103A111AE12AE10B7132E1137123701B1 ),
    .INIT_10 ( 256'h128B01C402C400D4034401540254106B00740194029410AB0314112B122B118B ),
    .INIT_11 ( 256'h114B121B111B00E4109B0164026410CB105B01A402A400B4032401340234124B ),
    .INIT_12 ( 256'h028911C912C910D9134911591259006910791199129900A91319012902290189 ),
    .INIT_13 ( 256'h01490219011910E900991169126900C9005911A912A910B91329113912390249 ),
    .INIT_14 ( 256'h028511C512C510D5134511551255006510751195129500A51315012502250185 ),
    .INIT_15 ( 256'h01450215011510E500951165126500C5005511A512A510B51325113512350245 ),
    .INIT_16 ( 256'h028C11C312C310D3134311531253006C10731193129300AC1313012C022C018C ),
    .INIT_17 ( 256'h014C021C011C10E3009C1163126300CC005C11A312A310B3132311331233024C ),
    .INIT_18 ( 256'h128D01C202C200D2034201520252106D00720192029210AD0312112D122D118D ),
    .INIT_19 ( 256'h114D121D111D00E2109D0162026210CD105D01A202A200B2032201320232124D ),
    .INIT_1A ( 256'h028A11CA12CA10DA134A115A125A006A107A119A129A00AA131A012A022A018A ),
    .INIT_1B ( 256'h014A021A011A10EA009A116A126A00CA005A11AA12AA10BA132A113A123A024A ),
    .INIT_1C ( 256'h028611C612C610D6134611561256006610761196129600A61316012602260186 ),
    .INIT_1D ( 256'h01460216011610E600961166126600C6005611A612A610B61326113612360246 ),
    .INIT_1E ( 256'h128E01C802C800D1034801510251106E00710191029110AE0311112E122E118E ),
    .INIT_1F ( 256'h114E121E111E00E1109E0161026110CE105E01A102A100B1032101310231124E ),
    .INIT_20 ( 256'h017411CB12CB10DB134B115B125B0394138B119B129B0354131B02D401D40274 ),
    .INIT_21 ( 256'h02B401E402E400F40364116B126B033403A411AB12AB10BB132B113B123B01B4 ),
    .INIT_22 ( 256'h117901C902C900D903490159025913990389019902991359031912D911D91279 ),
    .INIT_23 ( 256'h12B911E912E910F9136901690269133913A901A902A900B903290139023911B9 ),
    .INIT_24 ( 256'h117501C502C500D503450155025513950385019502951355031512D511D51275 ),
    .INIT_25 ( 256'h12B511E512E510F5136501650265133513A501A502A500B503250135023511B5 ),
    .INIT_26 ( 256'h117301CC02CC00DC034C015C025C1393038C019C029C1353031C12D311D31273 ),
    .INIT_27 ( 256'h12B311E312E310F31363016C026C133313A301AC02AC00BC032C013C023C11B3 ),
    .INIT_28 ( 256'h017211CD12CD10DD134D115D125D0392138D119D129D0352131D02D201D20272 ),
    .INIT_29 ( 256'h02B201E202E200F20362116D126D033203A211AD12AD10BD132D113D123D01B2 ),
    .INIT_2A ( 256'h117A01CA02CA00DA034A015A025A139A038A019A029A135A031A12DA11DA127A ),
    .INIT_2B ( 256'h12BA11EA12EA10FA136A016A026A133A13AA01AA02AA00BA032A013A023A11BA ),
    .INIT_2C ( 256'h117601C602C600D603460156025613960386019602961356031612D611D61276 ),
    .INIT_2D ( 256'h12B611E612E610F6136601660266133613A601A602A600B603260136023611B6 ),
    .INIT_2E ( 256'h017111CE12CE10DE134E115E125E0391138E119E129E0351131E02D101D10271 ),
    .INIT_2F ( 256'h02B101E802E800F80368116E126E033103A811AE12AE10B7132E1137123701B1 ),
    .INIT_30 ( 256'h128B01C402C400D4034401540254106B00740194029410AB0314112B122B118B ),
    .INIT_31 ( 256'h114B121B111B130B109B0164026410CB105B01A402A400B4032401340234124B ),
    .INIT_32 ( 256'h028911C912C910D9134911591259006910791199129900A91319012902290189 ),
    .INIT_33 ( 256'h014902190119030600991169126900C9005911A912A910B91329113912390249 ),
    .INIT_34 ( 256'h028511C512C510D5134511551255006510751195129500A51315012502250185 ),
    .INIT_35 ( 256'h014502150115030A00951165126500C5005511A512A510B51325113512350245 ),
    .INIT_36 ( 256'h028C11C312C310D3134311531253006C10731193129300AC1313012C022C018C ),
    .INIT_37 ( 256'h014C021C011C030C009C1163126300CC005C11A312A310B3132311331233024C ),
    .INIT_38 ( 256'h128D01C202C200D2034201520252106D00720192029210AD0312112D122D118D ),
    .INIT_39 ( 256'h114D121D111D130D109D0162026210CD105D01A202A200B2032201320232124D ),
    .INIT_3A ( 256'h028A11CA12CA10DA134A115A125A006A107A119A129A00AA131A012A022A018A ),
    .INIT_3B ( 256'h014A021A011A0305009A116A126A00CA005A11AA12AA10BA132A113A123A024A ),
    .INIT_3C ( 256'h028611C612C610D6134611561256006610761196129600A61316012602260186 ),
    .INIT_3D ( 256'h014602160116030900961166126600C6005611A612A610B61326113612360246 ),
    .INIT_3E ( 256'h128E01C802C800D1034801510251106E00710191029110AE0311112E122E118E ),
    .INIT_3F ( 256'h114E12171117130710970161026110CE105701A102A100B1032101310231124E ),
    .DATA_WIDTH_A ( 18 ),
    .DATA_WIDTH_B ( 18 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE  (
    .REGCEA(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_REGCEA_UNCONNECTED ),
    .CLKA(gtx_clk),
    .ENB(NlwRenamedSig_OI_N1),
    .RSTB(NlwRenamedSig_OI_N1),
    .CLKB(gtx_clk),
    .REGCEB(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_REGCEB_UNCONNECTED ),
    .RSTA(NlwRenamedSig_OI_N1),
    .ENA(N0),
    .DIPA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPA<2>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .WEA({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<16>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<15>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<14>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<13>_UNCONNECTED , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[12] 
, \NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<11>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOA<10>_UNCONNECTED , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[9] , 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[8] , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[7] , 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[6] , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[5] , 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[4] , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[3] , 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[2] , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[1] , 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/ENCODER_OUTPUT[0] }),
    .ADDRA({\U0/gpcs_pma_inst/TRANSMITTER/TXCHARISK_95 , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/DISPARITY , 
\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [7], \U0/gpcs_pma_inst/TRANSMITTER/TXDATA [6], \U0/gpcs_pma_inst/TRANSMITTER/TXDATA [5], 
\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [4], \U0/gpcs_pma_inst/TRANSMITTER/TXDATA [3], \U0/gpcs_pma_inst/TRANSMITTER/TXDATA [2], 
\U0/gpcs_pma_inst/TRANSMITTER/TXDATA [1], \U0/gpcs_pma_inst/TRANSMITTER/TXDATA [0], 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRA<0>_UNCONNECTED }),
    .ADDRB({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIB<16>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOPA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIPB<2>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOPB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<16>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<15>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<14>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<13>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<12>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<11>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<10>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<9>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<8>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<7>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<6>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<5>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<4>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DOB<0>_UNCONNECTED }),
    .WEB({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DIA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE_DIA<16>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1})
  );
  RAMB16BWER #(
    .WRITE_MODE_A ( "NO_CHANGE" ),
    .WRITE_MODE_B ( "NO_CHANGE" ),
    .INIT_A ( 36'h000000000 ),
    .SRVAL_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h3000300030003000300030003000300030003000140030003000300030003000 ),
    .INIT_01 ( 256'h3000300030003000300030003000300030003000540530003000300030003000 ),
    .INIT_02 ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_03 ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_04 ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_05 ( 256'h30000CF70C9704770C1704B7043730000EF704D7045730003000300030003000 ),
    .INIT_06 ( 256'h30000CE80C8804680C0804A804283000300004C8044830003000300030003000 ),
    .INIT_07 ( 256'h300018003000300018000CA70C27300030000CC70C4704070C67048704E73000 ),
    .INIT_08 ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_09 ( 256'h30000CFB0C9B047B0C1B04BB043B30000EFB04DB045B30003000300030003000 ),
    .INIT_0A ( 256'h30000CE40C8404640C0404A404243000300004C4044430003000300030003000 ),
    .INIT_0B ( 256'h3000180008940074081420B42034300008F420D4205404140C74049404F43000 ),
    .INIT_0C ( 256'h30000CF80C9804780C1804B804383000300004D8045830003000300030003000 ),
    .INIT_0D ( 256'h300008EC088C006C080C20AC202C3000300020CC204C040C0C6C048C04EC3000 ),
    .INIT_0E ( 256'h300008FC089C007C081C20BC203C3000300020DC205C041C0C7C049C04FC3000 ),
    .INIT_0F ( 256'h18001BFE300030001BFB0BBC0B3C03FC1BF70ADC0A5C021C0A7C029C30003000 ),
    .INIT_10 ( 256'h300030001C00300030003000300030001C003000540514003000300014003000 ),
    .INIT_11 ( 256'h30000CFD0C9D047D0C1D04BD043D30000EFD04DD045D30003000300030003000 ),
    .INIT_12 ( 256'h30000CE20C8204620C0204A204223000300004C2044230003000300030003000 ),
    .INIT_13 ( 256'h3000300008920072081220B22032300008F220D2205204120C72049204F23000 ),
    .INIT_14 ( 256'h30000CFF0C9F047F0C1F04BF043F3000300004DF045F30003000300030003000 ),
    .INIT_15 ( 256'h300008EA088A006A080A20AA202A3000300020CA204A040A0C6A048A04EA3000 ),
    .INIT_16 ( 256'h300008FA089A007A081A20BA203A3000300020DA205A041A0C7A049A04FA3000 ),
    .INIT_17 ( 256'h3000300030003000300008AF082F3000300008CF084F000F086F008F00EF3000 ),
    .INIT_18 ( 256'h30000CE00C8004600C0004A004203000300004C0044030003000300030003000 ),
    .INIT_19 ( 256'h300008E608860066080620A620263000300020C6204604060C66048604E63000 ),
    .INIT_1A ( 256'h300008F608960076081620B620363000300020D6205604160C76049604F63000 ),
    .INIT_1B ( 256'h3000300030003000300008B008303000300008D0085000100870009000F03000 ),
    .INIT_1C ( 256'h300008EE088E006E080E20AE202E04EE300020CE204E040E0C6E048E30003000 ),
    .INIT_1D ( 256'h3000300030003000300008A108213000300008C1084100010861008100E13000 ),
    .INIT_1E ( 256'h3000300030003000300008BE083E02FE300008DE085E001E087E009E00FE3000 ),
    .INIT_1F ( 256'h3000180030003000180058FA3000300030003000300030003000300030003000 ),
    .INIT_20 ( 256'h300030001C00300030003000300030001C003000940514003000300014003000 ),
    .INIT_21 ( 256'h30000CFE0C9E047E0C1E04BE043E30000EFE04DE045E30003000300030003000 ),
    .INIT_22 ( 256'h30000CE10C8104610C0104A104213000300004C1044130003000300030003000 ),
    .INIT_23 ( 256'h3000300008910071081120B12031300008F120D1205104110C71049104F13000 ),
    .INIT_24 ( 256'h30000CF00C9004700C1004B004303000300004D0045030003000300030003000 ),
    .INIT_25 ( 256'h300008E908890069080920A920293000300020C9204904090C69048904E93000 ),
    .INIT_26 ( 256'h300008F908990079081920B920393000300020D9205904190C79049904F93000 ),
    .INIT_27 ( 256'h3000300030003000300008A008203000300008C0084000000860008000E03000 ),
    .INIT_28 ( 256'h30000CEF0C8F046F0C0F04AF042F3000300004CF044F30003000300030003000 ),
    .INIT_29 ( 256'h300008E508850065080520A520253000300020C5204504050C65048504E53000 ),
    .INIT_2A ( 256'h300008F508950075081520B520353000300020D5205504150C75049504F53000 ),
    .INIT_2B ( 256'h3000300030003000300008BF083F3000300008DF085F001F087F009F00FF3000 ),
    .INIT_2C ( 256'h300008ED088D006D080D20AD202D04ED300020CD204D040D0C6D048D30003000 ),
    .INIT_2D ( 256'h3000300030003000300008A208223000300008C2084200020862008200E23000 ),
    .INIT_2E ( 256'h3000300030003000300008BD083D02FD300008DD085D001D087D009D00FD3000 ),
    .INIT_2F ( 256'h3000180030003000180098FA3000300030003000300030003000300030003000 ),
    .INIT_30 ( 256'h1C0030000E9C067C0E1C065C06DC30000FFC073C07BCD70414003000D7011400 ),
    .INIT_31 ( 256'h300008E308830063080320A3202330001C0020C3204304030C63048304E33000 ),
    .INIT_32 ( 256'h300008F308930073081320B3203330001C0020D3205304130C73049304F33000 ),
    .INIT_33 ( 256'h3000300030003000300008B808383000300008D8085800180878009800F83000 ),
    .INIT_34 ( 256'h300008EB088B006B080B20AB202B04EB1C0020CB204B040B0C6B048B14003000 ),
    .INIT_35 ( 256'h3000300030003000300008A408243000300008C4084400040864008400E43000 ),
    .INIT_36 ( 256'h3000300030003000300008BB083B02FB300008DB085B001B087B009B00FB3000 ),
    .INIT_37 ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_38 ( 256'h300008E708870067080700A7002730001C0000C7004714003000300014003000 ),
    .INIT_39 ( 256'h3000300030003000300008A808283000300008C8084800080868008800E83000 ),
    .INIT_3A ( 256'h3000300030003000300008B7083702F7300008D7085700170877009700F73000 ),
    .INIT_3B ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_3C ( 256'h30003000300030003000300030003000300030001C0030003000300030003000 ),
    .INIT_3D ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_3E ( 256'h3000300030003000300030003000300030003000300030003000300030003000 ),
    .INIT_3F ( 256'h3000300030003000300018003000300030003000300030003000300030003000 ),
    .DATA_WIDTH_A ( 18 ),
    .DATA_WIDTH_B ( 18 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "SPARTAN6" ),
    .INIT_FILE ( "NONE" ))
  \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE  (
    .REGCEA(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_REGCEA_UNCONNECTED ),
    .CLKA(gtx_clk),
    .ENB(NlwRenamedSig_OI_N1),
    .RSTB(NlwRenamedSig_OI_N1),
    .CLKB(gtx_clk),
    .REGCEB(\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_REGCEB_UNCONNECTED ),
    .RSTA(NlwRenamedSig_OI_N1),
    .ENA(N0),
    .DIPA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPA<2>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .WEA({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOA<16>_UNCONNECTED , \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [15]
, \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [14], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [13], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [12], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [11], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [10], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [9], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [8], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [7], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [6], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [5], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [4], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [3], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [2], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [1], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/DECODER_OUTPUT [0]}),
    .ADDRA({\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [0], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [1], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [2], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [3], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [4], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [5], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [6], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [7], \U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [8], 
\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/RXDATA_RD [9], 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRA<0>_UNCONNECTED }),
    .ADDRB({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_ADDRB<0>_UNCONNECTED }),
    .DIB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIB<16>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOPA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPA<0>_UNCONNECTED }),
    .DIPB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIPB<2>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DOPB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOPB<0>_UNCONNECTED }),
    .DOB({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<16>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<15>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<14>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<13>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<12>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<11>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<10>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<9>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<8>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<7>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<6>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<5>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<4>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<3>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<2>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<1>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DOB<0>_UNCONNECTED }),
    .WEB({NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1}),
    .DIA({\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<31>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<30>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<29>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<28>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<27>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<26>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<25>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<24>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<23>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<22>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<21>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<20>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<19>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<18>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<17>_UNCONNECTED , 
\NLW_U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE_DIA<16>_UNCONNECTED , NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, 
NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1, NlwRenamedSig_OI_N1})
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/SYNCHRONISATION/SYNC_STATUS_83 ),
    .Q(\U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_718 ),
    .Q15(\NLW_U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/STATUS_VECTOR_0  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/Mshreg_STATUS_VECTOR_0_718 ),
    .Q(\NlwRenamedSignal_U0/gpcs_pma_inst/STATUS_VECTOR_0 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [7]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_719 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_7  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_7_719 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [6]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_720 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_6  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_6_720 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [5]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_721 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_5  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_5_721 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [2]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_722 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_2  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_2_722 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [4]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_723 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_4  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_4_723 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [3]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_724 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_3  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_3_724 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG1_597 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_725 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_EXTEND_REG3_725 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/EXTEND_REG3_596 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [1]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_726 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_1  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_1_726 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0  (
    .A0(N0),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/RXDATA [0]),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_727 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5_0  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_RXDATA_REG5_0_727 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/RXDATA_REG5 [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/CGBAD_586 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/CGBAD_REG2 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_CGBAD_REG2_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/SOP_580 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_728 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_Q15_UNCONNECTED )
  );
  FDE   \U0/gpcs_pma_inst/RECEIVER/SOP_REG2  (
    .C(gtx_clk),
    .CE(N0),
    .D(\U0/gpcs_pma_inst/RECEIVER/Mshreg_SOP_REG2_728 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/SOP_REG2_599 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(gtx_clk),
    .D(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_558 ),
    .Q(\U0/gpcs_pma_inst/RECEIVER/FALSE_CARRIER_REG2 ),
    .Q15(\NLW_U0/gpcs_pma_inst/RECEIVER/Mshreg_FALSE_CARRIER_REG2_Q15_UNCONNECTED )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
