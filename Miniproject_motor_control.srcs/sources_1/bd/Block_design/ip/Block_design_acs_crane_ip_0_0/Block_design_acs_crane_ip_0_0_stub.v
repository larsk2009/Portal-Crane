// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct 25 14:45:37 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_acs_crane_ip_0_0/Block_design_acs_crane_ip_0_0_stub.v
// Design      : Block_design_acs_crane_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "acs_crane_ip,Vivado 2018.2" *)
module Block_design_acs_crane_ip_0_0(IPCORE_CLK, IPCORE_RESETN, destination_x, 
  desired_angle, position, angle, AXI4_Lite_ACLK, AXI4_Lite_ARESETN, AXI4_Lite_AWADDR, 
  AXI4_Lite_AWVALID, AXI4_Lite_WDATA, AXI4_Lite_WSTRB, AXI4_Lite_WVALID, AXI4_Lite_BREADY, 
  AXI4_Lite_ARADDR, AXI4_Lite_ARVALID, AXI4_Lite_RREADY, pwm, AXI4_Lite_AWREADY, 
  AXI4_Lite_WREADY, AXI4_Lite_BRESP, AXI4_Lite_BVALID, AXI4_Lite_ARREADY, AXI4_Lite_RDATA, 
  AXI4_Lite_RRESP, AXI4_Lite_RVALID)
/* synthesis syn_black_box black_box_pad_pin="IPCORE_CLK,IPCORE_RESETN,destination_x[31:0],desired_angle[15:0],position[31:0],angle[15:0],AXI4_Lite_ACLK,AXI4_Lite_ARESETN,AXI4_Lite_AWADDR[15:0],AXI4_Lite_AWVALID,AXI4_Lite_WDATA[31:0],AXI4_Lite_WSTRB[3:0],AXI4_Lite_WVALID,AXI4_Lite_BREADY,AXI4_Lite_ARADDR[15:0],AXI4_Lite_ARVALID,AXI4_Lite_RREADY,pwm[15:0],AXI4_Lite_AWREADY,AXI4_Lite_WREADY,AXI4_Lite_BRESP[1:0],AXI4_Lite_BVALID,AXI4_Lite_ARREADY,AXI4_Lite_RDATA[31:0],AXI4_Lite_RRESP[1:0],AXI4_Lite_RVALID" */;
  input IPCORE_CLK;
  input IPCORE_RESETN;
  input [31:0]destination_x;
  input [15:0]desired_angle;
  input [31:0]position;
  input [15:0]angle;
  input AXI4_Lite_ACLK;
  input AXI4_Lite_ARESETN;
  input [15:0]AXI4_Lite_AWADDR;
  input AXI4_Lite_AWVALID;
  input [31:0]AXI4_Lite_WDATA;
  input [3:0]AXI4_Lite_WSTRB;
  input AXI4_Lite_WVALID;
  input AXI4_Lite_BREADY;
  input [15:0]AXI4_Lite_ARADDR;
  input AXI4_Lite_ARVALID;
  input AXI4_Lite_RREADY;
  output [15:0]pwm;
  output AXI4_Lite_AWREADY;
  output AXI4_Lite_WREADY;
  output [1:0]AXI4_Lite_BRESP;
  output AXI4_Lite_BVALID;
  output AXI4_Lite_ARREADY;
  output [31:0]AXI4_Lite_RDATA;
  output [1:0]AXI4_Lite_RRESP;
  output AXI4_Lite_RVALID;
endmodule
