// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct 21 12:13:42 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Block_design_xlconcat_0_0 -prefix
//               Block_design_xlconcat_0_0_ Block_design_xlconcat_0_0_stub.v
// Design      : Block_design_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2018.2" *)
module Block_design_xlconcat_0_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[11:0],In1[3:0],dout[15:0]" */;
  input [11:0]In0;
  input [3:0]In1;
  output [15:0]dout;
endmodule