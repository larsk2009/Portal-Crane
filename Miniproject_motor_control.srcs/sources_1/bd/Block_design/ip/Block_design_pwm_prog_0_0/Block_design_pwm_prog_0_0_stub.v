// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 22 18:41:33 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_pwm_prog_0_0/Block_design_pwm_prog_0_0_stub.v
// Design      : Block_design_pwm_prog_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_prog,Vivado 2018.2" *)
module Block_design_pwm_prog_0_0(i_clk, i_rstb, i_pwm_module, i_pwm_width, o_pwm)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rstb,i_pwm_module[15:0],i_pwm_width[15:0],o_pwm" */;
  input i_clk;
  input i_rstb;
  input [15:0]i_pwm_module;
  input [15:0]i_pwm_width;
  output o_pwm;
endmodule
