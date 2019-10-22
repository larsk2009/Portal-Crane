// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 22 20:04:44 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_counter_0_0_stub.v
// Design      : Block_design_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "counter,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Clk, A_In, B_In, data_out, Reset)
/* synthesis syn_black_box black_box_pad_pin="Clk,A_In,B_In,data_out[11:0],Reset" */;
  input Clk;
  input A_In;
  input B_In;
  output [11:0]data_out;
  input Reset;
endmodule
