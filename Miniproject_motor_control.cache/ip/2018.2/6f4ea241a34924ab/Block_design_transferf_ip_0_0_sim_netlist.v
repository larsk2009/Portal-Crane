// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct 21 12:23:26 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_transferf_ip_0_0_sim_netlist.v
// Design      : Block_design_transferf_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_transferf_ip_0_0,transferf_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "transferf_ip,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (IPCORE_CLK,
    IPCORE_RESETN,
    In1,
    des_x,
    In3,
    pwm_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW" *) input IPCORE_RESETN;
  input [15:0]In1;
  input [15:0]des_x;
  input [15:0]In3;
  output [15:0]pwm_out;

  wire \<const0> ;
  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]In1;
  wire [15:0]In3;
  wire [15:0]des_x;
  wire [14:0]\^pwm_out ;

  assign pwm_out[15] = \<const0> ;
  assign pwm_out[14:0] = \^pwm_out [14:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip U0
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .In1(In1),
        .In3(In3),
        .des_x(des_x[15:1]),
        .pwm_out(\^pwm_out ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip
   (pwm_out,
    In1,
    des_x,
    IPCORE_CLK,
    In3,
    IPCORE_RESETN);
  output [14:0]pwm_out;
  input [15:0]In1;
  input [14:0]des_x;
  input IPCORE_CLK;
  input [15:0]In3;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]In1;
  wire [15:0]In3;
  wire [14:0]des_x;
  wire [14:0]pwm_out;
  wire reset_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut u_transferf_ip_dut_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .In1(In1),
        .In3(In3),
        .des_x(des_x),
        .pwm_out(pwm_out),
        .reset_out(reset_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync u_transferf_ip_reset_sync_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .reset_out(reset_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut
   (pwm_out,
    In3,
    In1,
    des_x,
    IPCORE_CLK,
    reset_out);
  output [14:0]pwm_out;
  input [15:0]In3;
  input [15:0]In1;
  input [14:0]des_x;
  input IPCORE_CLK;
  input reset_out;

  wire IPCORE_CLK;
  wire [15:0]In1;
  wire [15:0]In3;
  wire [14:0]des_x;
  wire [14:0]pwm_out;
  wire reset_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem u_transferf_ip_src_Subsystem
       (.IPCORE_CLK(IPCORE_CLK),
        .In1(In1),
        .In3(In3),
        .des_x(des_x),
        .pwm_out(pwm_out),
        .reset_out(reset_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync
   (reset_out,
    IPCORE_CLK,
    IPCORE_RESETN);
  output reset_out;
  input IPCORE_CLK;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire reset_in;
  wire reset_out;
  wire reset_pipe;

  FDPE reset_out_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_pipe),
        .PRE(reset_in),
        .Q(reset_out));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller
   (\pwm_out[0] ,
    S,
    Integral_Gain_mul_temp_0,
    pwm_out_1,
    DI,
    Integral_Gain_mul_temp_1,
    Integral_Gain_mul_temp_2,
    Integral_Gain_mul_temp_3,
    Integral_Gain_mul_temp_4,
    Integral_Gain_mul_temp_5,
    \In1[4] ,
    IPCORE_CLK,
    reset_out,
    In1,
    des_x,
    Proportional_Gain_mul_temp_0,
    Proportional_Gain_mul_temp_1,
    Proportional_Gain_mul_temp_2);
  output [9:0]\pwm_out[0] ;
  output [3:0]S;
  output [3:0]Integral_Gain_mul_temp_0;
  output [15:0]pwm_out_1;
  output [2:0]DI;
  output [3:0]Integral_Gain_mul_temp_1;
  output [3:0]Integral_Gain_mul_temp_2;
  output [3:0]Integral_Gain_mul_temp_3;
  output [3:0]Integral_Gain_mul_temp_4;
  output [2:0]Integral_Gain_mul_temp_5;
  input [15:0]\In1[4] ;
  input IPCORE_CLK;
  input reset_out;
  input [15:0]In1;
  input [14:0]des_x;
  input [3:0]Proportional_Gain_mul_temp_0;
  input [3:0]Proportional_Gain_mul_temp_1;
  input [2:0]Proportional_Gain_mul_temp_2;

  wire [15:0]A;
  wire [2:0]DI;
  wire Derivative_Gain_mul_temp_n_100;
  wire Derivative_Gain_mul_temp_n_101;
  wire Derivative_Gain_mul_temp_n_102;
  wire Derivative_Gain_mul_temp_n_103;
  wire Derivative_Gain_mul_temp_n_104;
  wire Derivative_Gain_mul_temp_n_105;
  wire Derivative_Gain_mul_temp_n_74;
  wire Derivative_Gain_mul_temp_n_75;
  wire Derivative_Gain_mul_temp_n_92;
  wire Derivative_Gain_mul_temp_n_93;
  wire Derivative_Gain_mul_temp_n_94;
  wire Derivative_Gain_mul_temp_n_95;
  wire Derivative_Gain_mul_temp_n_96;
  wire Derivative_Gain_mul_temp_n_97;
  wire Derivative_Gain_mul_temp_n_98;
  wire Derivative_Gain_mul_temp_n_99;
  wire Filter_Coefficient_mul_temp_n_100;
  wire Filter_Coefficient_mul_temp_n_101;
  wire Filter_Coefficient_mul_temp_n_102;
  wire Filter_Coefficient_mul_temp_n_103;
  wire Filter_Coefficient_mul_temp_n_104;
  wire Filter_Coefficient_mul_temp_n_105;
  wire Filter_Coefficient_mul_temp_n_74;
  wire Filter_Coefficient_mul_temp_n_75;
  wire Filter_Coefficient_mul_temp_n_92;
  wire Filter_Coefficient_mul_temp_n_93;
  wire Filter_Coefficient_mul_temp_n_94;
  wire Filter_Coefficient_mul_temp_n_95;
  wire Filter_Coefficient_mul_temp_n_96;
  wire Filter_Coefficient_mul_temp_n_97;
  wire Filter_Coefficient_mul_temp_n_98;
  wire Filter_Coefficient_mul_temp_n_99;
  wire \Filter_x_reg[0]_i_2__0_n_0 ;
  wire \Filter_x_reg[0]_i_3__0_n_0 ;
  wire \Filter_x_reg[0]_i_4__0_n_0 ;
  wire \Filter_x_reg[0]_i_5__0_n_0 ;
  wire \Filter_x_reg[12]_i_2__0_n_0 ;
  wire \Filter_x_reg[12]_i_3__0_n_0 ;
  wire \Filter_x_reg[12]_i_4__0_n_0 ;
  wire \Filter_x_reg[12]_i_5__0_n_0 ;
  wire \Filter_x_reg[4]_i_2__0_n_0 ;
  wire \Filter_x_reg[4]_i_3__0_n_0 ;
  wire \Filter_x_reg[4]_i_4__0_n_0 ;
  wire \Filter_x_reg[4]_i_5__0_n_0 ;
  wire \Filter_x_reg[8]_i_2__0_n_0 ;
  wire \Filter_x_reg[8]_i_3__0_n_0 ;
  wire \Filter_x_reg[8]_i_4__0_n_0 ;
  wire \Filter_x_reg[8]_i_5__0_n_0 ;
  wire [15:0]Filter_x_reg_reg;
  wire \Filter_x_reg_reg[0]_i_1__0_n_0 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_1 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_2 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_3 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_4 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_5 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_6 ;
  wire \Filter_x_reg_reg[0]_i_1__0_n_7 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_1 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_2 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_3 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_4 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_5 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_6 ;
  wire \Filter_x_reg_reg[12]_i_1__0_n_7 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_0 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_1 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_2 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_3 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_4 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_5 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_6 ;
  wire \Filter_x_reg_reg[4]_i_1__0_n_7 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_0 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_1 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_2 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_3 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_4 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_5 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_6 ;
  wire \Filter_x_reg_reg[8]_i_1__0_n_7 ;
  wire IPCORE_CLK;
  wire [15:0]In1;
  wire [15:0]\In1[4] ;
  wire [3:0]Integral_Gain_mul_temp_0;
  wire [3:0]Integral_Gain_mul_temp_1;
  wire [3:0]Integral_Gain_mul_temp_2;
  wire [3:0]Integral_Gain_mul_temp_3;
  wire [3:0]Integral_Gain_mul_temp_4;
  wire [2:0]Integral_Gain_mul_temp_5;
  wire Integral_Gain_mul_temp_n_100;
  wire Integral_Gain_mul_temp_n_101;
  wire Integral_Gain_mul_temp_n_102;
  wire Integral_Gain_mul_temp_n_103;
  wire Integral_Gain_mul_temp_n_104;
  wire Integral_Gain_mul_temp_n_105;
  wire Integral_Gain_mul_temp_n_74;
  wire Integral_Gain_mul_temp_n_75;
  wire Integral_Gain_mul_temp_n_92;
  wire Integral_Gain_mul_temp_n_93;
  wire Integral_Gain_mul_temp_n_94;
  wire Integral_Gain_mul_temp_n_95;
  wire Integral_Gain_mul_temp_n_96;
  wire Integral_Gain_mul_temp_n_97;
  wire Integral_Gain_mul_temp_n_98;
  wire Integral_Gain_mul_temp_n_99;
  wire \Integrator_x_reg[0]_i_2_n_0 ;
  wire \Integrator_x_reg[0]_i_3_n_0 ;
  wire \Integrator_x_reg[0]_i_4_n_0 ;
  wire \Integrator_x_reg[0]_i_5_n_0 ;
  wire \Integrator_x_reg[12]_i_2_n_0 ;
  wire \Integrator_x_reg[12]_i_3_n_0 ;
  wire \Integrator_x_reg[12]_i_4_n_0 ;
  wire \Integrator_x_reg[12]_i_5_n_0 ;
  wire \Integrator_x_reg[4]_i_2_n_0 ;
  wire \Integrator_x_reg[4]_i_3_n_0 ;
  wire \Integrator_x_reg[4]_i_4_n_0 ;
  wire \Integrator_x_reg[4]_i_5_n_0 ;
  wire \Integrator_x_reg[8]_i_2_n_0 ;
  wire \Integrator_x_reg[8]_i_3_n_0 ;
  wire \Integrator_x_reg[8]_i_4_n_0 ;
  wire \Integrator_x_reg[8]_i_5_n_0 ;
  wire [15:4]Integrator_x_reg_reg;
  wire \Integrator_x_reg_reg[0]_i_1_n_0 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_1 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_2 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_3 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_4 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_5 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_6 ;
  wire \Integrator_x_reg_reg[0]_i_1_n_7 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_1 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_2 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_3 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_4 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_5 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_6 ;
  wire \Integrator_x_reg_reg[12]_i_1_n_7 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_0 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_1 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_2 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_3 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_4 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_5 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_6 ;
  wire \Integrator_x_reg_reg[4]_i_1_n_7 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_0 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_1 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_2 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_3 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_4 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_5 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_6 ;
  wire \Integrator_x_reg_reg[8]_i_1_n_7 ;
  wire \Integrator_x_reg_reg_n_0_[0] ;
  wire \Integrator_x_reg_reg_n_0_[1] ;
  wire \Integrator_x_reg_reg_n_0_[2] ;
  wire \Integrator_x_reg_reg_n_0_[3] ;
  wire [3:0]Proportional_Gain_mul_temp_0;
  wire [3:0]Proportional_Gain_mul_temp_1;
  wire [2:0]Proportional_Gain_mul_temp_2;
  wire Proportional_Gain_mul_temp_n_100;
  wire Proportional_Gain_mul_temp_n_101;
  wire Proportional_Gain_mul_temp_n_102;
  wire Proportional_Gain_mul_temp_n_103;
  wire Proportional_Gain_mul_temp_n_104;
  wire Proportional_Gain_mul_temp_n_105;
  wire Proportional_Gain_mul_temp_n_74;
  wire Proportional_Gain_mul_temp_n_75;
  wire Proportional_Gain_mul_temp_n_76;
  wire Proportional_Gain_mul_temp_n_77;
  wire Proportional_Gain_mul_temp_n_78;
  wire Proportional_Gain_mul_temp_n_79;
  wire Proportional_Gain_mul_temp_n_80;
  wire Proportional_Gain_mul_temp_n_81;
  wire Proportional_Gain_mul_temp_n_82;
  wire Proportional_Gain_mul_temp_n_83;
  wire Proportional_Gain_mul_temp_n_84;
  wire Proportional_Gain_mul_temp_n_85;
  wire Proportional_Gain_mul_temp_n_86;
  wire Proportional_Gain_mul_temp_n_87;
  wire Proportional_Gain_mul_temp_n_88;
  wire Proportional_Gain_mul_temp_n_89;
  wire Proportional_Gain_mul_temp_n_90;
  wire Proportional_Gain_mul_temp_n_91;
  wire Proportional_Gain_mul_temp_n_92;
  wire Proportional_Gain_mul_temp_n_93;
  wire Proportional_Gain_mul_temp_n_94;
  wire Proportional_Gain_mul_temp_n_95;
  wire Proportional_Gain_mul_temp_n_96;
  wire Proportional_Gain_mul_temp_n_97;
  wire Proportional_Gain_mul_temp_n_98;
  wire Proportional_Gain_mul_temp_n_99;
  wire [3:0]S;
  wire Sum2_sub_temp_carry__0_i_10_n_0;
  wire Sum2_sub_temp_carry__0_i_11_n_0;
  wire Sum2_sub_temp_carry__0_i_12_n_0;
  wire Sum2_sub_temp_carry__0_i_13_n_0;
  wire Sum2_sub_temp_carry__0_i_9_n_0;
  wire Sum2_sub_temp_carry_i_10_n_0;
  wire Sum2_sub_temp_carry_i_11_n_0;
  wire Sum2_sub_temp_carry_i_8_n_0;
  wire Sum2_sub_temp_carry_i_9_n_0;
  wire [16:1]SumD_sub_cast;
  wire [17:2]SumD_sub_temp;
  wire SumD_sub_temp_carry__0_i_1_n_0;
  wire SumD_sub_temp_carry__0_i_2_n_0;
  wire SumD_sub_temp_carry__0_i_3_n_0;
  wire SumD_sub_temp_carry__0_i_4_n_0;
  wire SumD_sub_temp_carry__0_n_0;
  wire SumD_sub_temp_carry__0_n_1;
  wire SumD_sub_temp_carry__0_n_2;
  wire SumD_sub_temp_carry__0_n_3;
  wire SumD_sub_temp_carry__1_i_1_n_0;
  wire SumD_sub_temp_carry__1_i_2_n_0;
  wire SumD_sub_temp_carry__1_i_3_n_0;
  wire SumD_sub_temp_carry__1_i_4_n_0;
  wire SumD_sub_temp_carry__1_n_0;
  wire SumD_sub_temp_carry__1_n_1;
  wire SumD_sub_temp_carry__1_n_2;
  wire SumD_sub_temp_carry__1_n_3;
  wire SumD_sub_temp_carry__2_i_1_n_0;
  wire SumD_sub_temp_carry__2_i_2_n_0;
  wire SumD_sub_temp_carry__2_i_3_n_0;
  wire SumD_sub_temp_carry__2_i_4_n_0;
  wire SumD_sub_temp_carry__2_n_0;
  wire SumD_sub_temp_carry__2_n_1;
  wire SumD_sub_temp_carry__2_n_2;
  wire SumD_sub_temp_carry__2_n_3;
  wire SumD_sub_temp_carry_i_1_n_0;
  wire SumD_sub_temp_carry_i_2_n_0;
  wire SumD_sub_temp_carry_i_3_n_0;
  wire SumD_sub_temp_carry_i_4_n_0;
  wire SumD_sub_temp_carry_i_5_n_0;
  wire SumD_sub_temp_carry_n_0;
  wire SumD_sub_temp_carry_n_1;
  wire SumD_sub_temp_carry_n_2;
  wire SumD_sub_temp_carry_n_3;
  wire [20:5]Sum_add_cast_2;
  wire [24:19]Sum_add_temp_1;
  wire Sum_add_temp_1__2_carry__0_i_1_n_0;
  wire Sum_add_temp_1__2_carry__0_i_2_n_0;
  wire Sum_add_temp_1__2_carry__0_i_3_n_0;
  wire Sum_add_temp_1__2_carry__0_i_4_n_0;
  wire Sum_add_temp_1__2_carry__0_i_5_n_0;
  wire Sum_add_temp_1__2_carry__0_i_6_n_0;
  wire Sum_add_temp_1__2_carry__0_n_0;
  wire Sum_add_temp_1__2_carry__0_n_1;
  wire Sum_add_temp_1__2_carry__0_n_2;
  wire Sum_add_temp_1__2_carry__0_n_3;
  wire Sum_add_temp_1__2_carry__1_i_1_n_0;
  wire Sum_add_temp_1__2_carry__1_i_2_n_0;
  wire Sum_add_temp_1__2_carry__1_i_3_n_0;
  wire Sum_add_temp_1__2_carry__1_i_4_n_0;
  wire Sum_add_temp_1__2_carry__1_i_5_n_0;
  wire Sum_add_temp_1__2_carry__1_i_6_n_0;
  wire Sum_add_temp_1__2_carry__1_i_7_n_0;
  wire Sum_add_temp_1__2_carry__1_i_8_n_0;
  wire Sum_add_temp_1__2_carry__1_n_0;
  wire Sum_add_temp_1__2_carry__1_n_1;
  wire Sum_add_temp_1__2_carry__1_n_2;
  wire Sum_add_temp_1__2_carry__1_n_3;
  wire Sum_add_temp_1__2_carry__2_i_1_n_0;
  wire Sum_add_temp_1__2_carry__2_i_2_n_0;
  wire Sum_add_temp_1__2_carry__2_i_3_n_0;
  wire Sum_add_temp_1__2_carry__2_i_4_n_0;
  wire Sum_add_temp_1__2_carry__2_i_5_n_0;
  wire Sum_add_temp_1__2_carry__2_i_6_n_0;
  wire Sum_add_temp_1__2_carry__2_i_7_n_0;
  wire Sum_add_temp_1__2_carry__2_i_8_n_0;
  wire Sum_add_temp_1__2_carry__2_n_0;
  wire Sum_add_temp_1__2_carry__2_n_1;
  wire Sum_add_temp_1__2_carry__2_n_2;
  wire Sum_add_temp_1__2_carry__2_n_3;
  wire Sum_add_temp_1__2_carry__3_i_1_n_0;
  wire Sum_add_temp_1__2_carry__3_i_2_n_0;
  wire Sum_add_temp_1__2_carry__3_i_3_n_0;
  wire Sum_add_temp_1__2_carry__3_i_4_n_0;
  wire Sum_add_temp_1__2_carry__3_i_5_n_0;
  wire Sum_add_temp_1__2_carry__3_i_6_n_0;
  wire Sum_add_temp_1__2_carry__3_n_0;
  wire Sum_add_temp_1__2_carry__3_n_1;
  wire Sum_add_temp_1__2_carry__3_n_2;
  wire Sum_add_temp_1__2_carry__3_n_3;
  wire Sum_add_temp_1__2_carry__4_i_1_n_0;
  wire Sum_add_temp_1__2_carry_i_1_n_0;
  wire Sum_add_temp_1__2_carry_i_2_n_0;
  wire Sum_add_temp_1__2_carry_i_3_n_0;
  wire Sum_add_temp_1__2_carry_n_0;
  wire Sum_add_temp_1__2_carry_n_1;
  wire Sum_add_temp_1__2_carry_n_2;
  wire Sum_add_temp_1__2_carry_n_3;
  wire [14:0]des_x;
  wire [30:30]\^gain_mul_temp_1 ;
  wire gain_mul_temp_1_n_100;
  wire gain_mul_temp_1_n_101;
  wire gain_mul_temp_1_n_102;
  wire gain_mul_temp_1_n_103;
  wire gain_mul_temp_1_n_104;
  wire gain_mul_temp_1_n_105;
  wire gain_mul_temp_1_n_76;
  wire gain_mul_temp_1_n_77;
  wire gain_mul_temp_1_n_78;
  wire gain_mul_temp_1_n_79;
  wire gain_mul_temp_1_n_80;
  wire gain_mul_temp_1_n_81;
  wire gain_mul_temp_1_n_82;
  wire gain_mul_temp_1_n_83;
  wire gain_mul_temp_1_n_84;
  wire gain_mul_temp_1_n_85;
  wire gain_mul_temp_1_n_86;
  wire gain_mul_temp_1_n_87;
  wire gain_mul_temp_1_n_88;
  wire gain_mul_temp_1_n_89;
  wire gain_mul_temp_1_n_90;
  wire gain_mul_temp_1_n_91;
  wire gain_mul_temp_1_n_92;
  wire gain_mul_temp_1_n_93;
  wire gain_mul_temp_1_n_94;
  wire gain_mul_temp_1_n_95;
  wire gain_mul_temp_1_n_96;
  wire gain_mul_temp_1_n_97;
  wire gain_mul_temp_1_n_98;
  wire gain_mul_temp_1_n_99;
  wire gain_mul_temp_n_100;
  wire gain_mul_temp_n_101;
  wire gain_mul_temp_n_102;
  wire gain_mul_temp_n_103;
  wire gain_mul_temp_n_104;
  wire gain_mul_temp_n_105;
  wire gain_mul_temp_n_76;
  wire gain_mul_temp_n_77;
  wire gain_mul_temp_n_78;
  wire gain_mul_temp_n_79;
  wire gain_mul_temp_n_80;
  wire gain_mul_temp_n_81;
  wire gain_mul_temp_n_82;
  wire gain_mul_temp_n_83;
  wire gain_mul_temp_n_84;
  wire gain_mul_temp_n_85;
  wire gain_mul_temp_n_86;
  wire gain_mul_temp_n_87;
  wire gain_mul_temp_n_88;
  wire gain_mul_temp_n_89;
  wire gain_mul_temp_n_90;
  wire gain_mul_temp_n_91;
  wire gain_mul_temp_n_92;
  wire gain_mul_temp_n_93;
  wire gain_mul_temp_n_94;
  wire gain_mul_temp_n_95;
  wire gain_mul_temp_n_96;
  wire gain_mul_temp_n_97;
  wire gain_mul_temp_n_98;
  wire gain_mul_temp_n_99;
  wire in0;
  wire [5:5]p_0_in;
  wire [9:0]\pwm_out[0] ;
  wire \pwm_out[10]_INST_0_i_1_n_0 ;
  wire \pwm_out[10]_INST_0_i_1_n_1 ;
  wire \pwm_out[10]_INST_0_i_1_n_2 ;
  wire \pwm_out[10]_INST_0_i_1_n_3 ;
  wire \pwm_out[14]_INST_0_i_2_n_0 ;
  wire \pwm_out[14]_INST_0_i_2_n_1 ;
  wire \pwm_out[14]_INST_0_i_2_n_2 ;
  wire \pwm_out[14]_INST_0_i_2_n_3 ;
  wire \pwm_out[2]_INST_0_i_1_n_0 ;
  wire \pwm_out[2]_INST_0_i_1_n_1 ;
  wire \pwm_out[2]_INST_0_i_1_n_2 ;
  wire \pwm_out[2]_INST_0_i_1_n_3 ;
  wire \pwm_out[6]_INST_0_i_1_n_0 ;
  wire \pwm_out[6]_INST_0_i_1_n_1 ;
  wire \pwm_out[6]_INST_0_i_1_n_2 ;
  wire \pwm_out[6]_INST_0_i_1_n_3 ;
  wire [15:0]pwm_out_1;
  wire reset_out;
  wire NLW_Derivative_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Derivative_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Derivative_Gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Derivative_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Derivative_Gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Derivative_Gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Derivative_Gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Derivative_Gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Derivative_Gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Derivative_Gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Derivative_Gain_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_Filter_x_reg_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire NLW_Integral_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Integral_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Integral_Gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Integral_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Integral_Gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Integral_Gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Integral_Gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Integral_Gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Integral_Gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Integral_Gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Integral_Gain_mul_temp_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_Integrator_x_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Proportional_Gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED;
  wire [0:0]NLW_SumD_sub_temp_carry_O_UNCONNECTED;
  wire [3:0]NLW_SumD_sub_temp_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_SumD_sub_temp_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_Sum_add_temp_1__2_carry_O_UNCONNECTED;
  wire [0:0]NLW_Sum_add_temp_1__2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Sum_add_temp_1__2_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_Sum_add_temp_1__2_carry__4_O_UNCONNECTED;
  wire NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_gain_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_gain_mul_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_gain_mul_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_gain_mul_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_gain_mul_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_gain_mul_temp_1_P_UNCONNECTED;
  wire [47:0]NLW_gain_mul_temp_1_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_pwm_out[14]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pwm_out[14]_INST_0_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_pwm_out[2]_INST_0_i_1_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Derivative_Gain_mul_temp
       (.A({\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Derivative_Gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Derivative_Gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Derivative_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Derivative_Gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Derivative_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Derivative_Gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Derivative_Gain_mul_temp_P_UNCONNECTED[47:32],Derivative_Gain_mul_temp_n_74,Derivative_Gain_mul_temp_n_75,SumD_sub_cast,Derivative_Gain_mul_temp_n_92,Derivative_Gain_mul_temp_n_93,Derivative_Gain_mul_temp_n_94,Derivative_Gain_mul_temp_n_95,Derivative_Gain_mul_temp_n_96,Derivative_Gain_mul_temp_n_97,Derivative_Gain_mul_temp_n_98,Derivative_Gain_mul_temp_n_99,Derivative_Gain_mul_temp_n_100,Derivative_Gain_mul_temp_n_101,Derivative_Gain_mul_temp_n_102,Derivative_Gain_mul_temp_n_103,Derivative_Gain_mul_temp_n_104,Derivative_Gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Derivative_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Derivative_Gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Derivative_Gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Derivative_Gain_mul_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Filter_Coefficient_mul_temp
       (.A({SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp[17],SumD_sub_temp}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED[47:32],Filter_Coefficient_mul_temp_n_74,Filter_Coefficient_mul_temp_n_75,Sum_add_cast_2,Filter_Coefficient_mul_temp_n_92,Filter_Coefficient_mul_temp_n_93,Filter_Coefficient_mul_temp_n_94,Filter_Coefficient_mul_temp_n_95,Filter_Coefficient_mul_temp_n_96,Filter_Coefficient_mul_temp_n_97,Filter_Coefficient_mul_temp_n_98,Filter_Coefficient_mul_temp_n_99,Filter_Coefficient_mul_temp_n_100,Filter_Coefficient_mul_temp_n_101,Filter_Coefficient_mul_temp_n_102,Filter_Coefficient_mul_temp_n_103,Filter_Coefficient_mul_temp_n_104,Filter_Coefficient_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_2__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[3]),
        .O(\Filter_x_reg[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_3__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[2]),
        .O(\Filter_x_reg[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_4__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[1]),
        .O(\Filter_x_reg[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_5__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[0]),
        .O(\Filter_x_reg[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_2__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[15]),
        .O(\Filter_x_reg[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_3__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[14]),
        .O(\Filter_x_reg[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_4__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[13]),
        .O(\Filter_x_reg[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_5__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[12]),
        .O(\Filter_x_reg[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_2__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[7]),
        .O(\Filter_x_reg[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_3__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[6]),
        .O(\Filter_x_reg[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_4__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[5]),
        .O(\Filter_x_reg[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_5__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[4]),
        .O(\Filter_x_reg[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_2__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[11]),
        .O(\Filter_x_reg[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_3__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[10]),
        .O(\Filter_x_reg[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_4__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[9]),
        .O(\Filter_x_reg[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_5__0 
       (.I0(\^gain_mul_temp_1 ),
        .I1(Filter_x_reg_reg[8]),
        .O(\Filter_x_reg[8]_i_5__0_n_0 ));
  FDCE \Filter_x_reg_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1__0_n_7 ),
        .Q(Filter_x_reg_reg[0]));
  CARRY4 \Filter_x_reg_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\Filter_x_reg_reg[0]_i_1__0_n_0 ,\Filter_x_reg_reg[0]_i_1__0_n_1 ,\Filter_x_reg_reg[0]_i_1__0_n_2 ,\Filter_x_reg_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 }),
        .O({\Filter_x_reg_reg[0]_i_1__0_n_4 ,\Filter_x_reg_reg[0]_i_1__0_n_5 ,\Filter_x_reg_reg[0]_i_1__0_n_6 ,\Filter_x_reg_reg[0]_i_1__0_n_7 }),
        .S({\Filter_x_reg[0]_i_2__0_n_0 ,\Filter_x_reg[0]_i_3__0_n_0 ,\Filter_x_reg[0]_i_4__0_n_0 ,\Filter_x_reg[0]_i_5__0_n_0 }));
  FDCE \Filter_x_reg_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1__0_n_5 ),
        .Q(Filter_x_reg_reg[10]));
  FDCE \Filter_x_reg_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1__0_n_4 ),
        .Q(Filter_x_reg_reg[11]));
  FDCE \Filter_x_reg_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1__0_n_7 ),
        .Q(Filter_x_reg_reg[12]));
  CARRY4 \Filter_x_reg_reg[12]_i_1__0 
       (.CI(\Filter_x_reg_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_Filter_x_reg_reg[12]_i_1__0_CO_UNCONNECTED [3],\Filter_x_reg_reg[12]_i_1__0_n_1 ,\Filter_x_reg_reg[12]_i_1__0_n_2 ,\Filter_x_reg_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 }),
        .O({\Filter_x_reg_reg[12]_i_1__0_n_4 ,\Filter_x_reg_reg[12]_i_1__0_n_5 ,\Filter_x_reg_reg[12]_i_1__0_n_6 ,\Filter_x_reg_reg[12]_i_1__0_n_7 }),
        .S({\Filter_x_reg[12]_i_2__0_n_0 ,\Filter_x_reg[12]_i_3__0_n_0 ,\Filter_x_reg[12]_i_4__0_n_0 ,\Filter_x_reg[12]_i_5__0_n_0 }));
  FDCE \Filter_x_reg_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1__0_n_6 ),
        .Q(Filter_x_reg_reg[13]));
  FDCE \Filter_x_reg_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1__0_n_5 ),
        .Q(Filter_x_reg_reg[14]));
  FDCE \Filter_x_reg_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1__0_n_4 ),
        .Q(Filter_x_reg_reg[15]));
  FDCE \Filter_x_reg_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1__0_n_6 ),
        .Q(Filter_x_reg_reg[1]));
  FDCE \Filter_x_reg_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1__0_n_5 ),
        .Q(Filter_x_reg_reg[2]));
  FDCE \Filter_x_reg_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1__0_n_4 ),
        .Q(Filter_x_reg_reg[3]));
  FDCE \Filter_x_reg_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1__0_n_7 ),
        .Q(Filter_x_reg_reg[4]));
  CARRY4 \Filter_x_reg_reg[4]_i_1__0 
       (.CI(\Filter_x_reg_reg[0]_i_1__0_n_0 ),
        .CO({\Filter_x_reg_reg[4]_i_1__0_n_0 ,\Filter_x_reg_reg[4]_i_1__0_n_1 ,\Filter_x_reg_reg[4]_i_1__0_n_2 ,\Filter_x_reg_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 }),
        .O({\Filter_x_reg_reg[4]_i_1__0_n_4 ,\Filter_x_reg_reg[4]_i_1__0_n_5 ,\Filter_x_reg_reg[4]_i_1__0_n_6 ,\Filter_x_reg_reg[4]_i_1__0_n_7 }),
        .S({\Filter_x_reg[4]_i_2__0_n_0 ,\Filter_x_reg[4]_i_3__0_n_0 ,\Filter_x_reg[4]_i_4__0_n_0 ,\Filter_x_reg[4]_i_5__0_n_0 }));
  FDCE \Filter_x_reg_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1__0_n_6 ),
        .Q(Filter_x_reg_reg[5]));
  FDCE \Filter_x_reg_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1__0_n_5 ),
        .Q(Filter_x_reg_reg[6]));
  FDCE \Filter_x_reg_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1__0_n_4 ),
        .Q(Filter_x_reg_reg[7]));
  FDCE \Filter_x_reg_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1__0_n_7 ),
        .Q(Filter_x_reg_reg[8]));
  CARRY4 \Filter_x_reg_reg[8]_i_1__0 
       (.CI(\Filter_x_reg_reg[4]_i_1__0_n_0 ),
        .CO({\Filter_x_reg_reg[8]_i_1__0_n_0 ,\Filter_x_reg_reg[8]_i_1__0_n_1 ,\Filter_x_reg_reg[8]_i_1__0_n_2 ,\Filter_x_reg_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 ,\^gain_mul_temp_1 }),
        .O({\Filter_x_reg_reg[8]_i_1__0_n_4 ,\Filter_x_reg_reg[8]_i_1__0_n_5 ,\Filter_x_reg_reg[8]_i_1__0_n_6 ,\Filter_x_reg_reg[8]_i_1__0_n_7 }),
        .S({\Filter_x_reg[8]_i_2__0_n_0 ,\Filter_x_reg[8]_i_3__0_n_0 ,\Filter_x_reg[8]_i_4__0_n_0 ,\Filter_x_reg[8]_i_5__0_n_0 }));
  FDCE \Filter_x_reg_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1__0_n_6 ),
        .Q(Filter_x_reg_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Integral_Gain_mul_temp
       (.A({\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Integral_Gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Integral_Gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Integral_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Integral_Gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Integral_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Integral_Gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Integral_Gain_mul_temp_P_UNCONNECTED[47:32],Integral_Gain_mul_temp_n_74,Integral_Gain_mul_temp_n_75,A,Integral_Gain_mul_temp_n_92,Integral_Gain_mul_temp_n_93,Integral_Gain_mul_temp_n_94,Integral_Gain_mul_temp_n_95,Integral_Gain_mul_temp_n_96,Integral_Gain_mul_temp_n_97,Integral_Gain_mul_temp_n_98,Integral_Gain_mul_temp_n_99,Integral_Gain_mul_temp_n_100,Integral_Gain_mul_temp_n_101,Integral_Gain_mul_temp_n_102,Integral_Gain_mul_temp_n_103,Integral_Gain_mul_temp_n_104,Integral_Gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Integral_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Integral_Gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Integral_Gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Integral_Gain_mul_temp_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[0]_i_2 
       (.I0(in0),
        .I1(\Integrator_x_reg_reg_n_0_[3] ),
        .O(\Integrator_x_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[0]_i_3 
       (.I0(in0),
        .I1(\Integrator_x_reg_reg_n_0_[2] ),
        .O(\Integrator_x_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[0]_i_4 
       (.I0(in0),
        .I1(\Integrator_x_reg_reg_n_0_[1] ),
        .O(\Integrator_x_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[0]_i_5 
       (.I0(in0),
        .I1(\Integrator_x_reg_reg_n_0_[0] ),
        .O(\Integrator_x_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[12]_i_2 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[15]),
        .O(\Integrator_x_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[12]_i_3 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[14]),
        .O(\Integrator_x_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[12]_i_4 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[13]),
        .O(\Integrator_x_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[12]_i_5 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[12]),
        .O(\Integrator_x_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[4]_i_2 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[7]),
        .O(\Integrator_x_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[4]_i_3 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[6]),
        .O(\Integrator_x_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[4]_i_4 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[5]),
        .O(\Integrator_x_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[4]_i_5 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[4]),
        .O(\Integrator_x_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[8]_i_2 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[11]),
        .O(\Integrator_x_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[8]_i_3 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[10]),
        .O(\Integrator_x_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[8]_i_4 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[9]),
        .O(\Integrator_x_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Integrator_x_reg[8]_i_5 
       (.I0(in0),
        .I1(Integrator_x_reg_reg[8]),
        .O(\Integrator_x_reg[8]_i_5_n_0 ));
  FDCE \Integrator_x_reg_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[0]_i_1_n_7 ),
        .Q(\Integrator_x_reg_reg_n_0_[0] ));
  CARRY4 \Integrator_x_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\Integrator_x_reg_reg[0]_i_1_n_0 ,\Integrator_x_reg_reg[0]_i_1_n_1 ,\Integrator_x_reg_reg[0]_i_1_n_2 ,\Integrator_x_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in0,in0,in0,in0}),
        .O({\Integrator_x_reg_reg[0]_i_1_n_4 ,\Integrator_x_reg_reg[0]_i_1_n_5 ,\Integrator_x_reg_reg[0]_i_1_n_6 ,\Integrator_x_reg_reg[0]_i_1_n_7 }),
        .S({\Integrator_x_reg[0]_i_2_n_0 ,\Integrator_x_reg[0]_i_3_n_0 ,\Integrator_x_reg[0]_i_4_n_0 ,\Integrator_x_reg[0]_i_5_n_0 }));
  FDCE \Integrator_x_reg_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[8]_i_1_n_5 ),
        .Q(Integrator_x_reg_reg[10]));
  FDCE \Integrator_x_reg_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[8]_i_1_n_4 ),
        .Q(Integrator_x_reg_reg[11]));
  FDCE \Integrator_x_reg_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[12]_i_1_n_7 ),
        .Q(Integrator_x_reg_reg[12]));
  CARRY4 \Integrator_x_reg_reg[12]_i_1 
       (.CI(\Integrator_x_reg_reg[8]_i_1_n_0 ),
        .CO({\NLW_Integrator_x_reg_reg[12]_i_1_CO_UNCONNECTED [3],\Integrator_x_reg_reg[12]_i_1_n_1 ,\Integrator_x_reg_reg[12]_i_1_n_2 ,\Integrator_x_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in0,in0,in0}),
        .O({\Integrator_x_reg_reg[12]_i_1_n_4 ,\Integrator_x_reg_reg[12]_i_1_n_5 ,\Integrator_x_reg_reg[12]_i_1_n_6 ,\Integrator_x_reg_reg[12]_i_1_n_7 }),
        .S({\Integrator_x_reg[12]_i_2_n_0 ,\Integrator_x_reg[12]_i_3_n_0 ,\Integrator_x_reg[12]_i_4_n_0 ,\Integrator_x_reg[12]_i_5_n_0 }));
  FDCE \Integrator_x_reg_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[12]_i_1_n_6 ),
        .Q(Integrator_x_reg_reg[13]));
  FDCE \Integrator_x_reg_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[12]_i_1_n_5 ),
        .Q(Integrator_x_reg_reg[14]));
  FDCE \Integrator_x_reg_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[12]_i_1_n_4 ),
        .Q(Integrator_x_reg_reg[15]));
  FDCE \Integrator_x_reg_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[0]_i_1_n_6 ),
        .Q(\Integrator_x_reg_reg_n_0_[1] ));
  FDCE \Integrator_x_reg_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[0]_i_1_n_5 ),
        .Q(\Integrator_x_reg_reg_n_0_[2] ));
  FDCE \Integrator_x_reg_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[0]_i_1_n_4 ),
        .Q(\Integrator_x_reg_reg_n_0_[3] ));
  FDCE \Integrator_x_reg_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[4]_i_1_n_7 ),
        .Q(Integrator_x_reg_reg[4]));
  CARRY4 \Integrator_x_reg_reg[4]_i_1 
       (.CI(\Integrator_x_reg_reg[0]_i_1_n_0 ),
        .CO({\Integrator_x_reg_reg[4]_i_1_n_0 ,\Integrator_x_reg_reg[4]_i_1_n_1 ,\Integrator_x_reg_reg[4]_i_1_n_2 ,\Integrator_x_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in0,in0,in0,in0}),
        .O({\Integrator_x_reg_reg[4]_i_1_n_4 ,\Integrator_x_reg_reg[4]_i_1_n_5 ,\Integrator_x_reg_reg[4]_i_1_n_6 ,\Integrator_x_reg_reg[4]_i_1_n_7 }),
        .S({\Integrator_x_reg[4]_i_2_n_0 ,\Integrator_x_reg[4]_i_3_n_0 ,\Integrator_x_reg[4]_i_4_n_0 ,\Integrator_x_reg[4]_i_5_n_0 }));
  FDCE \Integrator_x_reg_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[4]_i_1_n_6 ),
        .Q(Integrator_x_reg_reg[5]));
  FDCE \Integrator_x_reg_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[4]_i_1_n_5 ),
        .Q(Integrator_x_reg_reg[6]));
  FDCE \Integrator_x_reg_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[4]_i_1_n_4 ),
        .Q(Integrator_x_reg_reg[7]));
  FDCE \Integrator_x_reg_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[8]_i_1_n_7 ),
        .Q(Integrator_x_reg_reg[8]));
  CARRY4 \Integrator_x_reg_reg[8]_i_1 
       (.CI(\Integrator_x_reg_reg[4]_i_1_n_0 ),
        .CO({\Integrator_x_reg_reg[8]_i_1_n_0 ,\Integrator_x_reg_reg[8]_i_1_n_1 ,\Integrator_x_reg_reg[8]_i_1_n_2 ,\Integrator_x_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({in0,in0,in0,in0}),
        .O({\Integrator_x_reg_reg[8]_i_1_n_4 ,\Integrator_x_reg_reg[8]_i_1_n_5 ,\Integrator_x_reg_reg[8]_i_1_n_6 ,\Integrator_x_reg_reg[8]_i_1_n_7 }),
        .S({\Integrator_x_reg[8]_i_2_n_0 ,\Integrator_x_reg[8]_i_3_n_0 ,\Integrator_x_reg[8]_i_4_n_0 ,\Integrator_x_reg[8]_i_5_n_0 }));
  FDCE \Integrator_x_reg_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Integrator_x_reg_reg[8]_i_1_n_6 ),
        .Q(Integrator_x_reg_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Proportional_Gain_mul_temp
       (.A({\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] [15],\In1[4] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Proportional_Gain_mul_temp_P_UNCONNECTED[47:32],Proportional_Gain_mul_temp_n_74,Proportional_Gain_mul_temp_n_75,Proportional_Gain_mul_temp_n_76,Proportional_Gain_mul_temp_n_77,Proportional_Gain_mul_temp_n_78,Proportional_Gain_mul_temp_n_79,Proportional_Gain_mul_temp_n_80,Proportional_Gain_mul_temp_n_81,Proportional_Gain_mul_temp_n_82,Proportional_Gain_mul_temp_n_83,Proportional_Gain_mul_temp_n_84,Proportional_Gain_mul_temp_n_85,Proportional_Gain_mul_temp_n_86,Proportional_Gain_mul_temp_n_87,Proportional_Gain_mul_temp_n_88,Proportional_Gain_mul_temp_n_89,Proportional_Gain_mul_temp_n_90,Proportional_Gain_mul_temp_n_91,Proportional_Gain_mul_temp_n_92,Proportional_Gain_mul_temp_n_93,Proportional_Gain_mul_temp_n_94,Proportional_Gain_mul_temp_n_95,Proportional_Gain_mul_temp_n_96,Proportional_Gain_mul_temp_n_97,Proportional_Gain_mul_temp_n_98,Proportional_Gain_mul_temp_n_99,Proportional_Gain_mul_temp_n_100,Proportional_Gain_mul_temp_n_101,Proportional_Gain_mul_temp_n_102,Proportional_Gain_mul_temp_n_103,Proportional_Gain_mul_temp_n_104,Proportional_Gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hEF00)) 
    Sum2_sub_temp_carry__0_i_1
       (.I0(Sum2_sub_temp_carry_i_9_n_0),
        .I1(Sum2_sub_temp_carry_i_11_n_0),
        .I2(In1[6]),
        .I3(des_x[6]),
        .O(Integral_Gain_mul_temp_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    Sum2_sub_temp_carry__0_i_10
       (.I0(In1[8]),
        .I1(In1[7]),
        .I2(In1[10]),
        .I3(In1[9]),
        .O(Sum2_sub_temp_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Sum2_sub_temp_carry__0_i_11
       (.I0(In1[14]),
        .I1(In1[15]),
        .O(Sum2_sub_temp_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000100FF)) 
    Sum2_sub_temp_carry__0_i_12
       (.I0(In1[13]),
        .I1(In1[12]),
        .I2(In1[11]),
        .I3(In1[15]),
        .I4(In1[14]),
        .O(Sum2_sub_temp_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF570303)) 
    Sum2_sub_temp_carry__0_i_13
       (.I0(In1[6]),
        .I1(In1[14]),
        .I2(In1[15]),
        .I3(Sum2_sub_temp_carry__0_i_10_n_0),
        .I4(Sum2_sub_temp_carry__0_i_9_n_0),
        .O(Sum2_sub_temp_carry__0_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFF5FDF5)) 
    Sum2_sub_temp_carry__0_i_14
       (.I0(In1[4]),
        .I1(In1[5]),
        .I2(Sum2_sub_temp_carry_i_9_n_0),
        .I3(Sum2_sub_temp_carry_i_11_n_0),
        .I4(In1[6]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h4000444440404444)) 
    Sum2_sub_temp_carry__0_i_2
       (.I0(In1[5]),
        .I1(des_x[5]),
        .I2(Sum2_sub_temp_carry__0_i_9_n_0),
        .I3(Sum2_sub_temp_carry__0_i_10_n_0),
        .I4(Sum2_sub_temp_carry__0_i_11_n_0),
        .I5(In1[6]),
        .O(Integral_Gain_mul_temp_2[2]));
  LUT6 #(
    .INIT(64'hFCF8FFFF00000000)) 
    Sum2_sub_temp_carry__0_i_3
       (.I0(In1[6]),
        .I1(Sum2_sub_temp_carry_i_11_n_0),
        .I2(Sum2_sub_temp_carry_i_9_n_0),
        .I3(In1[5]),
        .I4(In1[4]),
        .I5(des_x[4]),
        .O(Integral_Gain_mul_temp_2[1]));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry__0_i_4
       (.I0(In1[3]),
        .I1(des_x[3]),
        .I2(Sum2_sub_temp_carry_i_8_n_0),
        .O(Integral_Gain_mul_temp_2[0]));
  LUT4 #(
    .INIT(16'h59A6)) 
    Sum2_sub_temp_carry__0_i_5
       (.I0(Integral_Gain_mul_temp_2[3]),
        .I1(Sum2_sub_temp_carry__0_i_12_n_0),
        .I2(In1[7]),
        .I3(des_x[7]),
        .O(Integral_Gain_mul_temp_1[3]));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    Sum2_sub_temp_carry__0_i_6
       (.I0(Integral_Gain_mul_temp_2[2]),
        .I1(In1[6]),
        .I2(Sum2_sub_temp_carry_i_11_n_0),
        .I3(Sum2_sub_temp_carry_i_9_n_0),
        .I4(des_x[6]),
        .O(Integral_Gain_mul_temp_1[2]));
  LUT4 #(
    .INIT(16'h59A6)) 
    Sum2_sub_temp_carry__0_i_7
       (.I0(Integral_Gain_mul_temp_2[1]),
        .I1(Sum2_sub_temp_carry__0_i_13_n_0),
        .I2(In1[5]),
        .I3(des_x[5]),
        .O(Integral_Gain_mul_temp_1[1]));
  LUT5 #(
    .INIT(32'h08F7F708)) 
    Sum2_sub_temp_carry__0_i_8
       (.I0(Sum2_sub_temp_carry_i_8_n_0),
        .I1(des_x[3]),
        .I2(In1[3]),
        .I3(p_0_in),
        .I4(des_x[4]),
        .O(Integral_Gain_mul_temp_1[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    Sum2_sub_temp_carry__0_i_9
       (.I0(In1[11]),
        .I1(In1[12]),
        .I2(In1[13]),
        .I3(In1[15]),
        .O(Sum2_sub_temp_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry__1_i_1
       (.I0(In1[10]),
        .I1(des_x[10]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .O(Integral_Gain_mul_temp_4[3]));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry__1_i_2
       (.I0(In1[9]),
        .I1(des_x[9]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .O(Integral_Gain_mul_temp_4[2]));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry__1_i_3
       (.I0(In1[8]),
        .I1(des_x[8]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .O(Integral_Gain_mul_temp_4[1]));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry__1_i_4
       (.I0(In1[7]),
        .I1(des_x[7]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .O(Integral_Gain_mul_temp_4[0]));
  LUT6 #(
    .INIT(64'h08F70808F708F7F7)) 
    Sum2_sub_temp_carry__1_i_5
       (.I0(Sum2_sub_temp_carry__0_i_12_n_0),
        .I1(des_x[10]),
        .I2(In1[10]),
        .I3(Sum2_sub_temp_carry__0_i_11_n_0),
        .I4(In1[11]),
        .I5(des_x[11]),
        .O(Integral_Gain_mul_temp_3[3]));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    Sum2_sub_temp_carry__1_i_6
       (.I0(des_x[9]),
        .I1(In1[9]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .I3(In1[10]),
        .I4(des_x[10]),
        .O(Integral_Gain_mul_temp_3[2]));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    Sum2_sub_temp_carry__1_i_7
       (.I0(des_x[8]),
        .I1(In1[8]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .I3(In1[9]),
        .I4(des_x[9]),
        .O(Integral_Gain_mul_temp_3[1]));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    Sum2_sub_temp_carry__1_i_8
       (.I0(des_x[7]),
        .I1(In1[7]),
        .I2(Sum2_sub_temp_carry__0_i_12_n_0),
        .I3(In1[8]),
        .I4(des_x[8]),
        .O(Integral_Gain_mul_temp_3[0]));
  LUT4 #(
    .INIT(16'hFD00)) 
    Sum2_sub_temp_carry__2_i_1
       (.I0(In1[13]),
        .I1(In1[14]),
        .I2(In1[15]),
        .I3(des_x[13]),
        .O(Integral_Gain_mul_temp_5[2]));
  LUT4 #(
    .INIT(16'hFD00)) 
    Sum2_sub_temp_carry__2_i_2
       (.I0(In1[12]),
        .I1(In1[14]),
        .I2(In1[15]),
        .I3(des_x[12]),
        .O(Integral_Gain_mul_temp_5[1]));
  LUT4 #(
    .INIT(16'hFD00)) 
    Sum2_sub_temp_carry__2_i_3
       (.I0(In1[11]),
        .I1(In1[14]),
        .I2(In1[15]),
        .I3(des_x[11]),
        .O(Integral_Gain_mul_temp_5[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    Sum2_sub_temp_carry__2_i_4
       (.I0(In1[15]),
        .I1(In1[14]),
        .I2(des_x[14]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h5552AAAD)) 
    Sum2_sub_temp_carry__2_i_5
       (.I0(des_x[13]),
        .I1(In1[13]),
        .I2(In1[14]),
        .I3(In1[15]),
        .I4(des_x[14]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hAAADAAA25552555D)) 
    Sum2_sub_temp_carry__2_i_6
       (.I0(des_x[12]),
        .I1(In1[12]),
        .I2(In1[15]),
        .I3(In1[14]),
        .I4(In1[13]),
        .I5(des_x[13]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hAAADAAA25552555D)) 
    Sum2_sub_temp_carry__2_i_7
       (.I0(des_x[11]),
        .I1(In1[11]),
        .I2(In1[15]),
        .I3(In1[14]),
        .I4(In1[12]),
        .I5(des_x[12]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry_i_1
       (.I0(In1[2]),
        .I1(des_x[2]),
        .I2(Sum2_sub_temp_carry_i_8_n_0),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hFF008000)) 
    Sum2_sub_temp_carry_i_10
       (.I0(In1[3]),
        .I1(In1[1]),
        .I2(In1[2]),
        .I3(In1[5]),
        .I4(In1[4]),
        .O(Sum2_sub_temp_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    Sum2_sub_temp_carry_i_11
       (.I0(In1[14]),
        .I1(In1[9]),
        .I2(In1[10]),
        .I3(In1[7]),
        .I4(In1[8]),
        .O(Sum2_sub_temp_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    Sum2_sub_temp_carry_i_2
       (.I0(In1[1]),
        .I1(des_x[1]),
        .I2(Sum2_sub_temp_carry_i_8_n_0),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFAFFFAFF)) 
    Sum2_sub_temp_carry_i_3
       (.I0(des_x[0]),
        .I1(In1[6]),
        .I2(Sum2_sub_temp_carry_i_9_n_0),
        .I3(In1[0]),
        .I4(Sum2_sub_temp_carry_i_10_n_0),
        .I5(Sum2_sub_temp_carry_i_11_n_0),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    Sum2_sub_temp_carry_i_4
       (.I0(des_x[2]),
        .I1(In1[2]),
        .I2(Sum2_sub_temp_carry_i_8_n_0),
        .I3(In1[3]),
        .I4(des_x[3]),
        .O(Integral_Gain_mul_temp_0[3]));
  LUT5 #(
    .INIT(32'hDF2F20D0)) 
    Sum2_sub_temp_carry_i_5
       (.I0(des_x[1]),
        .I1(In1[1]),
        .I2(Sum2_sub_temp_carry_i_8_n_0),
        .I3(In1[2]),
        .I4(des_x[2]),
        .O(Integral_Gain_mul_temp_0[2]));
  LUT4 #(
    .INIT(16'h59A6)) 
    Sum2_sub_temp_carry_i_6
       (.I0(DI[0]),
        .I1(Sum2_sub_temp_carry_i_8_n_0),
        .I2(In1[1]),
        .I3(des_x[1]),
        .O(Integral_Gain_mul_temp_0[1]));
  LUT6 #(
    .INIT(64'hFFFFAF8F00005070)) 
    Sum2_sub_temp_carry_i_7
       (.I0(Sum2_sub_temp_carry_i_11_n_0),
        .I1(Sum2_sub_temp_carry_i_10_n_0),
        .I2(In1[0]),
        .I3(In1[6]),
        .I4(Sum2_sub_temp_carry_i_9_n_0),
        .I5(des_x[0]),
        .O(Integral_Gain_mul_temp_0[0]));
  LUT6 #(
    .INIT(64'hFFFF07FF00FF00FF)) 
    Sum2_sub_temp_carry_i_8
       (.I0(In1[5]),
        .I1(In1[4]),
        .I2(In1[6]),
        .I3(Sum2_sub_temp_carry__0_i_11_n_0),
        .I4(Sum2_sub_temp_carry__0_i_10_n_0),
        .I5(Sum2_sub_temp_carry__0_i_9_n_0),
        .O(Sum2_sub_temp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    Sum2_sub_temp_carry_i_9
       (.I0(In1[14]),
        .I1(In1[13]),
        .I2(In1[12]),
        .I3(In1[11]),
        .I4(In1[15]),
        .O(Sum2_sub_temp_carry_i_9_n_0));
  CARRY4 SumD_sub_temp_carry
       (.CI(1'b0),
        .CO({SumD_sub_temp_carry_n_0,SumD_sub_temp_carry_n_1,SumD_sub_temp_carry_n_2,SumD_sub_temp_carry_n_3}),
        .CYINIT(SumD_sub_temp_carry_i_1_n_0),
        .DI(SumD_sub_cast[4:1]),
        .O({SumD_sub_temp[4:2],NLW_SumD_sub_temp_carry_O_UNCONNECTED[0]}),
        .S({SumD_sub_temp_carry_i_2_n_0,SumD_sub_temp_carry_i_3_n_0,SumD_sub_temp_carry_i_4_n_0,SumD_sub_temp_carry_i_5_n_0}));
  CARRY4 SumD_sub_temp_carry__0
       (.CI(SumD_sub_temp_carry_n_0),
        .CO({SumD_sub_temp_carry__0_n_0,SumD_sub_temp_carry__0_n_1,SumD_sub_temp_carry__0_n_2,SumD_sub_temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SumD_sub_cast[8:5]),
        .O(SumD_sub_temp[8:5]),
        .S({SumD_sub_temp_carry__0_i_1_n_0,SumD_sub_temp_carry__0_i_2_n_0,SumD_sub_temp_carry__0_i_3_n_0,SumD_sub_temp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__0_i_1
       (.I0(SumD_sub_cast[8]),
        .I1(Filter_x_reg_reg[8]),
        .O(SumD_sub_temp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__0_i_2
       (.I0(SumD_sub_cast[7]),
        .I1(Filter_x_reg_reg[7]),
        .O(SumD_sub_temp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__0_i_3
       (.I0(SumD_sub_cast[6]),
        .I1(Filter_x_reg_reg[6]),
        .O(SumD_sub_temp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__0_i_4
       (.I0(SumD_sub_cast[5]),
        .I1(Filter_x_reg_reg[5]),
        .O(SumD_sub_temp_carry__0_i_4_n_0));
  CARRY4 SumD_sub_temp_carry__1
       (.CI(SumD_sub_temp_carry__0_n_0),
        .CO({SumD_sub_temp_carry__1_n_0,SumD_sub_temp_carry__1_n_1,SumD_sub_temp_carry__1_n_2,SumD_sub_temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SumD_sub_cast[12:9]),
        .O(SumD_sub_temp[12:9]),
        .S({SumD_sub_temp_carry__1_i_1_n_0,SumD_sub_temp_carry__1_i_2_n_0,SumD_sub_temp_carry__1_i_3_n_0,SumD_sub_temp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__1_i_1
       (.I0(SumD_sub_cast[12]),
        .I1(Filter_x_reg_reg[12]),
        .O(SumD_sub_temp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__1_i_2
       (.I0(SumD_sub_cast[11]),
        .I1(Filter_x_reg_reg[11]),
        .O(SumD_sub_temp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__1_i_3
       (.I0(SumD_sub_cast[10]),
        .I1(Filter_x_reg_reg[10]),
        .O(SumD_sub_temp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__1_i_4
       (.I0(SumD_sub_cast[9]),
        .I1(Filter_x_reg_reg[9]),
        .O(SumD_sub_temp_carry__1_i_4_n_0));
  CARRY4 SumD_sub_temp_carry__2
       (.CI(SumD_sub_temp_carry__1_n_0),
        .CO({SumD_sub_temp_carry__2_n_0,SumD_sub_temp_carry__2_n_1,SumD_sub_temp_carry__2_n_2,SumD_sub_temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SumD_sub_cast[16:13]),
        .O(SumD_sub_temp[16:13]),
        .S({SumD_sub_temp_carry__2_i_1_n_0,SumD_sub_temp_carry__2_i_2_n_0,SumD_sub_temp_carry__2_i_3_n_0,SumD_sub_temp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    SumD_sub_temp_carry__2_i_1
       (.I0(SumD_sub_cast[16]),
        .O(SumD_sub_temp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__2_i_2
       (.I0(SumD_sub_cast[15]),
        .I1(Filter_x_reg_reg[15]),
        .O(SumD_sub_temp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__2_i_3
       (.I0(SumD_sub_cast[14]),
        .I1(Filter_x_reg_reg[14]),
        .O(SumD_sub_temp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry__2_i_4
       (.I0(SumD_sub_cast[13]),
        .I1(Filter_x_reg_reg[13]),
        .O(SumD_sub_temp_carry__2_i_4_n_0));
  CARRY4 SumD_sub_temp_carry__3
       (.CI(SumD_sub_temp_carry__2_n_0),
        .CO(NLW_SumD_sub_temp_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_SumD_sub_temp_carry__3_O_UNCONNECTED[3:1],SumD_sub_temp[17]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    SumD_sub_temp_carry_i_1
       (.I0(Filter_x_reg_reg[0]),
        .O(SumD_sub_temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry_i_2
       (.I0(SumD_sub_cast[4]),
        .I1(Filter_x_reg_reg[4]),
        .O(SumD_sub_temp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry_i_3
       (.I0(SumD_sub_cast[3]),
        .I1(Filter_x_reg_reg[3]),
        .O(SumD_sub_temp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry_i_4
       (.I0(SumD_sub_cast[2]),
        .I1(Filter_x_reg_reg[2]),
        .O(SumD_sub_temp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    SumD_sub_temp_carry_i_5
       (.I0(SumD_sub_cast[1]),
        .I1(Filter_x_reg_reg[1]),
        .O(SumD_sub_temp_carry_i_5_n_0));
  CARRY4 Sum_add_temp_1__2_carry
       (.CI(1'b0),
        .CO({Sum_add_temp_1__2_carry_n_0,Sum_add_temp_1__2_carry_n_1,Sum_add_temp_1__2_carry_n_2,Sum_add_temp_1__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_add_cast_2[7:5],1'b0}),
        .O(NLW_Sum_add_temp_1__2_carry_O_UNCONNECTED[3:0]),
        .S({Sum_add_temp_1__2_carry_i_1_n_0,Sum_add_temp_1__2_carry_i_2_n_0,Sum_add_temp_1__2_carry_i_3_n_0,Integrator_x_reg_reg[4]}));
  CARRY4 Sum_add_temp_1__2_carry__0
       (.CI(Sum_add_temp_1__2_carry_n_0),
        .CO({Sum_add_temp_1__2_carry__0_n_0,Sum_add_temp_1__2_carry__0_n_1,Sum_add_temp_1__2_carry__0_n_2,Sum_add_temp_1__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_add_temp_1__2_carry__0_i_1_n_0,Sum_add_temp_1__2_carry__0_i_2_n_0,Proportional_Gain_mul_temp_n_91,Sum_add_cast_2[8]}),
        .O({\pwm_out[0] [2:0],NLW_Sum_add_temp_1__2_carry__0_O_UNCONNECTED[0]}),
        .S({Sum_add_temp_1__2_carry__0_i_3_n_0,Sum_add_temp_1__2_carry__0_i_4_n_0,Sum_add_temp_1__2_carry__0_i_5_n_0,Sum_add_temp_1__2_carry__0_i_6_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Sum_add_temp_1__2_carry__0_i_1
       (.I0(Integrator_x_reg_reg[10]),
        .I1(Sum_add_cast_2[10]),
        .I2(Proportional_Gain_mul_temp_n_90),
        .O(Sum_add_temp_1__2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_add_temp_1__2_carry__0_i_2
       (.I0(Proportional_Gain_mul_temp_n_90),
        .I1(Integrator_x_reg_reg[10]),
        .I2(Sum_add_cast_2[10]),
        .O(Sum_add_temp_1__2_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_add_temp_1__2_carry__0_i_3
       (.I0(Integrator_x_reg_reg[11]),
        .I1(Sum_add_cast_2[11]),
        .I2(Proportional_Gain_mul_temp_n_89),
        .I3(Sum_add_temp_1__2_carry__0_i_1_n_0),
        .O(Sum_add_temp_1__2_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Sum_add_temp_1__2_carry__0_i_4
       (.I0(Integrator_x_reg_reg[10]),
        .I1(Sum_add_cast_2[10]),
        .I2(Proportional_Gain_mul_temp_n_90),
        .I3(Sum_add_cast_2[9]),
        .I4(Integrator_x_reg_reg[9]),
        .O(Sum_add_temp_1__2_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_add_temp_1__2_carry__0_i_5
       (.I0(Integrator_x_reg_reg[9]),
        .I1(Sum_add_cast_2[9]),
        .I2(Proportional_Gain_mul_temp_n_91),
        .O(Sum_add_temp_1__2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_1__2_carry__0_i_6
       (.I0(Sum_add_cast_2[8]),
        .I1(Integrator_x_reg_reg[8]),
        .O(Sum_add_temp_1__2_carry__0_i_6_n_0));
  CARRY4 Sum_add_temp_1__2_carry__1
       (.CI(Sum_add_temp_1__2_carry__0_n_0),
        .CO({Sum_add_temp_1__2_carry__1_n_0,Sum_add_temp_1__2_carry__1_n_1,Sum_add_temp_1__2_carry__1_n_2,Sum_add_temp_1__2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_add_temp_1__2_carry__1_i_1_n_0,Sum_add_temp_1__2_carry__1_i_2_n_0,Sum_add_temp_1__2_carry__1_i_3_n_0,Sum_add_temp_1__2_carry__1_i_4_n_0}),
        .O(\pwm_out[0] [6:3]),
        .S({Sum_add_temp_1__2_carry__1_i_5_n_0,Sum_add_temp_1__2_carry__1_i_6_n_0,Sum_add_temp_1__2_carry__1_i_7_n_0,Sum_add_temp_1__2_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    Sum_add_temp_1__2_carry__1_i_1
       (.I0(Integrator_x_reg_reg[15]),
        .I1(Sum_add_cast_2[15]),
        .I2(Proportional_Gain_mul_temp_n_85),
        .O(Sum_add_temp_1__2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Sum_add_temp_1__2_carry__1_i_2
       (.I0(Integrator_x_reg_reg[13]),
        .I1(Sum_add_cast_2[13]),
        .I2(Proportional_Gain_mul_temp_n_87),
        .O(Sum_add_temp_1__2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    Sum_add_temp_1__2_carry__1_i_3
       (.I0(Integrator_x_reg_reg[12]),
        .I1(Sum_add_cast_2[12]),
        .I2(Proportional_Gain_mul_temp_n_88),
        .O(Sum_add_temp_1__2_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Sum_add_temp_1__2_carry__1_i_4
       (.I0(Integrator_x_reg_reg[11]),
        .I1(Sum_add_cast_2[11]),
        .I2(Proportional_Gain_mul_temp_n_89),
        .O(Sum_add_temp_1__2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    Sum_add_temp_1__2_carry__1_i_5
       (.I0(Proportional_Gain_mul_temp_n_85),
        .I1(Sum_add_cast_2[15]),
        .I2(Integrator_x_reg_reg[15]),
        .I3(Proportional_Gain_mul_temp_n_86),
        .I4(Sum_add_cast_2[14]),
        .I5(Integrator_x_reg_reg[14]),
        .O(Sum_add_temp_1__2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_add_temp_1__2_carry__1_i_6
       (.I0(Sum_add_temp_1__2_carry__1_i_2_n_0),
        .I1(Sum_add_cast_2[14]),
        .I2(Integrator_x_reg_reg[14]),
        .I3(Proportional_Gain_mul_temp_n_86),
        .O(Sum_add_temp_1__2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_add_temp_1__2_carry__1_i_7
       (.I0(Integrator_x_reg_reg[13]),
        .I1(Sum_add_cast_2[13]),
        .I2(Proportional_Gain_mul_temp_n_87),
        .I3(Sum_add_temp_1__2_carry__1_i_3_n_0),
        .O(Sum_add_temp_1__2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Sum_add_temp_1__2_carry__1_i_8
       (.I0(Integrator_x_reg_reg[12]),
        .I1(Sum_add_cast_2[12]),
        .I2(Proportional_Gain_mul_temp_n_88),
        .I3(Sum_add_temp_1__2_carry__1_i_4_n_0),
        .O(Sum_add_temp_1__2_carry__1_i_8_n_0));
  CARRY4 Sum_add_temp_1__2_carry__2
       (.CI(Sum_add_temp_1__2_carry__1_n_0),
        .CO({Sum_add_temp_1__2_carry__2_n_0,Sum_add_temp_1__2_carry__2_n_1,Sum_add_temp_1__2_carry__2_n_2,Sum_add_temp_1__2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_add_temp_1__2_carry__2_i_1_n_0,Sum_add_temp_1__2_carry__2_i_2_n_0,Sum_add_temp_1__2_carry__2_i_3_n_0,Sum_add_temp_1__2_carry__2_i_4_n_0}),
        .O({Sum_add_temp_1[19],\pwm_out[0] [9:7]}),
        .S({Sum_add_temp_1__2_carry__2_i_5_n_0,Sum_add_temp_1__2_carry__2_i_6_n_0,Sum_add_temp_1__2_carry__2_i_7_n_0,Sum_add_temp_1__2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    Sum_add_temp_1__2_carry__2_i_1
       (.I0(Sum_add_cast_2[17]),
        .I1(Proportional_Gain_mul_temp_n_83),
        .I2(Sum_add_cast_2[18]),
        .I3(Proportional_Gain_mul_temp_n_82),
        .O(Sum_add_temp_1__2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Sum_add_temp_1__2_carry__2_i_2
       (.I0(Sum_add_cast_2[16]),
        .I1(Proportional_Gain_mul_temp_n_84),
        .I2(Sum_add_cast_2[17]),
        .I3(Proportional_Gain_mul_temp_n_83),
        .O(Sum_add_temp_1__2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hD00D)) 
    Sum_add_temp_1__2_carry__2_i_3
       (.I0(Integrator_x_reg_reg[15]),
        .I1(Sum_add_cast_2[15]),
        .I2(Sum_add_cast_2[16]),
        .I3(Proportional_Gain_mul_temp_n_84),
        .O(Sum_add_temp_1__2_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    Sum_add_temp_1__2_carry__2_i_4
       (.I0(Proportional_Gain_mul_temp_n_85),
        .I1(Integrator_x_reg_reg[15]),
        .I2(Sum_add_cast_2[15]),
        .O(Sum_add_temp_1__2_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Sum_add_temp_1__2_carry__2_i_5
       (.I0(Proportional_Gain_mul_temp_n_83),
        .I1(Sum_add_cast_2[17]),
        .I2(Proportional_Gain_mul_temp_n_81),
        .I3(Sum_add_cast_2[19]),
        .I4(Proportional_Gain_mul_temp_n_82),
        .I5(Sum_add_cast_2[18]),
        .O(Sum_add_temp_1__2_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Sum_add_temp_1__2_carry__2_i_6
       (.I0(Proportional_Gain_mul_temp_n_84),
        .I1(Sum_add_cast_2[16]),
        .I2(Proportional_Gain_mul_temp_n_82),
        .I3(Sum_add_cast_2[18]),
        .I4(Proportional_Gain_mul_temp_n_83),
        .I5(Sum_add_cast_2[17]),
        .O(Sum_add_temp_1__2_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    Sum_add_temp_1__2_carry__2_i_7
       (.I0(Sum_add_cast_2[15]),
        .I1(Integrator_x_reg_reg[15]),
        .I2(Proportional_Gain_mul_temp_n_83),
        .I3(Sum_add_cast_2[17]),
        .I4(Proportional_Gain_mul_temp_n_84),
        .I5(Sum_add_cast_2[16]),
        .O(Sum_add_temp_1__2_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    Sum_add_temp_1__2_carry__2_i_8
       (.I0(Proportional_Gain_mul_temp_n_85),
        .I1(Proportional_Gain_mul_temp_n_84),
        .I2(Sum_add_cast_2[16]),
        .I3(Sum_add_cast_2[15]),
        .I4(Integrator_x_reg_reg[15]),
        .O(Sum_add_temp_1__2_carry__2_i_8_n_0));
  CARRY4 Sum_add_temp_1__2_carry__3
       (.CI(Sum_add_temp_1__2_carry__2_n_0),
        .CO({Sum_add_temp_1__2_carry__3_n_0,Sum_add_temp_1__2_carry__3_n_1,Sum_add_temp_1__2_carry__3_n_2,Sum_add_temp_1__2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({Proportional_Gain_mul_temp_n_78,Proportional_Gain_mul_temp_n_79,Sum_add_temp_1__2_carry__3_i_1_n_0,Sum_add_temp_1__2_carry__3_i_2_n_0}),
        .O(Sum_add_temp_1[23:20]),
        .S({Sum_add_temp_1__2_carry__3_i_3_n_0,Sum_add_temp_1__2_carry__3_i_4_n_0,Sum_add_temp_1__2_carry__3_i_5_n_0,Sum_add_temp_1__2_carry__3_i_6_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    Sum_add_temp_1__2_carry__3_i_1
       (.I0(Sum_add_cast_2[20]),
        .I1(Proportional_Gain_mul_temp_n_80),
        .I2(Sum_add_cast_2[19]),
        .I3(Proportional_Gain_mul_temp_n_81),
        .O(Sum_add_temp_1__2_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Sum_add_temp_1__2_carry__3_i_2
       (.I0(Sum_add_cast_2[18]),
        .I1(Proportional_Gain_mul_temp_n_82),
        .I2(Sum_add_cast_2[19]),
        .I3(Proportional_Gain_mul_temp_n_81),
        .O(Sum_add_temp_1__2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_add_temp_1__2_carry__3_i_3
       (.I0(Proportional_Gain_mul_temp_n_78),
        .I1(Proportional_Gain_mul_temp_n_77),
        .O(Sum_add_temp_1__2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_add_temp_1__2_carry__3_i_4
       (.I0(Proportional_Gain_mul_temp_n_79),
        .I1(Proportional_Gain_mul_temp_n_78),
        .O(Sum_add_temp_1__2_carry__3_i_4_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    Sum_add_temp_1__2_carry__3_i_5
       (.I0(Proportional_Gain_mul_temp_n_81),
        .I1(Sum_add_cast_2[19]),
        .I2(Proportional_Gain_mul_temp_n_80),
        .I3(Sum_add_cast_2[20]),
        .I4(Proportional_Gain_mul_temp_n_79),
        .O(Sum_add_temp_1__2_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Sum_add_temp_1__2_carry__3_i_6
       (.I0(Proportional_Gain_mul_temp_n_82),
        .I1(Sum_add_cast_2[18]),
        .I2(Proportional_Gain_mul_temp_n_80),
        .I3(Sum_add_cast_2[20]),
        .I4(Proportional_Gain_mul_temp_n_81),
        .I5(Sum_add_cast_2[19]),
        .O(Sum_add_temp_1__2_carry__3_i_6_n_0));
  CARRY4 Sum_add_temp_1__2_carry__4
       (.CI(Sum_add_temp_1__2_carry__3_n_0),
        .CO(NLW_Sum_add_temp_1__2_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Sum_add_temp_1__2_carry__4_O_UNCONNECTED[3:1],Sum_add_temp_1[24]}),
        .S({1'b0,1'b0,1'b0,Sum_add_temp_1__2_carry__4_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_add_temp_1__2_carry__4_i_1
       (.I0(Proportional_Gain_mul_temp_n_77),
        .I1(Proportional_Gain_mul_temp_n_76),
        .O(Sum_add_temp_1__2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_1__2_carry_i_1
       (.I0(Sum_add_cast_2[7]),
        .I1(Integrator_x_reg_reg[7]),
        .O(Sum_add_temp_1__2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_1__2_carry_i_2
       (.I0(Sum_add_cast_2[6]),
        .I1(Integrator_x_reg_reg[6]),
        .O(Sum_add_temp_1__2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_1__2_carry_i_3
       (.I0(Sum_add_cast_2[5]),
        .I1(Integrator_x_reg_reg[5]),
        .O(Sum_add_temp_1__2_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    gain_mul_temp
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_gain_mul_temp_P_UNCONNECTED[47:31],in0,gain_mul_temp_n_76,gain_mul_temp_n_77,gain_mul_temp_n_78,gain_mul_temp_n_79,gain_mul_temp_n_80,gain_mul_temp_n_81,gain_mul_temp_n_82,gain_mul_temp_n_83,gain_mul_temp_n_84,gain_mul_temp_n_85,gain_mul_temp_n_86,gain_mul_temp_n_87,gain_mul_temp_n_88,gain_mul_temp_n_89,gain_mul_temp_n_90,gain_mul_temp_n_91,gain_mul_temp_n_92,gain_mul_temp_n_93,gain_mul_temp_n_94,gain_mul_temp_n_95,gain_mul_temp_n_96,gain_mul_temp_n_97,gain_mul_temp_n_98,gain_mul_temp_n_99,gain_mul_temp_n_100,gain_mul_temp_n_101,gain_mul_temp_n_102,gain_mul_temp_n_103,gain_mul_temp_n_104,gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    gain_mul_temp_1
       (.A({Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2[20],Sum_add_cast_2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_gain_mul_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_gain_mul_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_gain_mul_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_gain_mul_temp_1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_gain_mul_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_gain_mul_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_gain_mul_temp_1_P_UNCONNECTED[47:31],\^gain_mul_temp_1 ,gain_mul_temp_1_n_76,gain_mul_temp_1_n_77,gain_mul_temp_1_n_78,gain_mul_temp_1_n_79,gain_mul_temp_1_n_80,gain_mul_temp_1_n_81,gain_mul_temp_1_n_82,gain_mul_temp_1_n_83,gain_mul_temp_1_n_84,gain_mul_temp_1_n_85,gain_mul_temp_1_n_86,gain_mul_temp_1_n_87,gain_mul_temp_1_n_88,gain_mul_temp_1_n_89,gain_mul_temp_1_n_90,gain_mul_temp_1_n_91,gain_mul_temp_1_n_92,gain_mul_temp_1_n_93,gain_mul_temp_1_n_94,gain_mul_temp_1_n_95,gain_mul_temp_1_n_96,gain_mul_temp_1_n_97,gain_mul_temp_1_n_98,gain_mul_temp_1_n_99,gain_mul_temp_1_n_100,gain_mul_temp_1_n_101,gain_mul_temp_1_n_102,gain_mul_temp_1_n_103,gain_mul_temp_1_n_104,gain_mul_temp_1_n_105}),
        .PATTERNBDETECT(NLW_gain_mul_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_gain_mul_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_gain_mul_temp_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_gain_mul_temp_1_UNDERFLOW_UNCONNECTED));
  CARRY4 \pwm_out[10]_INST_0_i_1 
       (.CI(\pwm_out[6]_INST_0_i_1_n_0 ),
        .CO({\pwm_out[10]_INST_0_i_1_n_0 ,\pwm_out[10]_INST_0_i_1_n_1 ,\pwm_out[10]_INST_0_i_1_n_2 ,\pwm_out[10]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\pwm_out[0] [9:7]}),
        .O(pwm_out_1[10:7]),
        .S({Sum_add_temp_1[19],Proportional_Gain_mul_temp_2}));
  CARRY4 \pwm_out[14]_INST_0_i_1 
       (.CI(\pwm_out[14]_INST_0_i_2_n_0 ),
        .CO(\NLW_pwm_out[14]_INST_0_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pwm_out[14]_INST_0_i_1_O_UNCONNECTED [3:1],pwm_out_1[15]}),
        .S({1'b0,1'b0,1'b0,Sum_add_temp_1[24]}));
  CARRY4 \pwm_out[14]_INST_0_i_2 
       (.CI(\pwm_out[10]_INST_0_i_1_n_0 ),
        .CO({\pwm_out[14]_INST_0_i_2_n_0 ,\pwm_out[14]_INST_0_i_2_n_1 ,\pwm_out[14]_INST_0_i_2_n_2 ,\pwm_out[14]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pwm_out_1[14:11]),
        .S(Sum_add_temp_1[23:20]));
  CARRY4 \pwm_out[2]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\pwm_out[2]_INST_0_i_1_n_0 ,\pwm_out[2]_INST_0_i_1_n_1 ,\pwm_out[2]_INST_0_i_1_n_2 ,\pwm_out[2]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm_out[0] [2:0],1'b0}),
        .O({pwm_out_1[2:0],\NLW_pwm_out[2]_INST_0_i_1_O_UNCONNECTED [0]}),
        .S(Proportional_Gain_mul_temp_0));
  CARRY4 \pwm_out[6]_INST_0_i_1 
       (.CI(\pwm_out[2]_INST_0_i_1_n_0 ),
        .CO({\pwm_out[6]_INST_0_i_1_n_0 ,\pwm_out[6]_INST_0_i_1_n_1 ,\pwm_out[6]_INST_0_i_1_n_2 ,\pwm_out[6]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\pwm_out[0] [6:3]),
        .O(pwm_out_1[6:3]),
        .S(Proportional_Gain_mul_temp_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1
   (Sum_out1,
    In3,
    IPCORE_CLK,
    reset_out);
  output [10:0]Sum_out1;
  input [15:0]In3;
  input IPCORE_CLK;
  input reset_out;

  wire Filter_Coefficient_mul_temp_n_100;
  wire Filter_Coefficient_mul_temp_n_101;
  wire Filter_Coefficient_mul_temp_n_102;
  wire Filter_Coefficient_mul_temp_n_103;
  wire Filter_Coefficient_mul_temp_n_104;
  wire Filter_Coefficient_mul_temp_n_105;
  wire Filter_Coefficient_mul_temp_n_74;
  wire Filter_Coefficient_mul_temp_n_75;
  wire Filter_Coefficient_mul_temp_n_76;
  wire Filter_Coefficient_mul_temp_n_77;
  wire Filter_Coefficient_mul_temp_n_78;
  wire Filter_Coefficient_mul_temp_n_79;
  wire Filter_Coefficient_mul_temp_n_80;
  wire Filter_Coefficient_mul_temp_n_81;
  wire Filter_Coefficient_mul_temp_n_82;
  wire Filter_Coefficient_mul_temp_n_98;
  wire Filter_Coefficient_mul_temp_n_99;
  wire Filter_out1_carry__0_i_1_n_0;
  wire Filter_out1_carry__0_i_2_n_0;
  wire Filter_out1_carry__0_i_3_n_0;
  wire Filter_out1_carry__0_i_4_n_0;
  wire Filter_out1_carry__0_n_0;
  wire Filter_out1_carry__0_n_1;
  wire Filter_out1_carry__0_n_2;
  wire Filter_out1_carry__0_n_3;
  wire Filter_out1_carry__0_n_4;
  wire Filter_out1_carry__0_n_5;
  wire Filter_out1_carry__0_n_6;
  wire Filter_out1_carry__0_n_7;
  wire Filter_out1_carry__1_i_1_n_0;
  wire Filter_out1_carry__1_i_2_n_0;
  wire Filter_out1_carry__1_i_3_n_0;
  wire Filter_out1_carry__1_i_4_n_0;
  wire Filter_out1_carry__1_n_0;
  wire Filter_out1_carry__1_n_1;
  wire Filter_out1_carry__1_n_2;
  wire Filter_out1_carry__1_n_3;
  wire Filter_out1_carry__1_n_4;
  wire Filter_out1_carry__1_n_5;
  wire Filter_out1_carry__1_n_6;
  wire Filter_out1_carry__1_n_7;
  wire Filter_out1_carry__2_i_1_n_0;
  wire Filter_out1_carry__2_i_2_n_0;
  wire Filter_out1_carry__2_i_3_n_0;
  wire Filter_out1_carry__2_i_4_n_0;
  wire Filter_out1_carry__2_n_1;
  wire Filter_out1_carry__2_n_2;
  wire Filter_out1_carry__2_n_3;
  wire Filter_out1_carry__2_n_4;
  wire Filter_out1_carry__2_n_5;
  wire Filter_out1_carry__2_n_6;
  wire Filter_out1_carry__2_n_7;
  wire Filter_out1_carry_i_1_n_0;
  wire Filter_out1_carry_i_2_n_0;
  wire Filter_out1_carry_i_3_n_0;
  wire Filter_out1_carry_n_0;
  wire Filter_out1_carry_n_1;
  wire Filter_out1_carry_n_2;
  wire Filter_out1_carry_n_3;
  wire Filter_out1_carry_n_4;
  wire Filter_out1_carry_n_5;
  wire Filter_out1_carry_n_6;
  wire Filter_out1_carry_n_7;
  wire \Filter_x_reg[0]_i_2_n_0 ;
  wire \Filter_x_reg[0]_i_3_n_0 ;
  wire \Filter_x_reg[0]_i_4_n_0 ;
  wire \Filter_x_reg[0]_i_5_n_0 ;
  wire \Filter_x_reg[12]_i_2_n_0 ;
  wire \Filter_x_reg[12]_i_3_n_0 ;
  wire \Filter_x_reg[12]_i_4_n_0 ;
  wire \Filter_x_reg[12]_i_5_n_0 ;
  wire \Filter_x_reg[4]_i_2_n_0 ;
  wire \Filter_x_reg[4]_i_3_n_0 ;
  wire \Filter_x_reg[4]_i_4_n_0 ;
  wire \Filter_x_reg[4]_i_5_n_0 ;
  wire \Filter_x_reg[8]_i_2_n_0 ;
  wire \Filter_x_reg[8]_i_3_n_0 ;
  wire \Filter_x_reg[8]_i_4_n_0 ;
  wire \Filter_x_reg[8]_i_5_n_0 ;
  wire [15:0]Filter_x_reg_reg;
  wire \Filter_x_reg_reg[0]_i_1_n_0 ;
  wire \Filter_x_reg_reg[0]_i_1_n_1 ;
  wire \Filter_x_reg_reg[0]_i_1_n_2 ;
  wire \Filter_x_reg_reg[0]_i_1_n_3 ;
  wire \Filter_x_reg_reg[0]_i_1_n_4 ;
  wire \Filter_x_reg_reg[0]_i_1_n_5 ;
  wire \Filter_x_reg_reg[0]_i_1_n_6 ;
  wire \Filter_x_reg_reg[0]_i_1_n_7 ;
  wire \Filter_x_reg_reg[12]_i_1_n_1 ;
  wire \Filter_x_reg_reg[12]_i_1_n_2 ;
  wire \Filter_x_reg_reg[12]_i_1_n_3 ;
  wire \Filter_x_reg_reg[12]_i_1_n_4 ;
  wire \Filter_x_reg_reg[12]_i_1_n_5 ;
  wire \Filter_x_reg_reg[12]_i_1_n_6 ;
  wire \Filter_x_reg_reg[12]_i_1_n_7 ;
  wire \Filter_x_reg_reg[4]_i_1_n_0 ;
  wire \Filter_x_reg_reg[4]_i_1_n_1 ;
  wire \Filter_x_reg_reg[4]_i_1_n_2 ;
  wire \Filter_x_reg_reg[4]_i_1_n_3 ;
  wire \Filter_x_reg_reg[4]_i_1_n_4 ;
  wire \Filter_x_reg_reg[4]_i_1_n_5 ;
  wire \Filter_x_reg_reg[4]_i_1_n_6 ;
  wire \Filter_x_reg_reg[4]_i_1_n_7 ;
  wire \Filter_x_reg_reg[8]_i_1_n_0 ;
  wire \Filter_x_reg_reg[8]_i_1_n_1 ;
  wire \Filter_x_reg_reg[8]_i_1_n_2 ;
  wire \Filter_x_reg_reg[8]_i_1_n_3 ;
  wire \Filter_x_reg_reg[8]_i_1_n_4 ;
  wire \Filter_x_reg_reg[8]_i_1_n_5 ;
  wire \Filter_x_reg_reg[8]_i_1_n_6 ;
  wire \Filter_x_reg_reg[8]_i_1_n_7 ;
  wire IPCORE_CLK;
  wire [15:0]In3;
  wire Proportional_Gain_mul_temp_n_100;
  wire Proportional_Gain_mul_temp_n_101;
  wire Proportional_Gain_mul_temp_n_102;
  wire Proportional_Gain_mul_temp_n_103;
  wire Proportional_Gain_mul_temp_n_104;
  wire Proportional_Gain_mul_temp_n_105;
  wire Proportional_Gain_mul_temp_n_74;
  wire Proportional_Gain_mul_temp_n_91;
  wire Proportional_Gain_mul_temp_n_92;
  wire Proportional_Gain_mul_temp_n_93;
  wire Proportional_Gain_mul_temp_n_94;
  wire Proportional_Gain_mul_temp_n_95;
  wire Proportional_Gain_mul_temp_n_96;
  wire Proportional_Gain_mul_temp_n_97;
  wire Proportional_Gain_mul_temp_n_98;
  wire Proportional_Gain_mul_temp_n_99;
  wire [15:0]Sum_add_cast;
  wire [15:1]Sum_add_cast_1;
  wire Sum_add_temp_carry__0_i_1_n_0;
  wire Sum_add_temp_carry__0_i_2_n_0;
  wire Sum_add_temp_carry__0_i_3_n_0;
  wire Sum_add_temp_carry__0_i_4_n_0;
  wire Sum_add_temp_carry__0_n_0;
  wire Sum_add_temp_carry__0_n_1;
  wire Sum_add_temp_carry__0_n_2;
  wire Sum_add_temp_carry__0_n_3;
  wire Sum_add_temp_carry__1_i_1_n_0;
  wire Sum_add_temp_carry__1_i_2_n_0;
  wire Sum_add_temp_carry__1_i_3_n_0;
  wire Sum_add_temp_carry__1_i_4_n_0;
  wire Sum_add_temp_carry__1_n_0;
  wire Sum_add_temp_carry__1_n_1;
  wire Sum_add_temp_carry__1_n_2;
  wire Sum_add_temp_carry__1_n_3;
  wire Sum_add_temp_carry__2_i_1_n_0;
  wire Sum_add_temp_carry__2_i_2_n_0;
  wire Sum_add_temp_carry__2_i_3_n_0;
  wire Sum_add_temp_carry__2_i_4_n_0;
  wire Sum_add_temp_carry__2_n_1;
  wire Sum_add_temp_carry__2_n_2;
  wire Sum_add_temp_carry__2_n_3;
  wire Sum_add_temp_carry_i_1_n_0;
  wire Sum_add_temp_carry_i_2_n_0;
  wire Sum_add_temp_carry_i_3_n_0;
  wire Sum_add_temp_carry_n_0;
  wire Sum_add_temp_carry_n_1;
  wire Sum_add_temp_carry_n_2;
  wire Sum_add_temp_carry_n_3;
  wire [10:0]Sum_out1;
  wire [30:30]\^gain_mul_temp ;
  wire gain_mul_temp_n_100;
  wire gain_mul_temp_n_101;
  wire gain_mul_temp_n_102;
  wire gain_mul_temp_n_103;
  wire gain_mul_temp_n_104;
  wire gain_mul_temp_n_105;
  wire gain_mul_temp_n_76;
  wire gain_mul_temp_n_77;
  wire gain_mul_temp_n_78;
  wire gain_mul_temp_n_79;
  wire gain_mul_temp_n_80;
  wire gain_mul_temp_n_81;
  wire gain_mul_temp_n_82;
  wire gain_mul_temp_n_83;
  wire gain_mul_temp_n_84;
  wire gain_mul_temp_n_85;
  wire gain_mul_temp_n_86;
  wire gain_mul_temp_n_87;
  wire gain_mul_temp_n_88;
  wire gain_mul_temp_n_89;
  wire gain_mul_temp_n_90;
  wire gain_mul_temp_n_91;
  wire gain_mul_temp_n_92;
  wire gain_mul_temp_n_93;
  wire gain_mul_temp_n_94;
  wire gain_mul_temp_n_95;
  wire gain_mul_temp_n_96;
  wire gain_mul_temp_n_97;
  wire gain_mul_temp_n_98;
  wire gain_mul_temp_n_99;
  wire reset_out;
  wire NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED;
  wire [3:3]NLW_Filter_out1_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_Filter_x_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Proportional_Gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED;
  wire [3:0]NLW_Sum_add_temp_carry_O_UNCONNECTED;
  wire [0:0]NLW_Sum_add_temp_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_Sum_add_temp_carry__2_CO_UNCONNECTED;
  wire NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_gain_mul_temp_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Filter_Coefficient_mul_temp
       (.A({Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_5,Filter_out1_carry__2_n_6,Filter_out1_carry__2_n_7,Filter_out1_carry__1_n_4,Filter_out1_carry__1_n_5,Filter_out1_carry__1_n_6,Filter_out1_carry__1_n_7,Filter_out1_carry__0_n_4,Filter_out1_carry__0_n_5,Filter_out1_carry__0_n_6,Filter_out1_carry__0_n_7,Filter_out1_carry_n_4,Filter_out1_carry_n_5,Filter_out1_carry_n_6,Filter_out1_carry_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED[47:32],Filter_Coefficient_mul_temp_n_74,Filter_Coefficient_mul_temp_n_75,Filter_Coefficient_mul_temp_n_76,Filter_Coefficient_mul_temp_n_77,Filter_Coefficient_mul_temp_n_78,Filter_Coefficient_mul_temp_n_79,Filter_Coefficient_mul_temp_n_80,Filter_Coefficient_mul_temp_n_81,Filter_Coefficient_mul_temp_n_82,Sum_add_cast_1,Filter_Coefficient_mul_temp_n_98,Filter_Coefficient_mul_temp_n_99,Filter_Coefficient_mul_temp_n_100,Filter_Coefficient_mul_temp_n_101,Filter_Coefficient_mul_temp_n_102,Filter_Coefficient_mul_temp_n_103,Filter_Coefficient_mul_temp_n_104,Filter_Coefficient_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED));
  CARRY4 Filter_out1_carry
       (.CI(1'b0),
        .CO({Filter_out1_carry_n_0,Filter_out1_carry_n_1,Filter_out1_carry_n_2,Filter_out1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({Filter_out1_carry_n_4,Filter_out1_carry_n_5,Filter_out1_carry_n_6,Filter_out1_carry_n_7}),
        .S({Filter_out1_carry_i_1_n_0,Filter_out1_carry_i_2_n_0,Filter_out1_carry_i_3_n_0,Filter_x_reg_reg[0]}));
  CARRY4 Filter_out1_carry__0
       (.CI(Filter_out1_carry_n_0),
        .CO({Filter_out1_carry__0_n_0,Filter_out1_carry__0_n_1,Filter_out1_carry__0_n_2,Filter_out1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({Filter_out1_carry__0_n_4,Filter_out1_carry__0_n_5,Filter_out1_carry__0_n_6,Filter_out1_carry__0_n_7}),
        .S({Filter_out1_carry__0_i_1_n_0,Filter_out1_carry__0_i_2_n_0,Filter_out1_carry__0_i_3_n_0,Filter_out1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__0_i_1
       (.I0(Filter_x_reg_reg[7]),
        .O(Filter_out1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__0_i_2
       (.I0(Filter_x_reg_reg[6]),
        .O(Filter_out1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__0_i_3
       (.I0(Filter_x_reg_reg[5]),
        .O(Filter_out1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__0_i_4
       (.I0(Filter_x_reg_reg[4]),
        .O(Filter_out1_carry__0_i_4_n_0));
  CARRY4 Filter_out1_carry__1
       (.CI(Filter_out1_carry__0_n_0),
        .CO({Filter_out1_carry__1_n_0,Filter_out1_carry__1_n_1,Filter_out1_carry__1_n_2,Filter_out1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({Filter_out1_carry__1_n_4,Filter_out1_carry__1_n_5,Filter_out1_carry__1_n_6,Filter_out1_carry__1_n_7}),
        .S({Filter_out1_carry__1_i_1_n_0,Filter_out1_carry__1_i_2_n_0,Filter_out1_carry__1_i_3_n_0,Filter_out1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__1_i_1
       (.I0(Filter_x_reg_reg[11]),
        .O(Filter_out1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__1_i_2
       (.I0(Filter_x_reg_reg[10]),
        .O(Filter_out1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__1_i_3
       (.I0(Filter_x_reg_reg[9]),
        .O(Filter_out1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__1_i_4
       (.I0(Filter_x_reg_reg[8]),
        .O(Filter_out1_carry__1_i_4_n_0));
  CARRY4 Filter_out1_carry__2
       (.CI(Filter_out1_carry__1_n_0),
        .CO({NLW_Filter_out1_carry__2_CO_UNCONNECTED[3],Filter_out1_carry__2_n_1,Filter_out1_carry__2_n_2,Filter_out1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({Filter_out1_carry__2_n_4,Filter_out1_carry__2_n_5,Filter_out1_carry__2_n_6,Filter_out1_carry__2_n_7}),
        .S({Filter_out1_carry__2_i_1_n_0,Filter_out1_carry__2_i_2_n_0,Filter_out1_carry__2_i_3_n_0,Filter_out1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__2_i_1
       (.I0(Filter_x_reg_reg[15]),
        .O(Filter_out1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__2_i_2
       (.I0(Filter_x_reg_reg[14]),
        .O(Filter_out1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__2_i_3
       (.I0(Filter_x_reg_reg[13]),
        .O(Filter_out1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry__2_i_4
       (.I0(Filter_x_reg_reg[12]),
        .O(Filter_out1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry_i_1
       (.I0(Filter_x_reg_reg[3]),
        .O(Filter_out1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry_i_2
       (.I0(Filter_x_reg_reg[2]),
        .O(Filter_out1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Filter_out1_carry_i_3
       (.I0(Filter_x_reg_reg[1]),
        .O(Filter_out1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_2 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[3]),
        .O(\Filter_x_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_3 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[2]),
        .O(\Filter_x_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_4 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[1]),
        .O(\Filter_x_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[0]_i_5 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[0]),
        .O(\Filter_x_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_2 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[15]),
        .O(\Filter_x_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_3 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[14]),
        .O(\Filter_x_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_4 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[13]),
        .O(\Filter_x_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[12]_i_5 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[12]),
        .O(\Filter_x_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_2 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[7]),
        .O(\Filter_x_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_3 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[6]),
        .O(\Filter_x_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_4 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[5]),
        .O(\Filter_x_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[4]_i_5 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[4]),
        .O(\Filter_x_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_2 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[11]),
        .O(\Filter_x_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_3 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[10]),
        .O(\Filter_x_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_4 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[9]),
        .O(\Filter_x_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Filter_x_reg[8]_i_5 
       (.I0(\^gain_mul_temp ),
        .I1(Filter_x_reg_reg[8]),
        .O(\Filter_x_reg[8]_i_5_n_0 ));
  FDCE \Filter_x_reg_reg[0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1_n_7 ),
        .Q(Filter_x_reg_reg[0]));
  CARRY4 \Filter_x_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\Filter_x_reg_reg[0]_i_1_n_0 ,\Filter_x_reg_reg[0]_i_1_n_1 ,\Filter_x_reg_reg[0]_i_1_n_2 ,\Filter_x_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp }),
        .O({\Filter_x_reg_reg[0]_i_1_n_4 ,\Filter_x_reg_reg[0]_i_1_n_5 ,\Filter_x_reg_reg[0]_i_1_n_6 ,\Filter_x_reg_reg[0]_i_1_n_7 }),
        .S({\Filter_x_reg[0]_i_2_n_0 ,\Filter_x_reg[0]_i_3_n_0 ,\Filter_x_reg[0]_i_4_n_0 ,\Filter_x_reg[0]_i_5_n_0 }));
  FDCE \Filter_x_reg_reg[10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1_n_5 ),
        .Q(Filter_x_reg_reg[10]));
  FDCE \Filter_x_reg_reg[11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1_n_4 ),
        .Q(Filter_x_reg_reg[11]));
  FDCE \Filter_x_reg_reg[12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1_n_7 ),
        .Q(Filter_x_reg_reg[12]));
  CARRY4 \Filter_x_reg_reg[12]_i_1 
       (.CI(\Filter_x_reg_reg[8]_i_1_n_0 ),
        .CO({\NLW_Filter_x_reg_reg[12]_i_1_CO_UNCONNECTED [3],\Filter_x_reg_reg[12]_i_1_n_1 ,\Filter_x_reg_reg[12]_i_1_n_2 ,\Filter_x_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp }),
        .O({\Filter_x_reg_reg[12]_i_1_n_4 ,\Filter_x_reg_reg[12]_i_1_n_5 ,\Filter_x_reg_reg[12]_i_1_n_6 ,\Filter_x_reg_reg[12]_i_1_n_7 }),
        .S({\Filter_x_reg[12]_i_2_n_0 ,\Filter_x_reg[12]_i_3_n_0 ,\Filter_x_reg[12]_i_4_n_0 ,\Filter_x_reg[12]_i_5_n_0 }));
  FDCE \Filter_x_reg_reg[13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1_n_6 ),
        .Q(Filter_x_reg_reg[13]));
  FDCE \Filter_x_reg_reg[14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1_n_5 ),
        .Q(Filter_x_reg_reg[14]));
  FDCE \Filter_x_reg_reg[15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[12]_i_1_n_4 ),
        .Q(Filter_x_reg_reg[15]));
  FDCE \Filter_x_reg_reg[1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1_n_6 ),
        .Q(Filter_x_reg_reg[1]));
  FDCE \Filter_x_reg_reg[2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1_n_5 ),
        .Q(Filter_x_reg_reg[2]));
  FDCE \Filter_x_reg_reg[3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[0]_i_1_n_4 ),
        .Q(Filter_x_reg_reg[3]));
  FDCE \Filter_x_reg_reg[4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1_n_7 ),
        .Q(Filter_x_reg_reg[4]));
  CARRY4 \Filter_x_reg_reg[4]_i_1 
       (.CI(\Filter_x_reg_reg[0]_i_1_n_0 ),
        .CO({\Filter_x_reg_reg[4]_i_1_n_0 ,\Filter_x_reg_reg[4]_i_1_n_1 ,\Filter_x_reg_reg[4]_i_1_n_2 ,\Filter_x_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp }),
        .O({\Filter_x_reg_reg[4]_i_1_n_4 ,\Filter_x_reg_reg[4]_i_1_n_5 ,\Filter_x_reg_reg[4]_i_1_n_6 ,\Filter_x_reg_reg[4]_i_1_n_7 }),
        .S({\Filter_x_reg[4]_i_2_n_0 ,\Filter_x_reg[4]_i_3_n_0 ,\Filter_x_reg[4]_i_4_n_0 ,\Filter_x_reg[4]_i_5_n_0 }));
  FDCE \Filter_x_reg_reg[5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1_n_6 ),
        .Q(Filter_x_reg_reg[5]));
  FDCE \Filter_x_reg_reg[6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1_n_5 ),
        .Q(Filter_x_reg_reg[6]));
  FDCE \Filter_x_reg_reg[7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[4]_i_1_n_4 ),
        .Q(Filter_x_reg_reg[7]));
  FDCE \Filter_x_reg_reg[8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1_n_7 ),
        .Q(Filter_x_reg_reg[8]));
  CARRY4 \Filter_x_reg_reg[8]_i_1 
       (.CI(\Filter_x_reg_reg[4]_i_1_n_0 ),
        .CO({\Filter_x_reg_reg[8]_i_1_n_0 ,\Filter_x_reg_reg[8]_i_1_n_1 ,\Filter_x_reg_reg[8]_i_1_n_2 ,\Filter_x_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp ,\^gain_mul_temp }),
        .O({\Filter_x_reg_reg[8]_i_1_n_4 ,\Filter_x_reg_reg[8]_i_1_n_5 ,\Filter_x_reg_reg[8]_i_1_n_6 ,\Filter_x_reg_reg[8]_i_1_n_7 }),
        .S({\Filter_x_reg[8]_i_2_n_0 ,\Filter_x_reg[8]_i_3_n_0 ,\Filter_x_reg[8]_i_4_n_0 ,\Filter_x_reg[8]_i_5_n_0 }));
  FDCE \Filter_x_reg_reg[9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset_out),
        .D(\Filter_x_reg_reg[8]_i_1_n_6 ),
        .Q(Filter_x_reg_reg[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Proportional_Gain_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,In3}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Proportional_Gain_mul_temp_P_UNCONNECTED[47:32],Proportional_Gain_mul_temp_n_74,Sum_add_cast,Proportional_Gain_mul_temp_n_91,Proportional_Gain_mul_temp_n_92,Proportional_Gain_mul_temp_n_93,Proportional_Gain_mul_temp_n_94,Proportional_Gain_mul_temp_n_95,Proportional_Gain_mul_temp_n_96,Proportional_Gain_mul_temp_n_97,Proportional_Gain_mul_temp_n_98,Proportional_Gain_mul_temp_n_99,Proportional_Gain_mul_temp_n_100,Proportional_Gain_mul_temp_n_101,Proportional_Gain_mul_temp_n_102,Proportional_Gain_mul_temp_n_103,Proportional_Gain_mul_temp_n_104,Proportional_Gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED));
  CARRY4 Sum_add_temp_carry
       (.CI(1'b0),
        .CO({Sum_add_temp_carry_n_0,Sum_add_temp_carry_n_1,Sum_add_temp_carry_n_2,Sum_add_temp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Sum_add_cast[3:1],1'b0}),
        .O(NLW_Sum_add_temp_carry_O_UNCONNECTED[3:0]),
        .S({Sum_add_temp_carry_i_1_n_0,Sum_add_temp_carry_i_2_n_0,Sum_add_temp_carry_i_3_n_0,Sum_add_cast[0]}));
  CARRY4 Sum_add_temp_carry__0
       (.CI(Sum_add_temp_carry_n_0),
        .CO({Sum_add_temp_carry__0_n_0,Sum_add_temp_carry__0_n_1,Sum_add_temp_carry__0_n_2,Sum_add_temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Sum_add_cast[7:4]),
        .O({Sum_out1[2:0],NLW_Sum_add_temp_carry__0_O_UNCONNECTED[0]}),
        .S({Sum_add_temp_carry__0_i_1_n_0,Sum_add_temp_carry__0_i_2_n_0,Sum_add_temp_carry__0_i_3_n_0,Sum_add_temp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__0_i_1
       (.I0(Sum_add_cast[7]),
        .I1(Sum_add_cast_1[7]),
        .O(Sum_add_temp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__0_i_2
       (.I0(Sum_add_cast[6]),
        .I1(Sum_add_cast_1[6]),
        .O(Sum_add_temp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__0_i_3
       (.I0(Sum_add_cast[5]),
        .I1(Sum_add_cast_1[5]),
        .O(Sum_add_temp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__0_i_4
       (.I0(Sum_add_cast[4]),
        .I1(Sum_add_cast_1[4]),
        .O(Sum_add_temp_carry__0_i_4_n_0));
  CARRY4 Sum_add_temp_carry__1
       (.CI(Sum_add_temp_carry__0_n_0),
        .CO({Sum_add_temp_carry__1_n_0,Sum_add_temp_carry__1_n_1,Sum_add_temp_carry__1_n_2,Sum_add_temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Sum_add_cast[11:8]),
        .O(Sum_out1[6:3]),
        .S({Sum_add_temp_carry__1_i_1_n_0,Sum_add_temp_carry__1_i_2_n_0,Sum_add_temp_carry__1_i_3_n_0,Sum_add_temp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__1_i_1
       (.I0(Sum_add_cast[11]),
        .I1(Sum_add_cast_1[11]),
        .O(Sum_add_temp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__1_i_2
       (.I0(Sum_add_cast[10]),
        .I1(Sum_add_cast_1[10]),
        .O(Sum_add_temp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__1_i_3
       (.I0(Sum_add_cast[9]),
        .I1(Sum_add_cast_1[9]),
        .O(Sum_add_temp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__1_i_4
       (.I0(Sum_add_cast[8]),
        .I1(Sum_add_cast_1[8]),
        .O(Sum_add_temp_carry__1_i_4_n_0));
  CARRY4 Sum_add_temp_carry__2
       (.CI(Sum_add_temp_carry__1_n_0),
        .CO({NLW_Sum_add_temp_carry__2_CO_UNCONNECTED[3],Sum_add_temp_carry__2_n_1,Sum_add_temp_carry__2_n_2,Sum_add_temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Sum_add_cast[14:12]}),
        .O(Sum_out1[10:7]),
        .S({Sum_add_temp_carry__2_i_1_n_0,Sum_add_temp_carry__2_i_2_n_0,Sum_add_temp_carry__2_i_3_n_0,Sum_add_temp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__2_i_1
       (.I0(Sum_add_cast[15]),
        .I1(Sum_add_cast_1[15]),
        .O(Sum_add_temp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__2_i_2
       (.I0(Sum_add_cast[14]),
        .I1(Sum_add_cast_1[14]),
        .O(Sum_add_temp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__2_i_3
       (.I0(Sum_add_cast[13]),
        .I1(Sum_add_cast_1[13]),
        .O(Sum_add_temp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry__2_i_4
       (.I0(Sum_add_cast[12]),
        .I1(Sum_add_cast_1[12]),
        .O(Sum_add_temp_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry_i_1
       (.I0(Sum_add_cast[3]),
        .I1(Sum_add_cast_1[3]),
        .O(Sum_add_temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry_i_2
       (.I0(Sum_add_cast[2]),
        .I1(Sum_add_cast_1[2]),
        .O(Sum_add_temp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Sum_add_temp_carry_i_3
       (.I0(Sum_add_cast[1]),
        .I1(Sum_add_cast_1[1]),
        .O(Sum_add_temp_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    gain_mul_temp
       (.A({Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Filter_Coefficient_mul_temp_n_82,Sum_add_cast_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_gain_mul_temp_P_UNCONNECTED[47:31],\^gain_mul_temp ,gain_mul_temp_n_76,gain_mul_temp_n_77,gain_mul_temp_n_78,gain_mul_temp_n_79,gain_mul_temp_n_80,gain_mul_temp_n_81,gain_mul_temp_n_82,gain_mul_temp_n_83,gain_mul_temp_n_84,gain_mul_temp_n_85,gain_mul_temp_n_86,gain_mul_temp_n_87,gain_mul_temp_n_88,gain_mul_temp_n_89,gain_mul_temp_n_90,gain_mul_temp_n_91,gain_mul_temp_n_92,gain_mul_temp_n_93,gain_mul_temp_n_94,gain_mul_temp_n_95,gain_mul_temp_n_96,gain_mul_temp_n_97,gain_mul_temp_n_98,gain_mul_temp_n_99,gain_mul_temp_n_100,gain_mul_temp_n_101,gain_mul_temp_n_102,gain_mul_temp_n_103,gain_mul_temp_n_104,gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem
   (pwm_out,
    In3,
    In1,
    des_x,
    IPCORE_CLK,
    reset_out);
  output [14:0]pwm_out;
  input [15:0]In3;
  input [15:0]In1;
  input [14:0]des_x;
  input IPCORE_CLK;
  input reset_out;

  wire [15:0]B;
  wire IPCORE_CLK;
  wire [15:0]In1;
  wire [15:0]In3;
  wire Saturation1_out110_in;
  wire Saturation1_out11_carry__0_i_1_n_0;
  wire Saturation1_out11_carry__0_i_2_n_0;
  wire Saturation1_out11_carry__0_i_3_n_0;
  wire Saturation1_out11_carry__0_i_4_n_0;
  wire Saturation1_out11_carry__0_i_5_n_0;
  wire Saturation1_out11_carry__0_i_6_n_0;
  wire Saturation1_out11_carry__0_i_7_n_0;
  wire Saturation1_out11_carry__0_i_8_n_0;
  wire Saturation1_out11_carry__0_n_1;
  wire Saturation1_out11_carry__0_n_2;
  wire Saturation1_out11_carry__0_n_3;
  wire Saturation1_out11_carry_i_1_n_0;
  wire Saturation1_out11_carry_i_2_n_0;
  wire Saturation1_out11_carry_i_3_n_0;
  wire Saturation1_out11_carry_i_4_n_0;
  wire Saturation1_out11_carry_i_5_n_0;
  wire Saturation1_out11_carry_i_6_n_0;
  wire Saturation1_out11_carry_i_7_n_0;
  wire Saturation1_out11_carry_n_0;
  wire Saturation1_out11_carry_n_1;
  wire Saturation1_out11_carry_n_2;
  wire Saturation1_out11_carry_n_3;
  wire Sum2_sub_temp_carry__0_n_0;
  wire Sum2_sub_temp_carry__0_n_1;
  wire Sum2_sub_temp_carry__0_n_2;
  wire Sum2_sub_temp_carry__0_n_3;
  wire Sum2_sub_temp_carry__1_n_0;
  wire Sum2_sub_temp_carry__1_n_1;
  wire Sum2_sub_temp_carry__1_n_2;
  wire Sum2_sub_temp_carry__1_n_3;
  wire Sum2_sub_temp_carry__2_n_1;
  wire Sum2_sub_temp_carry__2_n_2;
  wire Sum2_sub_temp_carry__2_n_3;
  wire Sum2_sub_temp_carry_n_0;
  wire Sum2_sub_temp_carry_n_1;
  wire Sum2_sub_temp_carry_n_2;
  wire Sum2_sub_temp_carry_n_3;
  wire [18:9]Sum_add_temp_1;
  wire [15:5]Sum_out1;
  wire [14:0]des_x;
  wire [14:0]pwm_out;
  wire \pwm_out[10]_INST_0_i_2_n_0 ;
  wire \pwm_out[10]_INST_0_i_3_n_0 ;
  wire \pwm_out[10]_INST_0_i_4_n_0 ;
  wire \pwm_out[2]_INST_0_i_2_n_0 ;
  wire \pwm_out[2]_INST_0_i_3_n_0 ;
  wire \pwm_out[2]_INST_0_i_4_n_0 ;
  wire \pwm_out[6]_INST_0_i_2_n_0 ;
  wire \pwm_out[6]_INST_0_i_3_n_0 ;
  wire \pwm_out[6]_INST_0_i_4_n_0 ;
  wire \pwm_out[6]_INST_0_i_5_n_0 ;
  wire [15:0]pwm_out_1;
  wire reset_out;
  wire u_PID_Controller_n_10;
  wire u_PID_Controller_n_11;
  wire u_PID_Controller_n_12;
  wire u_PID_Controller_n_13;
  wire u_PID_Controller_n_14;
  wire u_PID_Controller_n_15;
  wire u_PID_Controller_n_16;
  wire u_PID_Controller_n_17;
  wire u_PID_Controller_n_34;
  wire u_PID_Controller_n_35;
  wire u_PID_Controller_n_36;
  wire u_PID_Controller_n_37;
  wire u_PID_Controller_n_38;
  wire u_PID_Controller_n_39;
  wire u_PID_Controller_n_40;
  wire u_PID_Controller_n_41;
  wire u_PID_Controller_n_42;
  wire u_PID_Controller_n_43;
  wire u_PID_Controller_n_44;
  wire u_PID_Controller_n_45;
  wire u_PID_Controller_n_46;
  wire u_PID_Controller_n_47;
  wire u_PID_Controller_n_48;
  wire u_PID_Controller_n_49;
  wire u_PID_Controller_n_50;
  wire u_PID_Controller_n_51;
  wire u_PID_Controller_n_52;
  wire u_PID_Controller_n_53;
  wire u_PID_Controller_n_54;
  wire u_PID_Controller_n_55;
  wire [3:0]NLW_Saturation1_out11_carry_O_UNCONNECTED;
  wire [3:0]NLW_Saturation1_out11_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_Sum2_sub_temp_carry__2_CO_UNCONNECTED;

  CARRY4 Saturation1_out11_carry
       (.CI(1'b0),
        .CO({Saturation1_out11_carry_n_0,Saturation1_out11_carry_n_1,Saturation1_out11_carry_n_2,Saturation1_out11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Saturation1_out11_carry_i_1_n_0,Saturation1_out11_carry_i_2_n_0,Saturation1_out11_carry_i_3_n_0,pwm_out_1[1]}),
        .O(NLW_Saturation1_out11_carry_O_UNCONNECTED[3:0]),
        .S({Saturation1_out11_carry_i_4_n_0,Saturation1_out11_carry_i_5_n_0,Saturation1_out11_carry_i_6_n_0,Saturation1_out11_carry_i_7_n_0}));
  CARRY4 Saturation1_out11_carry__0
       (.CI(Saturation1_out11_carry_n_0),
        .CO({Saturation1_out110_in,Saturation1_out11_carry__0_n_1,Saturation1_out11_carry__0_n_2,Saturation1_out11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Saturation1_out11_carry__0_i_1_n_0,Saturation1_out11_carry__0_i_2_n_0,Saturation1_out11_carry__0_i_3_n_0,Saturation1_out11_carry__0_i_4_n_0}),
        .O(NLW_Saturation1_out11_carry__0_O_UNCONNECTED[3:0]),
        .S({Saturation1_out11_carry__0_i_5_n_0,Saturation1_out11_carry__0_i_6_n_0,Saturation1_out11_carry__0_i_7_n_0,Saturation1_out11_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    Saturation1_out11_carry__0_i_1
       (.I0(pwm_out_1[14]),
        .I1(pwm_out_1[15]),
        .O(Saturation1_out11_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry__0_i_2
       (.I0(pwm_out_1[12]),
        .I1(pwm_out_1[13]),
        .O(Saturation1_out11_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry__0_i_3
       (.I0(pwm_out_1[10]),
        .I1(pwm_out_1[11]),
        .O(Saturation1_out11_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry__0_i_4
       (.I0(pwm_out_1[8]),
        .I1(pwm_out_1[9]),
        .O(Saturation1_out11_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry__0_i_5
       (.I0(pwm_out_1[14]),
        .I1(pwm_out_1[15]),
        .O(Saturation1_out11_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry__0_i_6
       (.I0(pwm_out_1[12]),
        .I1(pwm_out_1[13]),
        .O(Saturation1_out11_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry__0_i_7
       (.I0(pwm_out_1[10]),
        .I1(pwm_out_1[11]),
        .O(Saturation1_out11_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry__0_i_8
       (.I0(pwm_out_1[8]),
        .I1(pwm_out_1[9]),
        .O(Saturation1_out11_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry_i_1
       (.I0(pwm_out_1[6]),
        .I1(pwm_out_1[7]),
        .O(Saturation1_out11_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry_i_2
       (.I0(pwm_out_1[4]),
        .I1(pwm_out_1[5]),
        .O(Saturation1_out11_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Saturation1_out11_carry_i_3
       (.I0(pwm_out_1[2]),
        .I1(pwm_out_1[3]),
        .O(Saturation1_out11_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry_i_4
       (.I0(pwm_out_1[6]),
        .I1(pwm_out_1[7]),
        .O(Saturation1_out11_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry_i_5
       (.I0(pwm_out_1[4]),
        .I1(pwm_out_1[5]),
        .O(Saturation1_out11_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Saturation1_out11_carry_i_6
       (.I0(pwm_out_1[2]),
        .I1(pwm_out_1[3]),
        .O(Saturation1_out11_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Saturation1_out11_carry_i_7
       (.I0(pwm_out_1[0]),
        .I1(pwm_out_1[1]),
        .O(Saturation1_out11_carry_i_7_n_0));
  CARRY4 Sum2_sub_temp_carry
       (.CI(1'b0),
        .CO({Sum2_sub_temp_carry_n_0,Sum2_sub_temp_carry_n_1,Sum2_sub_temp_carry_n_2,Sum2_sub_temp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({u_PID_Controller_n_34,u_PID_Controller_n_35,u_PID_Controller_n_36,1'b0}),
        .O(B[3:0]),
        .S({u_PID_Controller_n_14,u_PID_Controller_n_15,u_PID_Controller_n_16,u_PID_Controller_n_17}));
  CARRY4 Sum2_sub_temp_carry__0
       (.CI(Sum2_sub_temp_carry_n_0),
        .CO({Sum2_sub_temp_carry__0_n_0,Sum2_sub_temp_carry__0_n_1,Sum2_sub_temp_carry__0_n_2,Sum2_sub_temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_PID_Controller_n_41,u_PID_Controller_n_42,u_PID_Controller_n_43,u_PID_Controller_n_44}),
        .O(B[7:4]),
        .S({u_PID_Controller_n_37,u_PID_Controller_n_38,u_PID_Controller_n_39,u_PID_Controller_n_40}));
  CARRY4 Sum2_sub_temp_carry__1
       (.CI(Sum2_sub_temp_carry__0_n_0),
        .CO({Sum2_sub_temp_carry__1_n_0,Sum2_sub_temp_carry__1_n_1,Sum2_sub_temp_carry__1_n_2,Sum2_sub_temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u_PID_Controller_n_49,u_PID_Controller_n_50,u_PID_Controller_n_51,u_PID_Controller_n_52}),
        .O(B[11:8]),
        .S({u_PID_Controller_n_45,u_PID_Controller_n_46,u_PID_Controller_n_47,u_PID_Controller_n_48}));
  CARRY4 Sum2_sub_temp_carry__2
       (.CI(Sum2_sub_temp_carry__1_n_0),
        .CO({NLW_Sum2_sub_temp_carry__2_CO_UNCONNECTED[3],Sum2_sub_temp_carry__2_n_1,Sum2_sub_temp_carry__2_n_2,Sum2_sub_temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,u_PID_Controller_n_53,u_PID_Controller_n_54,u_PID_Controller_n_55}),
        .O(B[15:12]),
        .S({u_PID_Controller_n_10,u_PID_Controller_n_11,u_PID_Controller_n_12,u_PID_Controller_n_13}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \pwm_out[0]_INST_0 
       (.I0(Saturation1_out110_in),
        .I1(pwm_out_1[15]),
        .I2(pwm_out_1[0]),
        .O(pwm_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[10]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[10]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[10]_INST_0_i_2 
       (.I0(Sum_add_temp_1[18]),
        .I1(Sum_out1[15]),
        .O(\pwm_out[10]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[10]_INST_0_i_3 
       (.I0(Sum_add_temp_1[17]),
        .I1(Sum_out1[14]),
        .O(\pwm_out[10]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[10]_INST_0_i_4 
       (.I0(Sum_add_temp_1[16]),
        .I1(Sum_out1[13]),
        .O(\pwm_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[11]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[11]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[12]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[12]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[13]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[13]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[14]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[14]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[14]));
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[1]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[1]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[2]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[2]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[2]_INST_0_i_2 
       (.I0(Sum_add_temp_1[11]),
        .I1(Sum_out1[8]),
        .O(\pwm_out[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[2]_INST_0_i_3 
       (.I0(Sum_add_temp_1[10]),
        .I1(Sum_out1[7]),
        .O(\pwm_out[2]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[2]_INST_0_i_4 
       (.I0(Sum_add_temp_1[9]),
        .I1(Sum_out1[6]),
        .O(\pwm_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[3]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[3]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[4]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[4]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[5]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[5]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[6]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[6]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[6]_INST_0_i_2 
       (.I0(Sum_add_temp_1[15]),
        .I1(Sum_out1[12]),
        .O(\pwm_out[6]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[6]_INST_0_i_3 
       (.I0(Sum_add_temp_1[14]),
        .I1(Sum_out1[11]),
        .O(\pwm_out[6]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[6]_INST_0_i_4 
       (.I0(Sum_add_temp_1[13]),
        .I1(Sum_out1[10]),
        .O(\pwm_out[6]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_out[6]_INST_0_i_5 
       (.I0(Sum_add_temp_1[12]),
        .I1(Sum_out1[9]),
        .O(\pwm_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[7]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[7]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[8]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[8]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \pwm_out[9]_INST_0 
       (.I0(pwm_out_1[15]),
        .I1(pwm_out_1[9]),
        .I2(Saturation1_out110_in),
        .O(pwm_out[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller u_PID_Controller
       (.DI({u_PID_Controller_n_34,u_PID_Controller_n_35,u_PID_Controller_n_36}),
        .IPCORE_CLK(IPCORE_CLK),
        .In1(In1),
        .\In1[4] (B),
        .Integral_Gain_mul_temp_0({u_PID_Controller_n_14,u_PID_Controller_n_15,u_PID_Controller_n_16,u_PID_Controller_n_17}),
        .Integral_Gain_mul_temp_1({u_PID_Controller_n_37,u_PID_Controller_n_38,u_PID_Controller_n_39,u_PID_Controller_n_40}),
        .Integral_Gain_mul_temp_2({u_PID_Controller_n_41,u_PID_Controller_n_42,u_PID_Controller_n_43,u_PID_Controller_n_44}),
        .Integral_Gain_mul_temp_3({u_PID_Controller_n_45,u_PID_Controller_n_46,u_PID_Controller_n_47,u_PID_Controller_n_48}),
        .Integral_Gain_mul_temp_4({u_PID_Controller_n_49,u_PID_Controller_n_50,u_PID_Controller_n_51,u_PID_Controller_n_52}),
        .Integral_Gain_mul_temp_5({u_PID_Controller_n_53,u_PID_Controller_n_54,u_PID_Controller_n_55}),
        .Proportional_Gain_mul_temp_0({\pwm_out[2]_INST_0_i_2_n_0 ,\pwm_out[2]_INST_0_i_3_n_0 ,\pwm_out[2]_INST_0_i_4_n_0 ,Sum_out1[5]}),
        .Proportional_Gain_mul_temp_1({\pwm_out[6]_INST_0_i_2_n_0 ,\pwm_out[6]_INST_0_i_3_n_0 ,\pwm_out[6]_INST_0_i_4_n_0 ,\pwm_out[6]_INST_0_i_5_n_0 }),
        .Proportional_Gain_mul_temp_2({\pwm_out[10]_INST_0_i_2_n_0 ,\pwm_out[10]_INST_0_i_3_n_0 ,\pwm_out[10]_INST_0_i_4_n_0 }),
        .S({u_PID_Controller_n_10,u_PID_Controller_n_11,u_PID_Controller_n_12,u_PID_Controller_n_13}),
        .des_x(des_x),
        .\pwm_out[0] (Sum_add_temp_1),
        .pwm_out_1(pwm_out_1),
        .reset_out(reset_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1 u_PID_Controller1
       (.IPCORE_CLK(IPCORE_CLK),
        .In3(In3),
        .Sum_out1(Sum_out1),
        .reset_out(reset_out));
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
