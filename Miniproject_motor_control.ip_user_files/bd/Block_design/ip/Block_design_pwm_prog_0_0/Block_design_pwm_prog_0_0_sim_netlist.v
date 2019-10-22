// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct 22 14:53:57 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_pwm_prog_0_0/Block_design_pwm_prog_0_0_sim_netlist.v
// Design      : Block_design_pwm_prog_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_pwm_prog_0_0,pwm_prog,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm_prog,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Block_design_pwm_prog_0_0
   (i_clk,
    i_rstb,
    i_pwm_module,
    i_pwm_width,
    o_pwm);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0" *) input i_clk;
  input i_rstb;
  input [15:0]i_pwm_module;
  input [15:0]i_pwm_width;
  output o_pwm;

  wire i_clk;
  wire [15:0]i_pwm_module;
  wire [15:0]i_pwm_width;
  wire i_rstb;
  wire o_pwm;

  Block_design_pwm_prog_0_0_pwm_prog U0
       (.i_clk(i_clk),
        .i_pwm_module(i_pwm_module),
        .i_pwm_width(i_pwm_width),
        .i_rstb(i_rstb),
        .o_pwm(o_pwm));
endmodule

(* ORIG_REF_NAME = "pwm_prog" *) 
module Block_design_pwm_prog_0_0_pwm_prog
   (o_pwm,
    i_pwm_module,
    i_clk,
    i_pwm_width,
    i_rstb);
  output o_pwm;
  input [15:0]i_pwm_module;
  input i_clk;
  input [15:0]i_pwm_width;
  input i_rstb;

  wire i_clk;
  wire [15:0]i_pwm_module;
  wire [15:0]i_pwm_width;
  wire i_rstb;
  wire load;
  wire o_pwm;
  wire o_pwm0;
  wire o_pwm0_carry__0_i_1_n_0;
  wire o_pwm0_carry__0_i_2_n_0;
  wire o_pwm0_carry__0_i_3_n_0;
  wire o_pwm0_carry__0_i_4_n_0;
  wire o_pwm0_carry__0_i_5_n_0;
  wire o_pwm0_carry__0_i_6_n_0;
  wire o_pwm0_carry__0_i_7_n_0;
  wire o_pwm0_carry__0_i_8_n_0;
  wire o_pwm0_carry__0_n_1;
  wire o_pwm0_carry__0_n_2;
  wire o_pwm0_carry__0_n_3;
  wire o_pwm0_carry_i_1_n_0;
  wire o_pwm0_carry_i_2_n_0;
  wire o_pwm0_carry_i_3_n_0;
  wire o_pwm0_carry_i_4_n_0;
  wire o_pwm0_carry_i_5_n_0;
  wire o_pwm0_carry_i_6_n_0;
  wire o_pwm0_carry_i_7_n_0;
  wire o_pwm0_carry_i_8_n_0;
  wire o_pwm0_carry_n_0;
  wire o_pwm0_carry_n_1;
  wire o_pwm0_carry_n_2;
  wire o_pwm0_carry_n_3;
  wire o_pwm2;
  wire o_pwm2_carry__0_i_1_n_0;
  wire o_pwm2_carry__0_i_2_n_0;
  wire o_pwm2_carry__0_n_3;
  wire o_pwm2_carry_i_1_n_0;
  wire o_pwm2_carry_i_2_n_0;
  wire o_pwm2_carry_i_3_n_0;
  wire o_pwm2_carry_i_4_n_0;
  wire o_pwm2_carry_n_0;
  wire o_pwm2_carry_n_1;
  wire o_pwm2_carry_n_2;
  wire o_pwm2_carry_n_3;
  wire o_pwm_i_1_n_0;
  wire o_pwm_i_2_n_0;
  wire o_pwm_i_3_n_0;
  wire o_pwm_i_4_n_0;
  wire o_pwm_i_5_n_0;
  wire o_pwm_i_6_n_0;
  wire p_0_in;
  wire [15:0]r_max_count;
  wire r_pwm_counter1_carry__0_i_1_n_0;
  wire r_pwm_counter1_carry__0_i_2_n_0;
  wire r_pwm_counter1_carry__0_n_3;
  wire r_pwm_counter1_carry_i_1_n_0;
  wire r_pwm_counter1_carry_i_2_n_0;
  wire r_pwm_counter1_carry_i_3_n_0;
  wire r_pwm_counter1_carry_i_4_n_0;
  wire r_pwm_counter1_carry_n_0;
  wire r_pwm_counter1_carry_n_1;
  wire r_pwm_counter1_carry_n_2;
  wire r_pwm_counter1_carry_n_3;
  wire \r_pwm_counter[0]_i_2_n_0 ;
  wire \r_pwm_counter[0]_i_3_n_0 ;
  wire \r_pwm_counter[0]_i_4_n_0 ;
  wire \r_pwm_counter[0]_i_5_n_0 ;
  wire \r_pwm_counter[0]_i_6_n_0 ;
  wire \r_pwm_counter[12]_i_2_n_0 ;
  wire \r_pwm_counter[12]_i_3_n_0 ;
  wire \r_pwm_counter[12]_i_4_n_0 ;
  wire \r_pwm_counter[12]_i_5_n_0 ;
  wire \r_pwm_counter[4]_i_2_n_0 ;
  wire \r_pwm_counter[4]_i_3_n_0 ;
  wire \r_pwm_counter[4]_i_4_n_0 ;
  wire \r_pwm_counter[4]_i_5_n_0 ;
  wire \r_pwm_counter[8]_i_2_n_0 ;
  wire \r_pwm_counter[8]_i_3_n_0 ;
  wire \r_pwm_counter[8]_i_4_n_0 ;
  wire \r_pwm_counter[8]_i_5_n_0 ;
  wire [15:0]r_pwm_counter_reg;
  wire \r_pwm_counter_reg[0]_i_1_n_0 ;
  wire \r_pwm_counter_reg[0]_i_1_n_1 ;
  wire \r_pwm_counter_reg[0]_i_1_n_2 ;
  wire \r_pwm_counter_reg[0]_i_1_n_3 ;
  wire \r_pwm_counter_reg[0]_i_1_n_4 ;
  wire \r_pwm_counter_reg[0]_i_1_n_5 ;
  wire \r_pwm_counter_reg[0]_i_1_n_6 ;
  wire \r_pwm_counter_reg[0]_i_1_n_7 ;
  wire \r_pwm_counter_reg[12]_i_1_n_1 ;
  wire \r_pwm_counter_reg[12]_i_1_n_2 ;
  wire \r_pwm_counter_reg[12]_i_1_n_3 ;
  wire \r_pwm_counter_reg[12]_i_1_n_4 ;
  wire \r_pwm_counter_reg[12]_i_1_n_5 ;
  wire \r_pwm_counter_reg[12]_i_1_n_6 ;
  wire \r_pwm_counter_reg[12]_i_1_n_7 ;
  wire \r_pwm_counter_reg[4]_i_1_n_0 ;
  wire \r_pwm_counter_reg[4]_i_1_n_1 ;
  wire \r_pwm_counter_reg[4]_i_1_n_2 ;
  wire \r_pwm_counter_reg[4]_i_1_n_3 ;
  wire \r_pwm_counter_reg[4]_i_1_n_4 ;
  wire \r_pwm_counter_reg[4]_i_1_n_5 ;
  wire \r_pwm_counter_reg[4]_i_1_n_6 ;
  wire \r_pwm_counter_reg[4]_i_1_n_7 ;
  wire \r_pwm_counter_reg[8]_i_1_n_0 ;
  wire \r_pwm_counter_reg[8]_i_1_n_1 ;
  wire \r_pwm_counter_reg[8]_i_1_n_2 ;
  wire \r_pwm_counter_reg[8]_i_1_n_3 ;
  wire \r_pwm_counter_reg[8]_i_1_n_4 ;
  wire \r_pwm_counter_reg[8]_i_1_n_5 ;
  wire \r_pwm_counter_reg[8]_i_1_n_6 ;
  wire \r_pwm_counter_reg[8]_i_1_n_7 ;
  wire [15:0]r_pwm_width;
  wire w_tc_pwm_counter1;
  wire w_tc_pwm_counter1_carry__0_i_1_n_0;
  wire w_tc_pwm_counter1_carry__0_i_2_n_0;
  wire w_tc_pwm_counter1_carry__0_i_3_n_0;
  wire w_tc_pwm_counter1_carry__0_i_4_n_0;
  wire w_tc_pwm_counter1_carry__0_i_5_n_0;
  wire w_tc_pwm_counter1_carry__0_i_6_n_0;
  wire w_tc_pwm_counter1_carry__0_i_7_n_0;
  wire w_tc_pwm_counter1_carry__0_i_8_n_0;
  wire w_tc_pwm_counter1_carry__0_n_1;
  wire w_tc_pwm_counter1_carry__0_n_2;
  wire w_tc_pwm_counter1_carry__0_n_3;
  wire w_tc_pwm_counter1_carry_i_1_n_0;
  wire w_tc_pwm_counter1_carry_i_2_n_0;
  wire w_tc_pwm_counter1_carry_i_3_n_0;
  wire w_tc_pwm_counter1_carry_i_4_n_0;
  wire w_tc_pwm_counter1_carry_i_5_n_0;
  wire w_tc_pwm_counter1_carry_i_6_n_0;
  wire w_tc_pwm_counter1_carry_i_7_n_0;
  wire w_tc_pwm_counter1_carry_i_8_n_0;
  wire w_tc_pwm_counter1_carry_n_0;
  wire w_tc_pwm_counter1_carry_n_1;
  wire w_tc_pwm_counter1_carry_n_2;
  wire w_tc_pwm_counter1_carry_n_3;
  wire [3:0]NLW_o_pwm0_carry_O_UNCONNECTED;
  wire [3:0]NLW_o_pwm0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_o_pwm2_carry_O_UNCONNECTED;
  wire [3:2]NLW_o_pwm2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_o_pwm2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_r_pwm_counter1_carry_O_UNCONNECTED;
  wire [3:2]NLW_r_pwm_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_r_pwm_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_r_pwm_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_w_tc_pwm_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_w_tc_pwm_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_w_tc_pwm_counter1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_w_tc_pwm_counter1_carry__1_O_UNCONNECTED;

  CARRY4 o_pwm0_carry
       (.CI(1'b0),
        .CO({o_pwm0_carry_n_0,o_pwm0_carry_n_1,o_pwm0_carry_n_2,o_pwm0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({o_pwm0_carry_i_1_n_0,o_pwm0_carry_i_2_n_0,o_pwm0_carry_i_3_n_0,o_pwm0_carry_i_4_n_0}),
        .O(NLW_o_pwm0_carry_O_UNCONNECTED[3:0]),
        .S({o_pwm0_carry_i_5_n_0,o_pwm0_carry_i_6_n_0,o_pwm0_carry_i_7_n_0,o_pwm0_carry_i_8_n_0}));
  CARRY4 o_pwm0_carry__0
       (.CI(o_pwm0_carry_n_0),
        .CO({o_pwm0,o_pwm0_carry__0_n_1,o_pwm0_carry__0_n_2,o_pwm0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({o_pwm0_carry__0_i_1_n_0,o_pwm0_carry__0_i_2_n_0,o_pwm0_carry__0_i_3_n_0,o_pwm0_carry__0_i_4_n_0}),
        .O(NLW_o_pwm0_carry__0_O_UNCONNECTED[3:0]),
        .S({o_pwm0_carry__0_i_5_n_0,o_pwm0_carry__0_i_6_n_0,o_pwm0_carry__0_i_7_n_0,o_pwm0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry__0_i_1
       (.I0(r_pwm_width[14]),
        .I1(r_pwm_counter_reg[14]),
        .I2(r_pwm_counter_reg[15]),
        .I3(r_pwm_width[15]),
        .O(o_pwm0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry__0_i_2
       (.I0(r_pwm_width[12]),
        .I1(r_pwm_counter_reg[12]),
        .I2(r_pwm_counter_reg[13]),
        .I3(r_pwm_width[13]),
        .O(o_pwm0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry__0_i_3
       (.I0(r_pwm_width[10]),
        .I1(r_pwm_counter_reg[10]),
        .I2(r_pwm_counter_reg[11]),
        .I3(r_pwm_width[11]),
        .O(o_pwm0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry__0_i_4
       (.I0(r_pwm_width[8]),
        .I1(r_pwm_counter_reg[8]),
        .I2(r_pwm_counter_reg[9]),
        .I3(r_pwm_width[9]),
        .O(o_pwm0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry__0_i_5
       (.I0(r_pwm_width[14]),
        .I1(r_pwm_counter_reg[14]),
        .I2(r_pwm_width[15]),
        .I3(r_pwm_counter_reg[15]),
        .O(o_pwm0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry__0_i_6
       (.I0(r_pwm_width[12]),
        .I1(r_pwm_counter_reg[12]),
        .I2(r_pwm_width[13]),
        .I3(r_pwm_counter_reg[13]),
        .O(o_pwm0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry__0_i_7
       (.I0(r_pwm_width[10]),
        .I1(r_pwm_counter_reg[10]),
        .I2(r_pwm_width[11]),
        .I3(r_pwm_counter_reg[11]),
        .O(o_pwm0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry__0_i_8
       (.I0(r_pwm_width[8]),
        .I1(r_pwm_counter_reg[8]),
        .I2(r_pwm_width[9]),
        .I3(r_pwm_counter_reg[9]),
        .O(o_pwm0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry_i_1
       (.I0(r_pwm_width[6]),
        .I1(r_pwm_counter_reg[6]),
        .I2(r_pwm_counter_reg[7]),
        .I3(r_pwm_width[7]),
        .O(o_pwm0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry_i_2
       (.I0(r_pwm_width[4]),
        .I1(r_pwm_counter_reg[4]),
        .I2(r_pwm_counter_reg[5]),
        .I3(r_pwm_width[5]),
        .O(o_pwm0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry_i_3
       (.I0(r_pwm_width[2]),
        .I1(r_pwm_counter_reg[2]),
        .I2(r_pwm_counter_reg[3]),
        .I3(r_pwm_width[3]),
        .O(o_pwm0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    o_pwm0_carry_i_4
       (.I0(r_pwm_width[0]),
        .I1(r_pwm_counter_reg[0]),
        .I2(r_pwm_counter_reg[1]),
        .I3(r_pwm_width[1]),
        .O(o_pwm0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry_i_5
       (.I0(r_pwm_width[6]),
        .I1(r_pwm_counter_reg[6]),
        .I2(r_pwm_width[7]),
        .I3(r_pwm_counter_reg[7]),
        .O(o_pwm0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry_i_6
       (.I0(r_pwm_width[4]),
        .I1(r_pwm_counter_reg[4]),
        .I2(r_pwm_width[5]),
        .I3(r_pwm_counter_reg[5]),
        .O(o_pwm0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry_i_7
       (.I0(r_pwm_width[2]),
        .I1(r_pwm_counter_reg[2]),
        .I2(r_pwm_width[3]),
        .I3(r_pwm_counter_reg[3]),
        .O(o_pwm0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    o_pwm0_carry_i_8
       (.I0(r_pwm_width[0]),
        .I1(r_pwm_counter_reg[0]),
        .I2(r_pwm_width[1]),
        .I3(r_pwm_counter_reg[1]),
        .O(o_pwm0_carry_i_8_n_0));
  CARRY4 o_pwm2_carry
       (.CI(1'b0),
        .CO({o_pwm2_carry_n_0,o_pwm2_carry_n_1,o_pwm2_carry_n_2,o_pwm2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_o_pwm2_carry_O_UNCONNECTED[3:0]),
        .S({o_pwm2_carry_i_1_n_0,o_pwm2_carry_i_2_n_0,o_pwm2_carry_i_3_n_0,o_pwm2_carry_i_4_n_0}));
  CARRY4 o_pwm2_carry__0
       (.CI(o_pwm2_carry_n_0),
        .CO({NLW_o_pwm2_carry__0_CO_UNCONNECTED[3:2],o_pwm2,o_pwm2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_o_pwm2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,o_pwm2_carry__0_i_1_n_0,o_pwm2_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_pwm2_carry__0_i_1
       (.I0(r_max_count[15]),
        .I1(r_pwm_width[15]),
        .O(o_pwm2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_pwm2_carry__0_i_2
       (.I0(r_pwm_width[12]),
        .I1(r_max_count[12]),
        .I2(r_max_count[14]),
        .I3(r_pwm_width[14]),
        .I4(r_max_count[13]),
        .I5(r_pwm_width[13]),
        .O(o_pwm2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_pwm2_carry_i_1
       (.I0(r_pwm_width[9]),
        .I1(r_max_count[9]),
        .I2(r_max_count[11]),
        .I3(r_pwm_width[11]),
        .I4(r_max_count[10]),
        .I5(r_pwm_width[10]),
        .O(o_pwm2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_pwm2_carry_i_2
       (.I0(r_pwm_width[6]),
        .I1(r_max_count[6]),
        .I2(r_max_count[8]),
        .I3(r_pwm_width[8]),
        .I4(r_max_count[7]),
        .I5(r_pwm_width[7]),
        .O(o_pwm2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_pwm2_carry_i_3
       (.I0(r_pwm_width[3]),
        .I1(r_max_count[3]),
        .I2(r_max_count[5]),
        .I3(r_pwm_width[5]),
        .I4(r_max_count[4]),
        .I5(r_pwm_width[4]),
        .O(o_pwm2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_pwm2_carry_i_4
       (.I0(r_pwm_width[0]),
        .I1(r_max_count[0]),
        .I2(r_max_count[2]),
        .I3(r_pwm_width[2]),
        .I4(r_max_count[1]),
        .I5(r_pwm_width[1]),
        .O(o_pwm2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hAAA2)) 
    o_pwm_i_1
       (.I0(o_pwm0),
        .I1(o_pwm2),
        .I2(o_pwm_i_3_n_0),
        .I3(o_pwm_i_4_n_0),
        .O(o_pwm_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_pwm_i_2
       (.I0(i_rstb),
        .O(o_pwm_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_pwm_i_3
       (.I0(r_pwm_counter_reg[13]),
        .I1(r_pwm_counter_reg[12]),
        .I2(r_pwm_counter_reg[14]),
        .I3(r_pwm_counter_reg[15]),
        .I4(o_pwm_i_5_n_0),
        .O(o_pwm_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_pwm_i_4
       (.I0(r_pwm_counter_reg[5]),
        .I1(r_pwm_counter_reg[4]),
        .I2(r_pwm_counter_reg[7]),
        .I3(r_pwm_counter_reg[6]),
        .I4(o_pwm_i_6_n_0),
        .O(o_pwm_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_pwm_i_5
       (.I0(r_pwm_counter_reg[10]),
        .I1(r_pwm_counter_reg[11]),
        .I2(r_pwm_counter_reg[8]),
        .I3(r_pwm_counter_reg[9]),
        .O(o_pwm_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_pwm_i_6
       (.I0(r_pwm_counter_reg[2]),
        .I1(r_pwm_counter_reg[3]),
        .I2(r_pwm_counter_reg[0]),
        .I3(r_pwm_counter_reg[1]),
        .O(o_pwm_i_6_n_0));
  FDCE o_pwm_reg
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(o_pwm_i_1_n_0),
        .Q(o_pwm));
  FDCE \r_max_count_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[0]),
        .Q(r_max_count[0]));
  FDCE \r_max_count_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[10]),
        .Q(r_max_count[10]));
  FDCE \r_max_count_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[11]),
        .Q(r_max_count[11]));
  FDCE \r_max_count_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[12]),
        .Q(r_max_count[12]));
  FDCE \r_max_count_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[13]),
        .Q(r_max_count[13]));
  FDCE \r_max_count_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[14]),
        .Q(r_max_count[14]));
  FDCE \r_max_count_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[15]),
        .Q(r_max_count[15]));
  FDCE \r_max_count_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[1]),
        .Q(r_max_count[1]));
  FDCE \r_max_count_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[2]),
        .Q(r_max_count[2]));
  FDCE \r_max_count_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[3]),
        .Q(r_max_count[3]));
  FDCE \r_max_count_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[4]),
        .Q(r_max_count[4]));
  FDCE \r_max_count_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[5]),
        .Q(r_max_count[5]));
  FDCE \r_max_count_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[6]),
        .Q(r_max_count[6]));
  FDCE \r_max_count_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[7]),
        .Q(r_max_count[7]));
  FDCE \r_max_count_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[8]),
        .Q(r_max_count[8]));
  FDCE \r_max_count_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_module[9]),
        .Q(r_max_count[9]));
  CARRY4 r_pwm_counter1_carry
       (.CI(1'b0),
        .CO({r_pwm_counter1_carry_n_0,r_pwm_counter1_carry_n_1,r_pwm_counter1_carry_n_2,r_pwm_counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_pwm_counter1_carry_O_UNCONNECTED[3:0]),
        .S({r_pwm_counter1_carry_i_1_n_0,r_pwm_counter1_carry_i_2_n_0,r_pwm_counter1_carry_i_3_n_0,r_pwm_counter1_carry_i_4_n_0}));
  CARRY4 r_pwm_counter1_carry__0
       (.CI(r_pwm_counter1_carry_n_0),
        .CO({NLW_r_pwm_counter1_carry__0_CO_UNCONNECTED[3:2],load,r_pwm_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_r_pwm_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,r_pwm_counter1_carry__0_i_1_n_0,r_pwm_counter1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_pwm_counter1_carry__0_i_1
       (.I0(r_max_count[15]),
        .I1(r_pwm_counter_reg[15]),
        .O(r_pwm_counter1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_pwm_counter1_carry__0_i_2
       (.I0(r_pwm_counter_reg[12]),
        .I1(r_max_count[12]),
        .I2(r_max_count[14]),
        .I3(r_pwm_counter_reg[14]),
        .I4(r_max_count[13]),
        .I5(r_pwm_counter_reg[13]),
        .O(r_pwm_counter1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_pwm_counter1_carry_i_1
       (.I0(r_pwm_counter_reg[9]),
        .I1(r_max_count[9]),
        .I2(r_max_count[11]),
        .I3(r_pwm_counter_reg[11]),
        .I4(r_max_count[10]),
        .I5(r_pwm_counter_reg[10]),
        .O(r_pwm_counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_pwm_counter1_carry_i_2
       (.I0(r_pwm_counter_reg[6]),
        .I1(r_max_count[6]),
        .I2(r_max_count[8]),
        .I3(r_pwm_counter_reg[8]),
        .I4(r_max_count[7]),
        .I5(r_pwm_counter_reg[7]),
        .O(r_pwm_counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_pwm_counter1_carry_i_3
       (.I0(r_pwm_counter_reg[3]),
        .I1(r_max_count[3]),
        .I2(r_max_count[5]),
        .I3(r_pwm_counter_reg[5]),
        .I4(r_max_count[4]),
        .I5(r_pwm_counter_reg[4]),
        .O(r_pwm_counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    r_pwm_counter1_carry_i_4
       (.I0(r_pwm_counter_reg[0]),
        .I1(r_max_count[0]),
        .I2(r_max_count[2]),
        .I3(r_pwm_counter_reg[2]),
        .I4(r_max_count[1]),
        .I5(r_pwm_counter_reg[1]),
        .O(r_pwm_counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[0]_i_2 
       (.I0(r_pwm_counter_reg[0]),
        .I1(load),
        .O(\r_pwm_counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[0]_i_3 
       (.I0(r_pwm_counter_reg[3]),
        .I1(load),
        .O(\r_pwm_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[0]_i_4 
       (.I0(r_pwm_counter_reg[2]),
        .I1(load),
        .O(\r_pwm_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[0]_i_5 
       (.I0(r_pwm_counter_reg[1]),
        .I1(load),
        .O(\r_pwm_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_pwm_counter[0]_i_6 
       (.I0(r_pwm_counter_reg[0]),
        .I1(load),
        .O(\r_pwm_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[12]_i_2 
       (.I0(r_pwm_counter_reg[15]),
        .I1(load),
        .O(\r_pwm_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[12]_i_3 
       (.I0(r_pwm_counter_reg[14]),
        .I1(load),
        .O(\r_pwm_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[12]_i_4 
       (.I0(r_pwm_counter_reg[13]),
        .I1(load),
        .O(\r_pwm_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[12]_i_5 
       (.I0(r_pwm_counter_reg[12]),
        .I1(load),
        .O(\r_pwm_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[4]_i_2 
       (.I0(r_pwm_counter_reg[7]),
        .I1(load),
        .O(\r_pwm_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[4]_i_3 
       (.I0(r_pwm_counter_reg[6]),
        .I1(load),
        .O(\r_pwm_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[4]_i_4 
       (.I0(r_pwm_counter_reg[5]),
        .I1(load),
        .O(\r_pwm_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[4]_i_5 
       (.I0(r_pwm_counter_reg[4]),
        .I1(load),
        .O(\r_pwm_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[8]_i_2 
       (.I0(r_pwm_counter_reg[11]),
        .I1(load),
        .O(\r_pwm_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[8]_i_3 
       (.I0(r_pwm_counter_reg[10]),
        .I1(load),
        .O(\r_pwm_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[8]_i_4 
       (.I0(r_pwm_counter_reg[9]),
        .I1(load),
        .O(\r_pwm_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_pwm_counter[8]_i_5 
       (.I0(r_pwm_counter_reg[8]),
        .I1(load),
        .O(\r_pwm_counter[8]_i_5_n_0 ));
  FDCE \r_pwm_counter_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[0]_i_1_n_7 ),
        .Q(r_pwm_counter_reg[0]));
  CARRY4 \r_pwm_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_pwm_counter_reg[0]_i_1_n_0 ,\r_pwm_counter_reg[0]_i_1_n_1 ,\r_pwm_counter_reg[0]_i_1_n_2 ,\r_pwm_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_pwm_counter[0]_i_2_n_0 }),
        .O({\r_pwm_counter_reg[0]_i_1_n_4 ,\r_pwm_counter_reg[0]_i_1_n_5 ,\r_pwm_counter_reg[0]_i_1_n_6 ,\r_pwm_counter_reg[0]_i_1_n_7 }),
        .S({\r_pwm_counter[0]_i_3_n_0 ,\r_pwm_counter[0]_i_4_n_0 ,\r_pwm_counter[0]_i_5_n_0 ,\r_pwm_counter[0]_i_6_n_0 }));
  FDCE \r_pwm_counter_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[8]_i_1_n_5 ),
        .Q(r_pwm_counter_reg[10]));
  FDCE \r_pwm_counter_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[8]_i_1_n_4 ),
        .Q(r_pwm_counter_reg[11]));
  FDCE \r_pwm_counter_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[12]_i_1_n_7 ),
        .Q(r_pwm_counter_reg[12]));
  CARRY4 \r_pwm_counter_reg[12]_i_1 
       (.CI(\r_pwm_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_r_pwm_counter_reg[12]_i_1_CO_UNCONNECTED [3],\r_pwm_counter_reg[12]_i_1_n_1 ,\r_pwm_counter_reg[12]_i_1_n_2 ,\r_pwm_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pwm_counter_reg[12]_i_1_n_4 ,\r_pwm_counter_reg[12]_i_1_n_5 ,\r_pwm_counter_reg[12]_i_1_n_6 ,\r_pwm_counter_reg[12]_i_1_n_7 }),
        .S({\r_pwm_counter[12]_i_2_n_0 ,\r_pwm_counter[12]_i_3_n_0 ,\r_pwm_counter[12]_i_4_n_0 ,\r_pwm_counter[12]_i_5_n_0 }));
  FDCE \r_pwm_counter_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[12]_i_1_n_6 ),
        .Q(r_pwm_counter_reg[13]));
  FDCE \r_pwm_counter_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[12]_i_1_n_5 ),
        .Q(r_pwm_counter_reg[14]));
  FDCE \r_pwm_counter_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[12]_i_1_n_4 ),
        .Q(r_pwm_counter_reg[15]));
  FDCE \r_pwm_counter_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[0]_i_1_n_6 ),
        .Q(r_pwm_counter_reg[1]));
  FDCE \r_pwm_counter_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[0]_i_1_n_5 ),
        .Q(r_pwm_counter_reg[2]));
  FDCE \r_pwm_counter_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[0]_i_1_n_4 ),
        .Q(r_pwm_counter_reg[3]));
  FDCE \r_pwm_counter_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[4]_i_1_n_7 ),
        .Q(r_pwm_counter_reg[4]));
  CARRY4 \r_pwm_counter_reg[4]_i_1 
       (.CI(\r_pwm_counter_reg[0]_i_1_n_0 ),
        .CO({\r_pwm_counter_reg[4]_i_1_n_0 ,\r_pwm_counter_reg[4]_i_1_n_1 ,\r_pwm_counter_reg[4]_i_1_n_2 ,\r_pwm_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pwm_counter_reg[4]_i_1_n_4 ,\r_pwm_counter_reg[4]_i_1_n_5 ,\r_pwm_counter_reg[4]_i_1_n_6 ,\r_pwm_counter_reg[4]_i_1_n_7 }),
        .S({\r_pwm_counter[4]_i_2_n_0 ,\r_pwm_counter[4]_i_3_n_0 ,\r_pwm_counter[4]_i_4_n_0 ,\r_pwm_counter[4]_i_5_n_0 }));
  FDCE \r_pwm_counter_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[4]_i_1_n_6 ),
        .Q(r_pwm_counter_reg[5]));
  FDCE \r_pwm_counter_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[4]_i_1_n_5 ),
        .Q(r_pwm_counter_reg[6]));
  FDCE \r_pwm_counter_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[4]_i_1_n_4 ),
        .Q(r_pwm_counter_reg[7]));
  FDCE \r_pwm_counter_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[8]_i_1_n_7 ),
        .Q(r_pwm_counter_reg[8]));
  CARRY4 \r_pwm_counter_reg[8]_i_1 
       (.CI(\r_pwm_counter_reg[4]_i_1_n_0 ),
        .CO({\r_pwm_counter_reg[8]_i_1_n_0 ,\r_pwm_counter_reg[8]_i_1_n_1 ,\r_pwm_counter_reg[8]_i_1_n_2 ,\r_pwm_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pwm_counter_reg[8]_i_1_n_4 ,\r_pwm_counter_reg[8]_i_1_n_5 ,\r_pwm_counter_reg[8]_i_1_n_6 ,\r_pwm_counter_reg[8]_i_1_n_7 }),
        .S({\r_pwm_counter[8]_i_2_n_0 ,\r_pwm_counter[8]_i_3_n_0 ,\r_pwm_counter[8]_i_4_n_0 ,\r_pwm_counter[8]_i_5_n_0 }));
  FDCE \r_pwm_counter_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(o_pwm_i_2_n_0),
        .D(\r_pwm_counter_reg[8]_i_1_n_6 ),
        .Q(r_pwm_counter_reg[9]));
  FDCE \r_pwm_width_reg[0] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[0]),
        .Q(r_pwm_width[0]));
  FDCE \r_pwm_width_reg[10] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[10]),
        .Q(r_pwm_width[10]));
  FDCE \r_pwm_width_reg[11] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[11]),
        .Q(r_pwm_width[11]));
  FDCE \r_pwm_width_reg[12] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[12]),
        .Q(r_pwm_width[12]));
  FDCE \r_pwm_width_reg[13] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[13]),
        .Q(r_pwm_width[13]));
  FDCE \r_pwm_width_reg[14] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[14]),
        .Q(r_pwm_width[14]));
  FDCE \r_pwm_width_reg[15] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[15]),
        .Q(r_pwm_width[15]));
  FDCE \r_pwm_width_reg[1] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[1]),
        .Q(r_pwm_width[1]));
  FDCE \r_pwm_width_reg[2] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[2]),
        .Q(r_pwm_width[2]));
  FDCE \r_pwm_width_reg[3] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[3]),
        .Q(r_pwm_width[3]));
  FDCE \r_pwm_width_reg[4] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[4]),
        .Q(r_pwm_width[4]));
  FDCE \r_pwm_width_reg[5] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[5]),
        .Q(r_pwm_width[5]));
  FDCE \r_pwm_width_reg[6] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[6]),
        .Q(r_pwm_width[6]));
  FDCE \r_pwm_width_reg[7] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[7]),
        .Q(r_pwm_width[7]));
  FDCE \r_pwm_width_reg[8] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[8]),
        .Q(r_pwm_width[8]));
  FDCE \r_pwm_width_reg[9] 
       (.C(i_clk),
        .CE(p_0_in),
        .CLR(o_pwm_i_2_n_0),
        .D(i_pwm_width[9]),
        .Q(r_pwm_width[9]));
  CARRY4 w_tc_pwm_counter1_carry
       (.CI(1'b0),
        .CO({w_tc_pwm_counter1_carry_n_0,w_tc_pwm_counter1_carry_n_1,w_tc_pwm_counter1_carry_n_2,w_tc_pwm_counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_pwm_counter1_carry_i_1_n_0,w_tc_pwm_counter1_carry_i_2_n_0,w_tc_pwm_counter1_carry_i_3_n_0,w_tc_pwm_counter1_carry_i_4_n_0}),
        .O(NLW_w_tc_pwm_counter1_carry_O_UNCONNECTED[3:0]),
        .S({w_tc_pwm_counter1_carry_i_5_n_0,w_tc_pwm_counter1_carry_i_6_n_0,w_tc_pwm_counter1_carry_i_7_n_0,w_tc_pwm_counter1_carry_i_8_n_0}));
  CARRY4 w_tc_pwm_counter1_carry__0
       (.CI(w_tc_pwm_counter1_carry_n_0),
        .CO({w_tc_pwm_counter1,w_tc_pwm_counter1_carry__0_n_1,w_tc_pwm_counter1_carry__0_n_2,w_tc_pwm_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_pwm_counter1_carry__0_i_1_n_0,w_tc_pwm_counter1_carry__0_i_2_n_0,w_tc_pwm_counter1_carry__0_i_3_n_0,w_tc_pwm_counter1_carry__0_i_4_n_0}),
        .O(NLW_w_tc_pwm_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({w_tc_pwm_counter1_carry__0_i_5_n_0,w_tc_pwm_counter1_carry__0_i_6_n_0,w_tc_pwm_counter1_carry__0_i_7_n_0,w_tc_pwm_counter1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry__0_i_1
       (.I0(r_max_count[14]),
        .I1(r_pwm_counter_reg[14]),
        .I2(r_pwm_counter_reg[15]),
        .I3(r_max_count[15]),
        .O(w_tc_pwm_counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry__0_i_2
       (.I0(r_max_count[12]),
        .I1(r_pwm_counter_reg[12]),
        .I2(r_pwm_counter_reg[13]),
        .I3(r_max_count[13]),
        .O(w_tc_pwm_counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry__0_i_3
       (.I0(r_max_count[10]),
        .I1(r_pwm_counter_reg[10]),
        .I2(r_pwm_counter_reg[11]),
        .I3(r_max_count[11]),
        .O(w_tc_pwm_counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry__0_i_4
       (.I0(r_max_count[8]),
        .I1(r_pwm_counter_reg[8]),
        .I2(r_pwm_counter_reg[9]),
        .I3(r_max_count[9]),
        .O(w_tc_pwm_counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry__0_i_5
       (.I0(r_max_count[14]),
        .I1(r_pwm_counter_reg[14]),
        .I2(r_max_count[15]),
        .I3(r_pwm_counter_reg[15]),
        .O(w_tc_pwm_counter1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry__0_i_6
       (.I0(r_max_count[12]),
        .I1(r_pwm_counter_reg[12]),
        .I2(r_max_count[13]),
        .I3(r_pwm_counter_reg[13]),
        .O(w_tc_pwm_counter1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry__0_i_7
       (.I0(r_max_count[10]),
        .I1(r_pwm_counter_reg[10]),
        .I2(r_max_count[11]),
        .I3(r_pwm_counter_reg[11]),
        .O(w_tc_pwm_counter1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry__0_i_8
       (.I0(r_max_count[8]),
        .I1(r_pwm_counter_reg[8]),
        .I2(r_max_count[9]),
        .I3(r_pwm_counter_reg[9]),
        .O(w_tc_pwm_counter1_carry__0_i_8_n_0));
  CARRY4 w_tc_pwm_counter1_carry__1
       (.CI(w_tc_pwm_counter1),
        .CO(NLW_w_tc_pwm_counter1_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_w_tc_pwm_counter1_carry__1_O_UNCONNECTED[3:1],p_0_in}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry_i_1
       (.I0(r_max_count[6]),
        .I1(r_pwm_counter_reg[6]),
        .I2(r_pwm_counter_reg[7]),
        .I3(r_max_count[7]),
        .O(w_tc_pwm_counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry_i_2
       (.I0(r_max_count[4]),
        .I1(r_pwm_counter_reg[4]),
        .I2(r_pwm_counter_reg[5]),
        .I3(r_max_count[5]),
        .O(w_tc_pwm_counter1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry_i_3
       (.I0(r_max_count[2]),
        .I1(r_pwm_counter_reg[2]),
        .I2(r_pwm_counter_reg[3]),
        .I3(r_max_count[3]),
        .O(w_tc_pwm_counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    w_tc_pwm_counter1_carry_i_4
       (.I0(r_max_count[0]),
        .I1(r_pwm_counter_reg[0]),
        .I2(r_pwm_counter_reg[1]),
        .I3(r_max_count[1]),
        .O(w_tc_pwm_counter1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry_i_5
       (.I0(r_max_count[6]),
        .I1(r_pwm_counter_reg[6]),
        .I2(r_max_count[7]),
        .I3(r_pwm_counter_reg[7]),
        .O(w_tc_pwm_counter1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry_i_6
       (.I0(r_max_count[4]),
        .I1(r_pwm_counter_reg[4]),
        .I2(r_max_count[5]),
        .I3(r_pwm_counter_reg[5]),
        .O(w_tc_pwm_counter1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry_i_7
       (.I0(r_max_count[2]),
        .I1(r_pwm_counter_reg[2]),
        .I2(r_max_count[3]),
        .I3(r_pwm_counter_reg[3]),
        .O(w_tc_pwm_counter1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    w_tc_pwm_counter1_carry_i_8
       (.I0(r_max_count[0]),
        .I1(r_pwm_counter_reg[0]),
        .I2(r_max_count[1]),
        .I3(r_pwm_counter_reg[1]),
        .O(w_tc_pwm_counter1_carry_i_8_n_0));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
