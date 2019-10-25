// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct 25 13:09:19 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_de_lastig_ip_0_0_sim_netlist.v
// Design      : Block_design_de_lastig_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_de_lastig_ip_0_0,de_lastig_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "de_lastig_ip,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (IPCORE_CLK,
    IPCORE_RESETN,
    Input,
    Input1,
    Input2,
    Input3,
    Output);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW" *) input IPCORE_RESETN;
  input [31:0]Input;
  input [31:0]Input1;
  input [15:0]Input2;
  input [15:0]Input3;
  output [15:0]Output;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [31:0]Input;
  wire [31:0]Input1;
  wire [15:0]Input2;
  wire [15:0]Input3;
  wire [15:0]Output;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip U0
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .Input(Input[15:0]),
        .Input1(Input1[15:0]),
        .Input2(Input2),
        .Input3(Input3),
        .Output(Output));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip
   (Output,
    IPCORE_CLK,
    Input3,
    Input1,
    Input2,
    Input,
    IPCORE_RESETN);
  output [15:0]Output;
  input IPCORE_CLK;
  input [15:0]Input3;
  input [15:0]Input1;
  input [15:0]Input2;
  input [15:0]Input;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]Input;
  wire [15:0]Input1;
  wire [15:0]Input2;
  wire [15:0]Input3;
  wire [15:0]Output;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut u_de_lastig_ip_dut_inst
       (.AR(reset),
        .IPCORE_CLK(IPCORE_CLK),
        .Input(Input),
        .Input1(Input1),
        .Input2(Input2),
        .Input3(Input3),
        .Output(Output));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync u_de_lastig_ip_reset_sync_inst
       (.AR(reset),
        .IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut
   (Output,
    Input3,
    IPCORE_CLK,
    AR,
    Input1,
    Input2,
    Input);
  output [15:0]Output;
  input [15:0]Input3;
  input IPCORE_CLK;
  input [0:0]AR;
  input [15:0]Input1;
  input [15:0]Input2;
  input [15:0]Input;

  wire [0:0]AR;
  wire IPCORE_CLK;
  wire [15:0]Input;
  wire [15:0]Input1;
  wire [15:0]Input2;
  wire [15:0]Input3;
  wire [15:0]Output;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit u_de_lastig_ip_src_de_lastigste_calc_ooit
       (.AR(AR),
        .IPCORE_CLK(IPCORE_CLK),
        .Input(Input),
        .Input1(Input1),
        .Input2(Input2),
        .Input3(Input3),
        .Output(Output));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync
   (AR,
    IPCORE_CLK,
    IPCORE_RESETN);
  output [0:0]AR;
  input IPCORE_CLK;
  input IPCORE_RESETN;

  wire [0:0]AR;
  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire reset_in;
  wire reset_pipe;

  FDPE reset_out_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_pipe),
        .PRE(reset_in),
        .Q(AR));
  LUT1 #(
    .INIT(2'h1)) 
    reset_pipe_i_1
       (.I0(IPCORE_RESETN),
        .O(reset_in));
  FDPE reset_pipe_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_in),
        .Q(reset_pipe));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit
   (Output,
    Input3,
    IPCORE_CLK,
    AR,
    Input1,
    Input2,
    Input);
  output [15:0]Output;
  input [15:0]Input3;
  input IPCORE_CLK;
  input [0:0]AR;
  input [15:0]Input1;
  input [15:0]Input2;
  input [15:0]Input;

  wire [0:0]AR;
  wire [15:0]Delay1_out1;
  wire [15:0]Delay2_out1;
  wire [15:0]Delay3_out1;
  wire [15:0]Delay_out1;
  wire IPCORE_CLK;
  wire [15:0]Input;
  wire [15:0]Input1;
  wire [15:0]Input2;
  wire [15:0]Input3;
  wire [15:0]Output;
  wire Sum_out1__1_carry__0_i_10_n_0;
  wire Sum_out1__1_carry__0_i_11_n_0;
  wire Sum_out1__1_carry__0_i_12_n_0;
  wire Sum_out1__1_carry__0_i_1_n_0;
  wire Sum_out1__1_carry__0_i_2_n_0;
  wire Sum_out1__1_carry__0_i_3_n_0;
  wire Sum_out1__1_carry__0_i_4_n_0;
  wire Sum_out1__1_carry__0_i_5_n_0;
  wire Sum_out1__1_carry__0_i_6_n_0;
  wire Sum_out1__1_carry__0_i_7_n_0;
  wire Sum_out1__1_carry__0_i_8_n_0;
  wire Sum_out1__1_carry__0_i_9_n_0;
  wire Sum_out1__1_carry__0_n_0;
  wire Sum_out1__1_carry__0_n_1;
  wire Sum_out1__1_carry__0_n_2;
  wire Sum_out1__1_carry__0_n_3;
  wire Sum_out1__1_carry__1_i_10_n_0;
  wire Sum_out1__1_carry__1_i_11_n_0;
  wire Sum_out1__1_carry__1_i_12_n_0;
  wire Sum_out1__1_carry__1_i_1_n_0;
  wire Sum_out1__1_carry__1_i_2_n_0;
  wire Sum_out1__1_carry__1_i_3_n_0;
  wire Sum_out1__1_carry__1_i_4_n_0;
  wire Sum_out1__1_carry__1_i_5_n_0;
  wire Sum_out1__1_carry__1_i_6_n_0;
  wire Sum_out1__1_carry__1_i_7_n_0;
  wire Sum_out1__1_carry__1_i_8_n_0;
  wire Sum_out1__1_carry__1_i_9_n_0;
  wire Sum_out1__1_carry__1_n_0;
  wire Sum_out1__1_carry__1_n_1;
  wire Sum_out1__1_carry__1_n_2;
  wire Sum_out1__1_carry__1_n_3;
  wire Sum_out1__1_carry__2_i_10_n_0;
  wire Sum_out1__1_carry__2_i_11_n_0;
  wire Sum_out1__1_carry__2_i_12_n_0;
  wire Sum_out1__1_carry__2_i_1_n_0;
  wire Sum_out1__1_carry__2_i_2_n_0;
  wire Sum_out1__1_carry__2_i_3_n_0;
  wire Sum_out1__1_carry__2_i_4_n_0;
  wire Sum_out1__1_carry__2_i_5_n_0;
  wire Sum_out1__1_carry__2_i_6_n_0;
  wire Sum_out1__1_carry__2_i_7_n_0;
  wire Sum_out1__1_carry__2_i_8_n_0;
  wire Sum_out1__1_carry__2_i_9_n_0;
  wire Sum_out1__1_carry__2_n_1;
  wire Sum_out1__1_carry__2_n_2;
  wire Sum_out1__1_carry__2_n_3;
  wire Sum_out1__1_carry_i_1_n_0;
  wire Sum_out1__1_carry_i_2_n_0;
  wire Sum_out1__1_carry_i_3_n_0;
  wire Sum_out1__1_carry_i_4_n_0;
  wire Sum_out1__1_carry_i_5_n_0;
  wire Sum_out1__1_carry_i_6_n_0;
  wire Sum_out1__1_carry_i_7_n_0;
  wire Sum_out1__1_carry_i_8_n_0;
  wire Sum_out1__1_carry_n_0;
  wire Sum_out1__1_carry_n_1;
  wire Sum_out1__1_carry_n_2;
  wire Sum_out1__1_carry_n_3;
  wire [3:3]NLW_Sum_out1__1_carry__2_CO_UNCONNECTED;

  FDCE \Delay1_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[0]),
        .Q(Delay1_out1[0]));
  FDCE \Delay1_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[10]),
        .Q(Delay1_out1[10]));
  FDCE \Delay1_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[11]),
        .Q(Delay1_out1[11]));
  FDCE \Delay1_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[12]),
        .Q(Delay1_out1[12]));
  FDCE \Delay1_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[13]),
        .Q(Delay1_out1[13]));
  FDCE \Delay1_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[14]),
        .Q(Delay1_out1[14]));
  FDCE \Delay1_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[15]),
        .Q(Delay1_out1[15]));
  FDCE \Delay1_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[1]),
        .Q(Delay1_out1[1]));
  FDCE \Delay1_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[2]),
        .Q(Delay1_out1[2]));
  FDCE \Delay1_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[3]),
        .Q(Delay1_out1[3]));
  FDCE \Delay1_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[4]),
        .Q(Delay1_out1[4]));
  FDCE \Delay1_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[5]),
        .Q(Delay1_out1[5]));
  FDCE \Delay1_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[6]),
        .Q(Delay1_out1[6]));
  FDCE \Delay1_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[7]),
        .Q(Delay1_out1[7]));
  FDCE \Delay1_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[8]),
        .Q(Delay1_out1[8]));
  FDCE \Delay1_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input1[9]),
        .Q(Delay1_out1[9]));
  FDCE \Delay2_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[0]),
        .Q(Delay2_out1[0]));
  FDCE \Delay2_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[10]),
        .Q(Delay2_out1[10]));
  FDCE \Delay2_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[11]),
        .Q(Delay2_out1[11]));
  FDCE \Delay2_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[12]),
        .Q(Delay2_out1[12]));
  FDCE \Delay2_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[13]),
        .Q(Delay2_out1[13]));
  FDCE \Delay2_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[14]),
        .Q(Delay2_out1[14]));
  FDCE \Delay2_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[15]),
        .Q(Delay2_out1[15]));
  FDCE \Delay2_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[1]),
        .Q(Delay2_out1[1]));
  FDCE \Delay2_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[2]),
        .Q(Delay2_out1[2]));
  FDCE \Delay2_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[3]),
        .Q(Delay2_out1[3]));
  FDCE \Delay2_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[4]),
        .Q(Delay2_out1[4]));
  FDCE \Delay2_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[5]),
        .Q(Delay2_out1[5]));
  FDCE \Delay2_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[6]),
        .Q(Delay2_out1[6]));
  FDCE \Delay2_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[7]),
        .Q(Delay2_out1[7]));
  FDCE \Delay2_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[8]),
        .Q(Delay2_out1[8]));
  FDCE \Delay2_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input2[9]),
        .Q(Delay2_out1[9]));
  FDCE \Delay3_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[0]),
        .Q(Delay3_out1[0]));
  FDCE \Delay3_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[10]),
        .Q(Delay3_out1[10]));
  FDCE \Delay3_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[11]),
        .Q(Delay3_out1[11]));
  FDCE \Delay3_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[12]),
        .Q(Delay3_out1[12]));
  FDCE \Delay3_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[13]),
        .Q(Delay3_out1[13]));
  FDCE \Delay3_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[14]),
        .Q(Delay3_out1[14]));
  FDCE \Delay3_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[15]),
        .Q(Delay3_out1[15]));
  FDCE \Delay3_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[1]),
        .Q(Delay3_out1[1]));
  FDCE \Delay3_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[2]),
        .Q(Delay3_out1[2]));
  FDCE \Delay3_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[3]),
        .Q(Delay3_out1[3]));
  FDCE \Delay3_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[4]),
        .Q(Delay3_out1[4]));
  FDCE \Delay3_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[5]),
        .Q(Delay3_out1[5]));
  FDCE \Delay3_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[6]),
        .Q(Delay3_out1[6]));
  FDCE \Delay3_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[7]),
        .Q(Delay3_out1[7]));
  FDCE \Delay3_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[8]),
        .Q(Delay3_out1[8]));
  FDCE \Delay3_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input3[9]),
        .Q(Delay3_out1[9]));
  FDCE \Delay_out1_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[0]),
        .Q(Delay_out1[0]));
  FDCE \Delay_out1_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[10]),
        .Q(Delay_out1[10]));
  FDCE \Delay_out1_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[11]),
        .Q(Delay_out1[11]));
  FDCE \Delay_out1_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[12]),
        .Q(Delay_out1[12]));
  FDCE \Delay_out1_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[13]),
        .Q(Delay_out1[13]));
  FDCE \Delay_out1_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[14]),
        .Q(Delay_out1[14]));
  FDCE \Delay_out1_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[15]),
        .Q(Delay_out1[15]));
  FDCE \Delay_out1_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[1]),
        .Q(Delay_out1[1]));
  FDCE \Delay_out1_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[2]),
        .Q(Delay_out1[2]));
  FDCE \Delay_out1_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[3]),
        .Q(Delay_out1[3]));
  FDCE \Delay_out1_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[4]),
        .Q(Delay_out1[4]));
  FDCE \Delay_out1_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[5]),
        .Q(Delay_out1[5]));
  FDCE \Delay_out1_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[6]),
        .Q(Delay_out1[6]));
  FDCE \Delay_out1_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[7]),
        .Q(Delay_out1[7]));
  FDCE \Delay_out1_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[8]),
        .Q(Delay_out1[8]));
  FDCE \Delay_out1_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Input[9]),
        .Q(Delay_out1[9]));
  CARRY4 Sum_out1__1_carry
       (.CI(1'b0),
        .CO({Sum_out1__1_carry_n_0,Sum_out1__1_carry_n_1,Sum_out1__1_carry_n_2,Sum_out1__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry_i_1_n_0,Sum_out1__1_carry_i_2_n_0,Sum_out1__1_carry_i_3_n_0,Delay_out1[0]}),
        .O(Output[3:0]),
        .S({Sum_out1__1_carry_i_4_n_0,Sum_out1__1_carry_i_5_n_0,Sum_out1__1_carry_i_6_n_0,Sum_out1__1_carry_i_7_n_0}));
  CARRY4 Sum_out1__1_carry__0
       (.CI(Sum_out1__1_carry_n_0),
        .CO({Sum_out1__1_carry__0_n_0,Sum_out1__1_carry__0_n_1,Sum_out1__1_carry__0_n_2,Sum_out1__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry__0_i_1_n_0,Sum_out1__1_carry__0_i_2_n_0,Sum_out1__1_carry__0_i_3_n_0,Sum_out1__1_carry__0_i_4_n_0}),
        .O(Output[7:4]),
        .S({Sum_out1__1_carry__0_i_5_n_0,Sum_out1__1_carry__0_i_6_n_0,Sum_out1__1_carry__0_i_7_n_0,Sum_out1__1_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__0_i_1
       (.I0(Delay2_out1[6]),
        .I1(Delay3_out1[6]),
        .I2(Delay1_out1[6]),
        .I3(Sum_out1__1_carry__0_i_9_n_0),
        .I4(Delay_out1[6]),
        .O(Sum_out1__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__0_i_10
       (.I0(Delay2_out1[5]),
        .I1(Delay3_out1[5]),
        .I2(Delay1_out1[5]),
        .O(Sum_out1__1_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__0_i_11
       (.I0(Delay1_out1[3]),
        .I1(Delay2_out1[3]),
        .I2(Delay3_out1[3]),
        .O(Sum_out1__1_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__0_i_12
       (.I0(Delay2_out1[3]),
        .I1(Delay3_out1[3]),
        .I2(Delay1_out1[3]),
        .O(Sum_out1__1_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__0_i_2
       (.I0(Delay_out1[5]),
        .I1(Delay3_out1[4]),
        .I2(Delay2_out1[4]),
        .I3(Delay1_out1[4]),
        .I4(Sum_out1__1_carry__0_i_10_n_0),
        .O(Sum_out1__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__0_i_3
       (.I0(Delay2_out1[4]),
        .I1(Delay3_out1[4]),
        .I2(Delay1_out1[4]),
        .I3(Sum_out1__1_carry__0_i_11_n_0),
        .I4(Delay_out1[4]),
        .O(Sum_out1__1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__0_i_4
       (.I0(Delay_out1[3]),
        .I1(Delay3_out1[2]),
        .I2(Delay2_out1[2]),
        .I3(Delay1_out1[2]),
        .I4(Sum_out1__1_carry__0_i_12_n_0),
        .O(Sum_out1__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__0_i_5
       (.I0(Sum_out1__1_carry__0_i_1_n_0),
        .I1(Sum_out1__1_carry__1_i_12_n_0),
        .I2(Delay_out1[7]),
        .I3(Delay1_out1[6]),
        .I4(Delay2_out1[6]),
        .I5(Delay3_out1[6]),
        .O(Sum_out1__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__0_i_6
       (.I0(Sum_out1__1_carry__0_i_2_n_0),
        .I1(Delay1_out1[6]),
        .I2(Delay3_out1[6]),
        .I3(Delay2_out1[6]),
        .I4(Delay_out1[6]),
        .I5(Sum_out1__1_carry__0_i_9_n_0),
        .O(Sum_out1__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__0_i_7
       (.I0(Sum_out1__1_carry__0_i_3_n_0),
        .I1(Sum_out1__1_carry__0_i_10_n_0),
        .I2(Delay_out1[5]),
        .I3(Delay1_out1[4]),
        .I4(Delay2_out1[4]),
        .I5(Delay3_out1[4]),
        .O(Sum_out1__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__0_i_8
       (.I0(Sum_out1__1_carry__0_i_4_n_0),
        .I1(Delay1_out1[4]),
        .I2(Delay3_out1[4]),
        .I3(Delay2_out1[4]),
        .I4(Delay_out1[4]),
        .I5(Sum_out1__1_carry__0_i_11_n_0),
        .O(Sum_out1__1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__0_i_9
       (.I0(Delay1_out1[5]),
        .I1(Delay2_out1[5]),
        .I2(Delay3_out1[5]),
        .O(Sum_out1__1_carry__0_i_9_n_0));
  CARRY4 Sum_out1__1_carry__1
       (.CI(Sum_out1__1_carry__0_n_0),
        .CO({Sum_out1__1_carry__1_n_0,Sum_out1__1_carry__1_n_1,Sum_out1__1_carry__1_n_2,Sum_out1__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_out1__1_carry__1_i_1_n_0,Sum_out1__1_carry__1_i_2_n_0,Sum_out1__1_carry__1_i_3_n_0,Sum_out1__1_carry__1_i_4_n_0}),
        .O(Output[11:8]),
        .S({Sum_out1__1_carry__1_i_5_n_0,Sum_out1__1_carry__1_i_6_n_0,Sum_out1__1_carry__1_i_7_n_0,Sum_out1__1_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__1_i_1
       (.I0(Delay2_out1[10]),
        .I1(Delay3_out1[10]),
        .I2(Delay1_out1[10]),
        .I3(Sum_out1__1_carry__1_i_9_n_0),
        .I4(Delay_out1[10]),
        .O(Sum_out1__1_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_10
       (.I0(Delay2_out1[9]),
        .I1(Delay3_out1[9]),
        .I2(Delay1_out1[9]),
        .O(Sum_out1__1_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_11
       (.I0(Delay2_out1[8]),
        .I1(Delay3_out1[8]),
        .I2(Delay1_out1[8]),
        .O(Sum_out1__1_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__1_i_12
       (.I0(Delay2_out1[7]),
        .I1(Delay3_out1[7]),
        .I2(Delay1_out1[7]),
        .O(Sum_out1__1_carry__1_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_2
       (.I0(Delay_out1[9]),
        .I1(Delay3_out1[8]),
        .I2(Delay2_out1[8]),
        .I3(Delay1_out1[8]),
        .I4(Sum_out1__1_carry__1_i_10_n_0),
        .O(Sum_out1__1_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_3
       (.I0(Delay_out1[8]),
        .I1(Delay3_out1[7]),
        .I2(Delay2_out1[7]),
        .I3(Delay1_out1[7]),
        .I4(Sum_out1__1_carry__1_i_11_n_0),
        .O(Sum_out1__1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__1_i_4
       (.I0(Delay_out1[7]),
        .I1(Delay3_out1[6]),
        .I2(Delay2_out1[6]),
        .I3(Delay1_out1[6]),
        .I4(Sum_out1__1_carry__1_i_12_n_0),
        .O(Sum_out1__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__1_i_5
       (.I0(Sum_out1__1_carry__1_i_1_n_0),
        .I1(Delay1_out1[11]),
        .I2(Delay3_out1[11]),
        .I3(Delay2_out1[11]),
        .I4(Delay_out1[11]),
        .I5(Sum_out1__1_carry__2_i_10_n_0),
        .O(Sum_out1__1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__1_i_6
       (.I0(Sum_out1__1_carry__1_i_2_n_0),
        .I1(Delay1_out1[10]),
        .I2(Delay3_out1[10]),
        .I3(Delay2_out1[10]),
        .I4(Delay_out1[10]),
        .I5(Sum_out1__1_carry__1_i_9_n_0),
        .O(Sum_out1__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__1_i_7
       (.I0(Sum_out1__1_carry__1_i_3_n_0),
        .I1(Sum_out1__1_carry__1_i_10_n_0),
        .I2(Delay_out1[9]),
        .I3(Delay1_out1[8]),
        .I4(Delay2_out1[8]),
        .I5(Delay3_out1[8]),
        .O(Sum_out1__1_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__1_i_8
       (.I0(Sum_out1__1_carry__1_i_4_n_0),
        .I1(Sum_out1__1_carry__1_i_11_n_0),
        .I2(Delay_out1[8]),
        .I3(Delay1_out1[7]),
        .I4(Delay2_out1[7]),
        .I5(Delay3_out1[7]),
        .O(Sum_out1__1_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__1_i_9
       (.I0(Delay1_out1[9]),
        .I1(Delay2_out1[9]),
        .I2(Delay3_out1[9]),
        .O(Sum_out1__1_carry__1_i_9_n_0));
  CARRY4 Sum_out1__1_carry__2
       (.CI(Sum_out1__1_carry__1_n_0),
        .CO({NLW_Sum_out1__1_carry__2_CO_UNCONNECTED[3],Sum_out1__1_carry__2_n_1,Sum_out1__1_carry__2_n_2,Sum_out1__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Sum_out1__1_carry__2_i_1_n_0,Sum_out1__1_carry__2_i_2_n_0,Sum_out1__1_carry__2_i_3_n_0}),
        .O(Output[15:12]),
        .S({Sum_out1__1_carry__2_i_4_n_0,Sum_out1__1_carry__2_i_5_n_0,Sum_out1__1_carry__2_i_6_n_0,Sum_out1__1_carry__2_i_7_n_0}));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__2_i_1
       (.I0(Delay_out1[13]),
        .I1(Delay1_out1[12]),
        .I2(Delay2_out1[12]),
        .I3(Delay3_out1[12]),
        .I4(Sum_out1__1_carry__2_i_8_n_0),
        .O(Sum_out1__1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h4D)) 
    Sum_out1__1_carry__2_i_10
       (.I0(Delay1_out1[10]),
        .I1(Delay2_out1[10]),
        .I2(Delay3_out1[10]),
        .O(Sum_out1__1_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    Sum_out1__1_carry__2_i_11
       (.I0(Delay2_out1[13]),
        .I1(Delay3_out1[13]),
        .I2(Delay1_out1[13]),
        .O(Sum_out1__1_carry__2_i_11_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_out1__1_carry__2_i_12
       (.I0(Delay1_out1[15]),
        .I1(Delay3_out1[15]),
        .I2(Delay2_out1[15]),
        .I3(Delay_out1[15]),
        .O(Sum_out1__1_carry__2_i_12_n_0));
  LUT5 #(
    .INIT(32'hBAFB20A2)) 
    Sum_out1__1_carry__2_i_2
       (.I0(Delay_out1[12]),
        .I1(Delay3_out1[11]),
        .I2(Delay2_out1[11]),
        .I3(Delay1_out1[11]),
        .I4(Sum_out1__1_carry__2_i_9_n_0),
        .O(Sum_out1__1_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF969600)) 
    Sum_out1__1_carry__2_i_3
       (.I0(Delay2_out1[11]),
        .I1(Delay3_out1[11]),
        .I2(Delay1_out1[11]),
        .I3(Sum_out1__1_carry__2_i_10_n_0),
        .I4(Delay_out1[11]),
        .O(Sum_out1__1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h1E78871E871EE187)) 
    Sum_out1__1_carry__2_i_4
       (.I0(Delay_out1[14]),
        .I1(Sum_out1__1_carry__2_i_11_n_0),
        .I2(Sum_out1__1_carry__2_i_12_n_0),
        .I3(Delay2_out1[14]),
        .I4(Delay3_out1[14]),
        .I5(Delay1_out1[14]),
        .O(Sum_out1__1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry__2_i_5
       (.I0(Sum_out1__1_carry__2_i_1_n_0),
        .I1(Delay1_out1[14]),
        .I2(Delay3_out1[14]),
        .I3(Delay2_out1[14]),
        .I4(Delay_out1[14]),
        .I5(Sum_out1__1_carry__2_i_11_n_0),
        .O(Sum_out1__1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__2_i_6
       (.I0(Sum_out1__1_carry__2_i_2_n_0),
        .I1(Sum_out1__1_carry__2_i_8_n_0),
        .I2(Delay_out1[13]),
        .I3(Delay3_out1[12]),
        .I4(Delay2_out1[12]),
        .I5(Delay1_out1[12]),
        .O(Sum_out1__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry__2_i_7
       (.I0(Sum_out1__1_carry__2_i_3_n_0),
        .I1(Sum_out1__1_carry__2_i_9_n_0),
        .I2(Delay_out1[12]),
        .I3(Delay1_out1[11]),
        .I4(Delay2_out1[11]),
        .I5(Delay3_out1[11]),
        .O(Sum_out1__1_carry__2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__2_i_8
       (.I0(Delay2_out1[13]),
        .I1(Delay3_out1[13]),
        .I2(Delay1_out1[13]),
        .O(Sum_out1__1_carry__2_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_out1__1_carry__2_i_9
       (.I0(Delay2_out1[12]),
        .I1(Delay3_out1[12]),
        .I2(Delay1_out1[12]),
        .O(Sum_out1__1_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h96FFFFFF00969696)) 
    Sum_out1__1_carry_i_1
       (.I0(Delay2_out1[2]),
        .I1(Delay3_out1[2]),
        .I2(Delay1_out1[2]),
        .I3(Delay1_out1[1]),
        .I4(Delay3_out1[1]),
        .I5(Delay_out1[2]),
        .O(Sum_out1__1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF990)) 
    Sum_out1__1_carry_i_2
       (.I0(Delay1_out1[1]),
        .I1(Delay3_out1[1]),
        .I2(Delay2_out1[1]),
        .I3(Delay_out1[1]),
        .O(Sum_out1__1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    Sum_out1__1_carry_i_3
       (.I0(Delay3_out1[1]),
        .I1(Delay1_out1[1]),
        .I2(Delay2_out1[1]),
        .I3(Delay_out1[1]),
        .O(Sum_out1__1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    Sum_out1__1_carry_i_4
       (.I0(Sum_out1__1_carry_i_1_n_0),
        .I1(Sum_out1__1_carry__0_i_12_n_0),
        .I2(Delay_out1[3]),
        .I3(Delay1_out1[2]),
        .I4(Delay2_out1[2]),
        .I5(Delay3_out1[2]),
        .O(Sum_out1__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Sum_out1__1_carry_i_5
       (.I0(Sum_out1__1_carry_i_2_n_0),
        .I1(Delay1_out1[2]),
        .I2(Delay3_out1[2]),
        .I3(Delay2_out1[2]),
        .I4(Delay_out1[2]),
        .I5(Sum_out1__1_carry_i_8_n_0),
        .O(Sum_out1__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9A59)) 
    Sum_out1__1_carry_i_6
       (.I0(Sum_out1__1_carry_i_3_n_0),
        .I1(Delay3_out1[0]),
        .I2(Delay2_out1[0]),
        .I3(Delay1_out1[0]),
        .O(Sum_out1__1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_out1__1_carry_i_7
       (.I0(Delay1_out1[0]),
        .I1(Delay3_out1[0]),
        .I2(Delay2_out1[0]),
        .I3(Delay_out1[0]),
        .O(Sum_out1__1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Sum_out1__1_carry_i_8
       (.I0(Delay3_out1[1]),
        .I1(Delay1_out1[1]),
        .O(Sum_out1__1_carry_i_8_n_0));
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
