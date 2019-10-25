// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 23 18:06:19 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_acs_crane_ip_0_0_sim_netlist.v
// Design      : Block_design_acs_crane_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_design_acs_crane_ip_0_0,acs_crane_ip,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "acs_crane_ip,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (IPCORE_CLK,
    IPCORE_RESETN,
    destination_x,
    desired_angle,
    position,
    angle,
    pwm);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 5000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK1" *) input IPCORE_CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW" *) input IPCORE_RESETN;
  input [31:0]destination_x;
  input [15:0]desired_angle;
  input [31:0]position;
  input [15:0]angle;
  output [15:0]pwm;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [15:0]angle;
  wire [15:0]desired_angle;
  wire [31:0]destination_x;
  wire [31:0]position;
  wire [15:0]pwm;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip U0
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .angle(angle[14:0]),
        .desired_angle(desired_angle[14:0]),
        .destination_x(destination_x),
        .position(position),
        .pwm(pwm));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip
   (pwm,
    angle,
    desired_angle,
    IPCORE_CLK,
    position,
    destination_x,
    IPCORE_RESETN);
  output [15:0]pwm;
  input [14:0]angle;
  input [14:0]desired_angle;
  input IPCORE_CLK;
  input [31:0]position;
  input [31:0]destination_x;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire [14:0]angle;
  wire [14:0]desired_angle;
  wire [31:0]destination_x;
  wire [31:0]position;
  wire [15:0]pwm;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut u_acs_crane_ip_dut_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .angle(angle),
        .desired_angle(desired_angle),
        .destination_x(destination_x),
        .position(position),
        .pwm(pwm),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync u_acs_crane_ip_reset_sync_inst
       (.IPCORE_CLK(IPCORE_CLK),
        .IPCORE_RESETN(IPCORE_RESETN),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut
   (pwm,
    position,
    destination_x,
    angle,
    desired_angle,
    IPCORE_CLK,
    reset);
  output [15:0]pwm;
  input [31:0]position;
  input [31:0]destination_x;
  input [14:0]angle;
  input [14:0]desired_angle;
  input IPCORE_CLK;
  input reset;

  wire IPCORE_CLK;
  wire [14:0]angle;
  wire [14:0]desired_angle;
  wire [31:0]destination_x;
  wire [31:0]position;
  wire [15:0]pwm;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1 u_acs_crane_ip_src_Subsystem1
       (.IPCORE_CLK(IPCORE_CLK),
        .angle(angle),
        .desired_angle(desired_angle),
        .destination_x(destination_x),
        .position(position),
        .pwm(pwm),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync
   (reset,
    IPCORE_CLK,
    IPCORE_RESETN);
  output reset;
  input IPCORE_CLK;
  input IPCORE_RESETN;

  wire IPCORE_CLK;
  wire IPCORE_RESETN;
  wire reset;
  wire reset_in;
  wire reset_pipe;

  FDPE reset_out_reg
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .D(reset_pipe),
        .PRE(reset_in),
        .Q(reset));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1
   (pwm,
    position,
    destination_x,
    angle,
    desired_angle,
    IPCORE_CLK,
    reset);
  output [15:0]pwm;
  input [31:0]position;
  input [31:0]destination_x;
  input [14:0]angle;
  input [14:0]desired_angle;
  input IPCORE_CLK;
  input reset;

  wire [14:0]A;
  wire [15:13]B;
  wire Gain1_mul_temp__0_n_100;
  wire Gain1_mul_temp__0_n_101;
  wire Gain1_mul_temp__0_n_102;
  wire Gain1_mul_temp__0_n_103;
  wire Gain1_mul_temp__0_n_104;
  wire Gain1_mul_temp__0_n_105;
  wire Gain1_mul_temp__0_n_58;
  wire Gain1_mul_temp__0_n_59;
  wire Gain1_mul_temp__0_n_60;
  wire Gain1_mul_temp__0_n_61;
  wire Gain1_mul_temp__0_n_62;
  wire Gain1_mul_temp__0_n_63;
  wire Gain1_mul_temp__0_n_64;
  wire Gain1_mul_temp__0_n_65;
  wire Gain1_mul_temp__0_n_66;
  wire Gain1_mul_temp__0_n_67;
  wire Gain1_mul_temp__0_n_68;
  wire Gain1_mul_temp__0_n_69;
  wire Gain1_mul_temp__0_n_70;
  wire Gain1_mul_temp__0_n_71;
  wire Gain1_mul_temp__0_n_72;
  wire Gain1_mul_temp__0_n_73;
  wire Gain1_mul_temp__0_n_74;
  wire Gain1_mul_temp__0_n_75;
  wire Gain1_mul_temp__0_n_76;
  wire Gain1_mul_temp__0_n_77;
  wire Gain1_mul_temp__0_n_78;
  wire Gain1_mul_temp__0_n_79;
  wire Gain1_mul_temp__0_n_80;
  wire Gain1_mul_temp__0_n_81;
  wire Gain1_mul_temp__0_n_82;
  wire Gain1_mul_temp__0_n_83;
  wire Gain1_mul_temp__0_n_84;
  wire Gain1_mul_temp__0_n_85;
  wire Gain1_mul_temp__0_n_86;
  wire Gain1_mul_temp__0_n_87;
  wire Gain1_mul_temp__0_n_88;
  wire Gain1_mul_temp__0_n_89;
  wire Gain1_mul_temp__0_n_90;
  wire Gain1_mul_temp__0_n_91;
  wire Gain1_mul_temp__0_n_92;
  wire Gain1_mul_temp__0_n_93;
  wire Gain1_mul_temp__0_n_94;
  wire Gain1_mul_temp__0_n_95;
  wire Gain1_mul_temp__0_n_96;
  wire Gain1_mul_temp__0_n_97;
  wire Gain1_mul_temp__0_n_98;
  wire Gain1_mul_temp__0_n_99;
  wire Gain1_mul_temp__1_n_100;
  wire Gain1_mul_temp__1_n_101;
  wire Gain1_mul_temp__1_n_102;
  wire Gain1_mul_temp__1_n_103;
  wire Gain1_mul_temp__1_n_104;
  wire Gain1_mul_temp__1_n_105;
  wire Gain1_mul_temp__1_n_106;
  wire Gain1_mul_temp__1_n_107;
  wire Gain1_mul_temp__1_n_108;
  wire Gain1_mul_temp__1_n_109;
  wire Gain1_mul_temp__1_n_110;
  wire Gain1_mul_temp__1_n_111;
  wire Gain1_mul_temp__1_n_112;
  wire Gain1_mul_temp__1_n_113;
  wire Gain1_mul_temp__1_n_114;
  wire Gain1_mul_temp__1_n_115;
  wire Gain1_mul_temp__1_n_116;
  wire Gain1_mul_temp__1_n_117;
  wire Gain1_mul_temp__1_n_118;
  wire Gain1_mul_temp__1_n_119;
  wire Gain1_mul_temp__1_n_120;
  wire Gain1_mul_temp__1_n_121;
  wire Gain1_mul_temp__1_n_122;
  wire Gain1_mul_temp__1_n_123;
  wire Gain1_mul_temp__1_n_124;
  wire Gain1_mul_temp__1_n_125;
  wire Gain1_mul_temp__1_n_126;
  wire Gain1_mul_temp__1_n_127;
  wire Gain1_mul_temp__1_n_128;
  wire Gain1_mul_temp__1_n_129;
  wire Gain1_mul_temp__1_n_130;
  wire Gain1_mul_temp__1_n_131;
  wire Gain1_mul_temp__1_n_132;
  wire Gain1_mul_temp__1_n_133;
  wire Gain1_mul_temp__1_n_134;
  wire Gain1_mul_temp__1_n_135;
  wire Gain1_mul_temp__1_n_136;
  wire Gain1_mul_temp__1_n_137;
  wire Gain1_mul_temp__1_n_138;
  wire Gain1_mul_temp__1_n_139;
  wire Gain1_mul_temp__1_n_140;
  wire Gain1_mul_temp__1_n_141;
  wire Gain1_mul_temp__1_n_142;
  wire Gain1_mul_temp__1_n_143;
  wire Gain1_mul_temp__1_n_144;
  wire Gain1_mul_temp__1_n_145;
  wire Gain1_mul_temp__1_n_146;
  wire Gain1_mul_temp__1_n_147;
  wire Gain1_mul_temp__1_n_148;
  wire Gain1_mul_temp__1_n_149;
  wire Gain1_mul_temp__1_n_150;
  wire Gain1_mul_temp__1_n_151;
  wire Gain1_mul_temp__1_n_152;
  wire Gain1_mul_temp__1_n_153;
  wire Gain1_mul_temp__1_n_24;
  wire Gain1_mul_temp__1_n_25;
  wire Gain1_mul_temp__1_n_26;
  wire Gain1_mul_temp__1_n_27;
  wire Gain1_mul_temp__1_n_28;
  wire Gain1_mul_temp__1_n_29;
  wire Gain1_mul_temp__1_n_30;
  wire Gain1_mul_temp__1_n_31;
  wire Gain1_mul_temp__1_n_32;
  wire Gain1_mul_temp__1_n_33;
  wire Gain1_mul_temp__1_n_34;
  wire Gain1_mul_temp__1_n_35;
  wire Gain1_mul_temp__1_n_36;
  wire Gain1_mul_temp__1_n_37;
  wire Gain1_mul_temp__1_n_38;
  wire Gain1_mul_temp__1_n_39;
  wire Gain1_mul_temp__1_n_40;
  wire Gain1_mul_temp__1_n_41;
  wire Gain1_mul_temp__1_n_42;
  wire Gain1_mul_temp__1_n_43;
  wire Gain1_mul_temp__1_n_44;
  wire Gain1_mul_temp__1_n_45;
  wire Gain1_mul_temp__1_n_46;
  wire Gain1_mul_temp__1_n_47;
  wire Gain1_mul_temp__1_n_48;
  wire Gain1_mul_temp__1_n_49;
  wire Gain1_mul_temp__1_n_50;
  wire Gain1_mul_temp__1_n_51;
  wire Gain1_mul_temp__1_n_52;
  wire Gain1_mul_temp__1_n_53;
  wire Gain1_mul_temp__1_n_58;
  wire Gain1_mul_temp__1_n_59;
  wire Gain1_mul_temp__1_n_60;
  wire Gain1_mul_temp__1_n_61;
  wire Gain1_mul_temp__1_n_62;
  wire Gain1_mul_temp__1_n_63;
  wire Gain1_mul_temp__1_n_64;
  wire Gain1_mul_temp__1_n_65;
  wire Gain1_mul_temp__1_n_66;
  wire Gain1_mul_temp__1_n_67;
  wire Gain1_mul_temp__1_n_68;
  wire Gain1_mul_temp__1_n_69;
  wire Gain1_mul_temp__1_n_70;
  wire Gain1_mul_temp__1_n_71;
  wire Gain1_mul_temp__1_n_72;
  wire Gain1_mul_temp__1_n_73;
  wire Gain1_mul_temp__1_n_74;
  wire Gain1_mul_temp__1_n_75;
  wire Gain1_mul_temp__1_n_76;
  wire Gain1_mul_temp__1_n_77;
  wire Gain1_mul_temp__1_n_78;
  wire Gain1_mul_temp__1_n_79;
  wire Gain1_mul_temp__1_n_80;
  wire Gain1_mul_temp__1_n_81;
  wire Gain1_mul_temp__1_n_82;
  wire Gain1_mul_temp__1_n_83;
  wire Gain1_mul_temp__1_n_84;
  wire Gain1_mul_temp__1_n_85;
  wire Gain1_mul_temp__1_n_86;
  wire Gain1_mul_temp__1_n_87;
  wire Gain1_mul_temp__1_n_88;
  wire Gain1_mul_temp__1_n_89;
  wire Gain1_mul_temp__1_n_90;
  wire Gain1_mul_temp__1_n_91;
  wire Gain1_mul_temp__1_n_92;
  wire Gain1_mul_temp__1_n_93;
  wire Gain1_mul_temp__1_n_94;
  wire Gain1_mul_temp__1_n_95;
  wire Gain1_mul_temp__1_n_96;
  wire Gain1_mul_temp__1_n_97;
  wire Gain1_mul_temp__1_n_98;
  wire Gain1_mul_temp__1_n_99;
  wire Gain1_mul_temp__2_n_100;
  wire Gain1_mul_temp__2_n_101;
  wire Gain1_mul_temp__2_n_102;
  wire Gain1_mul_temp__2_n_103;
  wire Gain1_mul_temp__2_n_104;
  wire Gain1_mul_temp__2_n_105;
  wire Gain1_mul_temp__2_n_58;
  wire Gain1_mul_temp__2_n_59;
  wire Gain1_mul_temp__2_n_60;
  wire Gain1_mul_temp__2_n_61;
  wire Gain1_mul_temp__2_n_62;
  wire Gain1_mul_temp__2_n_63;
  wire Gain1_mul_temp__2_n_64;
  wire Gain1_mul_temp__2_n_65;
  wire Gain1_mul_temp__2_n_66;
  wire Gain1_mul_temp__2_n_67;
  wire Gain1_mul_temp__2_n_68;
  wire Gain1_mul_temp__2_n_69;
  wire Gain1_mul_temp__2_n_70;
  wire Gain1_mul_temp__2_n_71;
  wire Gain1_mul_temp__2_n_72;
  wire Gain1_mul_temp__2_n_73;
  wire Gain1_mul_temp__2_n_74;
  wire Gain1_mul_temp__2_n_75;
  wire Gain1_mul_temp__2_n_76;
  wire Gain1_mul_temp__2_n_77;
  wire Gain1_mul_temp__2_n_78;
  wire Gain1_mul_temp__2_n_79;
  wire Gain1_mul_temp__2_n_80;
  wire Gain1_mul_temp__2_n_81;
  wire Gain1_mul_temp__2_n_82;
  wire Gain1_mul_temp__2_n_83;
  wire Gain1_mul_temp__2_n_84;
  wire Gain1_mul_temp__2_n_85;
  wire Gain1_mul_temp__2_n_86;
  wire Gain1_mul_temp__2_n_87;
  wire Gain1_mul_temp__2_n_88;
  wire Gain1_mul_temp__2_n_89;
  wire Gain1_mul_temp__2_n_90;
  wire Gain1_mul_temp__2_n_91;
  wire Gain1_mul_temp__2_n_92;
  wire Gain1_mul_temp__2_n_93;
  wire Gain1_mul_temp__2_n_94;
  wire Gain1_mul_temp__2_n_95;
  wire Gain1_mul_temp__2_n_96;
  wire Gain1_mul_temp__2_n_97;
  wire Gain1_mul_temp__2_n_98;
  wire Gain1_mul_temp__2_n_99;
  wire [63:59]Gain1_mul_temp__3;
  wire Gain1_mul_temp_n_100;
  wire Gain1_mul_temp_n_101;
  wire Gain1_mul_temp_n_102;
  wire Gain1_mul_temp_n_103;
  wire Gain1_mul_temp_n_104;
  wire Gain1_mul_temp_n_105;
  wire Gain1_mul_temp_n_106;
  wire Gain1_mul_temp_n_107;
  wire Gain1_mul_temp_n_108;
  wire Gain1_mul_temp_n_109;
  wire Gain1_mul_temp_n_110;
  wire Gain1_mul_temp_n_111;
  wire Gain1_mul_temp_n_112;
  wire Gain1_mul_temp_n_113;
  wire Gain1_mul_temp_n_114;
  wire Gain1_mul_temp_n_115;
  wire Gain1_mul_temp_n_116;
  wire Gain1_mul_temp_n_117;
  wire Gain1_mul_temp_n_118;
  wire Gain1_mul_temp_n_119;
  wire Gain1_mul_temp_n_120;
  wire Gain1_mul_temp_n_121;
  wire Gain1_mul_temp_n_122;
  wire Gain1_mul_temp_n_123;
  wire Gain1_mul_temp_n_124;
  wire Gain1_mul_temp_n_125;
  wire Gain1_mul_temp_n_126;
  wire Gain1_mul_temp_n_127;
  wire Gain1_mul_temp_n_128;
  wire Gain1_mul_temp_n_129;
  wire Gain1_mul_temp_n_130;
  wire Gain1_mul_temp_n_131;
  wire Gain1_mul_temp_n_132;
  wire Gain1_mul_temp_n_133;
  wire Gain1_mul_temp_n_134;
  wire Gain1_mul_temp_n_135;
  wire Gain1_mul_temp_n_136;
  wire Gain1_mul_temp_n_137;
  wire Gain1_mul_temp_n_138;
  wire Gain1_mul_temp_n_139;
  wire Gain1_mul_temp_n_140;
  wire Gain1_mul_temp_n_141;
  wire Gain1_mul_temp_n_142;
  wire Gain1_mul_temp_n_143;
  wire Gain1_mul_temp_n_144;
  wire Gain1_mul_temp_n_145;
  wire Gain1_mul_temp_n_146;
  wire Gain1_mul_temp_n_147;
  wire Gain1_mul_temp_n_148;
  wire Gain1_mul_temp_n_149;
  wire Gain1_mul_temp_n_150;
  wire Gain1_mul_temp_n_151;
  wire Gain1_mul_temp_n_152;
  wire Gain1_mul_temp_n_153;
  wire Gain1_mul_temp_n_58;
  wire Gain1_mul_temp_n_59;
  wire Gain1_mul_temp_n_60;
  wire Gain1_mul_temp_n_61;
  wire Gain1_mul_temp_n_62;
  wire Gain1_mul_temp_n_63;
  wire Gain1_mul_temp_n_64;
  wire Gain1_mul_temp_n_65;
  wire Gain1_mul_temp_n_66;
  wire Gain1_mul_temp_n_67;
  wire Gain1_mul_temp_n_68;
  wire Gain1_mul_temp_n_69;
  wire Gain1_mul_temp_n_70;
  wire Gain1_mul_temp_n_71;
  wire Gain1_mul_temp_n_72;
  wire Gain1_mul_temp_n_73;
  wire Gain1_mul_temp_n_74;
  wire Gain1_mul_temp_n_75;
  wire Gain1_mul_temp_n_76;
  wire Gain1_mul_temp_n_77;
  wire Gain1_mul_temp_n_78;
  wire Gain1_mul_temp_n_79;
  wire Gain1_mul_temp_n_80;
  wire Gain1_mul_temp_n_81;
  wire Gain1_mul_temp_n_82;
  wire Gain1_mul_temp_n_83;
  wire Gain1_mul_temp_n_84;
  wire Gain1_mul_temp_n_85;
  wire Gain1_mul_temp_n_86;
  wire Gain1_mul_temp_n_87;
  wire Gain1_mul_temp_n_88;
  wire Gain1_mul_temp_n_89;
  wire Gain1_mul_temp_n_90;
  wire Gain1_mul_temp_n_91;
  wire Gain1_mul_temp_n_92;
  wire Gain1_mul_temp_n_93;
  wire Gain1_mul_temp_n_94;
  wire Gain1_mul_temp_n_95;
  wire Gain1_mul_temp_n_96;
  wire Gain1_mul_temp_n_97;
  wire Gain1_mul_temp_n_98;
  wire Gain1_mul_temp_n_99;
  wire Gain2_mul_temp__0_n_100;
  wire Gain2_mul_temp__0_n_101;
  wire Gain2_mul_temp__0_n_102;
  wire Gain2_mul_temp__0_n_103;
  wire Gain2_mul_temp__0_n_104;
  wire Gain2_mul_temp__0_n_105;
  wire Gain2_mul_temp__0_n_58;
  wire Gain2_mul_temp__0_n_59;
  wire Gain2_mul_temp__0_n_60;
  wire Gain2_mul_temp__0_n_61;
  wire Gain2_mul_temp__0_n_62;
  wire Gain2_mul_temp__0_n_63;
  wire Gain2_mul_temp__0_n_64;
  wire Gain2_mul_temp__0_n_65;
  wire Gain2_mul_temp__0_n_66;
  wire Gain2_mul_temp__0_n_67;
  wire Gain2_mul_temp__0_n_68;
  wire Gain2_mul_temp__0_n_69;
  wire Gain2_mul_temp__0_n_70;
  wire Gain2_mul_temp__0_n_71;
  wire Gain2_mul_temp__0_n_72;
  wire Gain2_mul_temp__0_n_73;
  wire Gain2_mul_temp__0_n_74;
  wire Gain2_mul_temp__0_n_75;
  wire Gain2_mul_temp__0_n_76;
  wire Gain2_mul_temp__0_n_77;
  wire Gain2_mul_temp__0_n_78;
  wire Gain2_mul_temp__0_n_79;
  wire Gain2_mul_temp__0_n_80;
  wire Gain2_mul_temp__0_n_81;
  wire Gain2_mul_temp__0_n_82;
  wire Gain2_mul_temp__0_n_83;
  wire Gain2_mul_temp__0_n_84;
  wire Gain2_mul_temp__0_n_85;
  wire Gain2_mul_temp__0_n_86;
  wire Gain2_mul_temp__0_n_87;
  wire Gain2_mul_temp__0_n_88;
  wire Gain2_mul_temp__0_n_89;
  wire Gain2_mul_temp__0_n_90;
  wire Gain2_mul_temp__0_n_91;
  wire Gain2_mul_temp__0_n_92;
  wire Gain2_mul_temp__0_n_93;
  wire Gain2_mul_temp__0_n_94;
  wire Gain2_mul_temp__0_n_95;
  wire Gain2_mul_temp__0_n_96;
  wire Gain2_mul_temp__0_n_97;
  wire Gain2_mul_temp__0_n_98;
  wire Gain2_mul_temp__0_n_99;
  wire Gain2_mul_temp__1_n_100;
  wire Gain2_mul_temp__1_n_101;
  wire Gain2_mul_temp__1_n_102;
  wire Gain2_mul_temp__1_n_103;
  wire Gain2_mul_temp__1_n_104;
  wire Gain2_mul_temp__1_n_105;
  wire Gain2_mul_temp__1_n_106;
  wire Gain2_mul_temp__1_n_107;
  wire Gain2_mul_temp__1_n_108;
  wire Gain2_mul_temp__1_n_109;
  wire Gain2_mul_temp__1_n_110;
  wire Gain2_mul_temp__1_n_111;
  wire Gain2_mul_temp__1_n_112;
  wire Gain2_mul_temp__1_n_113;
  wire Gain2_mul_temp__1_n_114;
  wire Gain2_mul_temp__1_n_115;
  wire Gain2_mul_temp__1_n_116;
  wire Gain2_mul_temp__1_n_117;
  wire Gain2_mul_temp__1_n_118;
  wire Gain2_mul_temp__1_n_119;
  wire Gain2_mul_temp__1_n_120;
  wire Gain2_mul_temp__1_n_121;
  wire Gain2_mul_temp__1_n_122;
  wire Gain2_mul_temp__1_n_123;
  wire Gain2_mul_temp__1_n_124;
  wire Gain2_mul_temp__1_n_125;
  wire Gain2_mul_temp__1_n_126;
  wire Gain2_mul_temp__1_n_127;
  wire Gain2_mul_temp__1_n_128;
  wire Gain2_mul_temp__1_n_129;
  wire Gain2_mul_temp__1_n_130;
  wire Gain2_mul_temp__1_n_131;
  wire Gain2_mul_temp__1_n_132;
  wire Gain2_mul_temp__1_n_133;
  wire Gain2_mul_temp__1_n_134;
  wire Gain2_mul_temp__1_n_135;
  wire Gain2_mul_temp__1_n_136;
  wire Gain2_mul_temp__1_n_137;
  wire Gain2_mul_temp__1_n_138;
  wire Gain2_mul_temp__1_n_139;
  wire Gain2_mul_temp__1_n_140;
  wire Gain2_mul_temp__1_n_141;
  wire Gain2_mul_temp__1_n_142;
  wire Gain2_mul_temp__1_n_143;
  wire Gain2_mul_temp__1_n_144;
  wire Gain2_mul_temp__1_n_145;
  wire Gain2_mul_temp__1_n_146;
  wire Gain2_mul_temp__1_n_147;
  wire Gain2_mul_temp__1_n_148;
  wire Gain2_mul_temp__1_n_149;
  wire Gain2_mul_temp__1_n_150;
  wire Gain2_mul_temp__1_n_151;
  wire Gain2_mul_temp__1_n_152;
  wire Gain2_mul_temp__1_n_153;
  wire Gain2_mul_temp__1_n_24;
  wire Gain2_mul_temp__1_n_25;
  wire Gain2_mul_temp__1_n_26;
  wire Gain2_mul_temp__1_n_27;
  wire Gain2_mul_temp__1_n_28;
  wire Gain2_mul_temp__1_n_29;
  wire Gain2_mul_temp__1_n_30;
  wire Gain2_mul_temp__1_n_31;
  wire Gain2_mul_temp__1_n_32;
  wire Gain2_mul_temp__1_n_33;
  wire Gain2_mul_temp__1_n_34;
  wire Gain2_mul_temp__1_n_35;
  wire Gain2_mul_temp__1_n_36;
  wire Gain2_mul_temp__1_n_37;
  wire Gain2_mul_temp__1_n_38;
  wire Gain2_mul_temp__1_n_39;
  wire Gain2_mul_temp__1_n_40;
  wire Gain2_mul_temp__1_n_41;
  wire Gain2_mul_temp__1_n_42;
  wire Gain2_mul_temp__1_n_43;
  wire Gain2_mul_temp__1_n_44;
  wire Gain2_mul_temp__1_n_45;
  wire Gain2_mul_temp__1_n_46;
  wire Gain2_mul_temp__1_n_47;
  wire Gain2_mul_temp__1_n_48;
  wire Gain2_mul_temp__1_n_49;
  wire Gain2_mul_temp__1_n_50;
  wire Gain2_mul_temp__1_n_51;
  wire Gain2_mul_temp__1_n_52;
  wire Gain2_mul_temp__1_n_53;
  wire Gain2_mul_temp__1_n_58;
  wire Gain2_mul_temp__1_n_59;
  wire Gain2_mul_temp__1_n_60;
  wire Gain2_mul_temp__1_n_61;
  wire Gain2_mul_temp__1_n_62;
  wire Gain2_mul_temp__1_n_63;
  wire Gain2_mul_temp__1_n_64;
  wire Gain2_mul_temp__1_n_65;
  wire Gain2_mul_temp__1_n_66;
  wire Gain2_mul_temp__1_n_67;
  wire Gain2_mul_temp__1_n_68;
  wire Gain2_mul_temp__1_n_69;
  wire Gain2_mul_temp__1_n_70;
  wire Gain2_mul_temp__1_n_71;
  wire Gain2_mul_temp__1_n_72;
  wire Gain2_mul_temp__1_n_73;
  wire Gain2_mul_temp__1_n_74;
  wire Gain2_mul_temp__1_n_75;
  wire Gain2_mul_temp__1_n_76;
  wire Gain2_mul_temp__1_n_77;
  wire Gain2_mul_temp__1_n_78;
  wire Gain2_mul_temp__1_n_79;
  wire Gain2_mul_temp__1_n_80;
  wire Gain2_mul_temp__1_n_81;
  wire Gain2_mul_temp__1_n_82;
  wire Gain2_mul_temp__1_n_83;
  wire Gain2_mul_temp__1_n_84;
  wire Gain2_mul_temp__1_n_85;
  wire Gain2_mul_temp__1_n_86;
  wire Gain2_mul_temp__1_n_87;
  wire Gain2_mul_temp__1_n_88;
  wire Gain2_mul_temp__1_n_89;
  wire Gain2_mul_temp__1_n_90;
  wire Gain2_mul_temp__1_n_91;
  wire Gain2_mul_temp__1_n_92;
  wire Gain2_mul_temp__1_n_93;
  wire Gain2_mul_temp__1_n_94;
  wire Gain2_mul_temp__1_n_95;
  wire Gain2_mul_temp__1_n_96;
  wire Gain2_mul_temp__1_n_97;
  wire Gain2_mul_temp__1_n_98;
  wire Gain2_mul_temp__1_n_99;
  wire Gain2_mul_temp__2_n_100;
  wire Gain2_mul_temp__2_n_101;
  wire Gain2_mul_temp__2_n_102;
  wire Gain2_mul_temp__2_n_103;
  wire Gain2_mul_temp__2_n_104;
  wire Gain2_mul_temp__2_n_105;
  wire Gain2_mul_temp__2_n_58;
  wire Gain2_mul_temp__2_n_59;
  wire Gain2_mul_temp__2_n_60;
  wire Gain2_mul_temp__2_n_61;
  wire Gain2_mul_temp__2_n_62;
  wire Gain2_mul_temp__2_n_63;
  wire Gain2_mul_temp__2_n_64;
  wire Gain2_mul_temp__2_n_65;
  wire Gain2_mul_temp__2_n_66;
  wire Gain2_mul_temp__2_n_67;
  wire Gain2_mul_temp__2_n_68;
  wire Gain2_mul_temp__2_n_69;
  wire Gain2_mul_temp__2_n_70;
  wire Gain2_mul_temp__2_n_71;
  wire Gain2_mul_temp__2_n_72;
  wire Gain2_mul_temp__2_n_73;
  wire Gain2_mul_temp__2_n_74;
  wire Gain2_mul_temp__2_n_75;
  wire Gain2_mul_temp__2_n_76;
  wire Gain2_mul_temp__2_n_77;
  wire Gain2_mul_temp__2_n_78;
  wire Gain2_mul_temp__2_n_79;
  wire Gain2_mul_temp__2_n_80;
  wire Gain2_mul_temp__2_n_81;
  wire Gain2_mul_temp__2_n_82;
  wire Gain2_mul_temp__2_n_83;
  wire Gain2_mul_temp__2_n_84;
  wire Gain2_mul_temp__2_n_85;
  wire Gain2_mul_temp__2_n_86;
  wire Gain2_mul_temp__2_n_87;
  wire Gain2_mul_temp__2_n_88;
  wire Gain2_mul_temp__2_n_89;
  wire Gain2_mul_temp__2_n_90;
  wire Gain2_mul_temp__2_n_91;
  wire Gain2_mul_temp__2_n_92;
  wire Gain2_mul_temp__2_n_93;
  wire Gain2_mul_temp__2_n_94;
  wire Gain2_mul_temp__2_n_95;
  wire Gain2_mul_temp__2_n_96;
  wire Gain2_mul_temp__2_n_97;
  wire Gain2_mul_temp__2_n_98;
  wire Gain2_mul_temp__2_n_99;
  wire [63:59]Gain2_mul_temp__3;
  wire Gain2_mul_temp_carry__0_i_1_n_0;
  wire Gain2_mul_temp_carry__0_i_2_n_0;
  wire Gain2_mul_temp_carry__0_i_3_n_0;
  wire Gain2_mul_temp_carry__0_i_4_n_0;
  wire Gain2_mul_temp_carry__0_n_0;
  wire Gain2_mul_temp_carry__0_n_1;
  wire Gain2_mul_temp_carry__0_n_2;
  wire Gain2_mul_temp_carry__0_n_3;
  wire Gain2_mul_temp_carry__10_i_1_n_0;
  wire Gain2_mul_temp_carry__10_i_2_n_0;
  wire Gain2_mul_temp_carry__10_i_3_n_0;
  wire Gain2_mul_temp_carry__10_i_4_n_0;
  wire Gain2_mul_temp_carry__10_n_1;
  wire Gain2_mul_temp_carry__10_n_2;
  wire Gain2_mul_temp_carry__10_n_3;
  wire Gain2_mul_temp_carry__1_i_1_n_0;
  wire Gain2_mul_temp_carry__1_i_2_n_0;
  wire Gain2_mul_temp_carry__1_i_3_n_0;
  wire Gain2_mul_temp_carry__1_i_4_n_0;
  wire Gain2_mul_temp_carry__1_n_0;
  wire Gain2_mul_temp_carry__1_n_1;
  wire Gain2_mul_temp_carry__1_n_2;
  wire Gain2_mul_temp_carry__1_n_3;
  wire Gain2_mul_temp_carry__2_i_1_n_0;
  wire Gain2_mul_temp_carry__2_i_2_n_0;
  wire Gain2_mul_temp_carry__2_i_3_n_0;
  wire Gain2_mul_temp_carry__2_i_4_n_0;
  wire Gain2_mul_temp_carry__2_n_0;
  wire Gain2_mul_temp_carry__2_n_1;
  wire Gain2_mul_temp_carry__2_n_2;
  wire Gain2_mul_temp_carry__2_n_3;
  wire Gain2_mul_temp_carry__3_i_1_n_0;
  wire Gain2_mul_temp_carry__3_i_2_n_0;
  wire Gain2_mul_temp_carry__3_i_3_n_0;
  wire Gain2_mul_temp_carry__3_i_4_n_0;
  wire Gain2_mul_temp_carry__3_n_0;
  wire Gain2_mul_temp_carry__3_n_1;
  wire Gain2_mul_temp_carry__3_n_2;
  wire Gain2_mul_temp_carry__3_n_3;
  wire Gain2_mul_temp_carry__4_i_1_n_0;
  wire Gain2_mul_temp_carry__4_i_2_n_0;
  wire Gain2_mul_temp_carry__4_i_3_n_0;
  wire Gain2_mul_temp_carry__4_i_4_n_0;
  wire Gain2_mul_temp_carry__4_n_0;
  wire Gain2_mul_temp_carry__4_n_1;
  wire Gain2_mul_temp_carry__4_n_2;
  wire Gain2_mul_temp_carry__4_n_3;
  wire Gain2_mul_temp_carry__5_i_1_n_0;
  wire Gain2_mul_temp_carry__5_i_2_n_0;
  wire Gain2_mul_temp_carry__5_i_3_n_0;
  wire Gain2_mul_temp_carry__5_i_4_n_0;
  wire Gain2_mul_temp_carry__5_n_0;
  wire Gain2_mul_temp_carry__5_n_1;
  wire Gain2_mul_temp_carry__5_n_2;
  wire Gain2_mul_temp_carry__5_n_3;
  wire Gain2_mul_temp_carry__6_i_1_n_0;
  wire Gain2_mul_temp_carry__6_i_2_n_0;
  wire Gain2_mul_temp_carry__6_i_3_n_0;
  wire Gain2_mul_temp_carry__6_i_4_n_0;
  wire Gain2_mul_temp_carry__6_n_0;
  wire Gain2_mul_temp_carry__6_n_1;
  wire Gain2_mul_temp_carry__6_n_2;
  wire Gain2_mul_temp_carry__6_n_3;
  wire Gain2_mul_temp_carry__7_i_1_n_0;
  wire Gain2_mul_temp_carry__7_i_2_n_0;
  wire Gain2_mul_temp_carry__7_i_3_n_0;
  wire Gain2_mul_temp_carry__7_i_4_n_0;
  wire Gain2_mul_temp_carry__7_n_0;
  wire Gain2_mul_temp_carry__7_n_1;
  wire Gain2_mul_temp_carry__7_n_2;
  wire Gain2_mul_temp_carry__7_n_3;
  wire Gain2_mul_temp_carry__8_i_1_n_0;
  wire Gain2_mul_temp_carry__8_i_2_n_0;
  wire Gain2_mul_temp_carry__8_i_3_n_0;
  wire Gain2_mul_temp_carry__8_i_4_n_0;
  wire Gain2_mul_temp_carry__8_n_0;
  wire Gain2_mul_temp_carry__8_n_1;
  wire Gain2_mul_temp_carry__8_n_2;
  wire Gain2_mul_temp_carry__8_n_3;
  wire Gain2_mul_temp_carry__9_i_1_n_0;
  wire Gain2_mul_temp_carry__9_i_2_n_0;
  wire Gain2_mul_temp_carry__9_i_3_n_0;
  wire Gain2_mul_temp_carry__9_i_4_n_0;
  wire Gain2_mul_temp_carry__9_n_0;
  wire Gain2_mul_temp_carry__9_n_1;
  wire Gain2_mul_temp_carry__9_n_2;
  wire Gain2_mul_temp_carry__9_n_3;
  wire Gain2_mul_temp_carry_i_1_n_0;
  wire Gain2_mul_temp_carry_i_2_n_0;
  wire Gain2_mul_temp_carry_i_3_n_0;
  wire Gain2_mul_temp_carry_n_0;
  wire Gain2_mul_temp_carry_n_1;
  wire Gain2_mul_temp_carry_n_2;
  wire Gain2_mul_temp_carry_n_3;
  wire Gain2_mul_temp_n_100;
  wire Gain2_mul_temp_n_101;
  wire Gain2_mul_temp_n_102;
  wire Gain2_mul_temp_n_103;
  wire Gain2_mul_temp_n_104;
  wire Gain2_mul_temp_n_105;
  wire Gain2_mul_temp_n_106;
  wire Gain2_mul_temp_n_107;
  wire Gain2_mul_temp_n_108;
  wire Gain2_mul_temp_n_109;
  wire Gain2_mul_temp_n_110;
  wire Gain2_mul_temp_n_111;
  wire Gain2_mul_temp_n_112;
  wire Gain2_mul_temp_n_113;
  wire Gain2_mul_temp_n_114;
  wire Gain2_mul_temp_n_115;
  wire Gain2_mul_temp_n_116;
  wire Gain2_mul_temp_n_117;
  wire Gain2_mul_temp_n_118;
  wire Gain2_mul_temp_n_119;
  wire Gain2_mul_temp_n_120;
  wire Gain2_mul_temp_n_121;
  wire Gain2_mul_temp_n_122;
  wire Gain2_mul_temp_n_123;
  wire Gain2_mul_temp_n_124;
  wire Gain2_mul_temp_n_125;
  wire Gain2_mul_temp_n_126;
  wire Gain2_mul_temp_n_127;
  wire Gain2_mul_temp_n_128;
  wire Gain2_mul_temp_n_129;
  wire Gain2_mul_temp_n_130;
  wire Gain2_mul_temp_n_131;
  wire Gain2_mul_temp_n_132;
  wire Gain2_mul_temp_n_133;
  wire Gain2_mul_temp_n_134;
  wire Gain2_mul_temp_n_135;
  wire Gain2_mul_temp_n_136;
  wire Gain2_mul_temp_n_137;
  wire Gain2_mul_temp_n_138;
  wire Gain2_mul_temp_n_139;
  wire Gain2_mul_temp_n_140;
  wire Gain2_mul_temp_n_141;
  wire Gain2_mul_temp_n_142;
  wire Gain2_mul_temp_n_143;
  wire Gain2_mul_temp_n_144;
  wire Gain2_mul_temp_n_145;
  wire Gain2_mul_temp_n_146;
  wire Gain2_mul_temp_n_147;
  wire Gain2_mul_temp_n_148;
  wire Gain2_mul_temp_n_149;
  wire Gain2_mul_temp_n_150;
  wire Gain2_mul_temp_n_151;
  wire Gain2_mul_temp_n_152;
  wire Gain2_mul_temp_n_153;
  wire Gain2_mul_temp_n_58;
  wire Gain2_mul_temp_n_59;
  wire Gain2_mul_temp_n_60;
  wire Gain2_mul_temp_n_61;
  wire Gain2_mul_temp_n_62;
  wire Gain2_mul_temp_n_63;
  wire Gain2_mul_temp_n_64;
  wire Gain2_mul_temp_n_65;
  wire Gain2_mul_temp_n_66;
  wire Gain2_mul_temp_n_67;
  wire Gain2_mul_temp_n_68;
  wire Gain2_mul_temp_n_69;
  wire Gain2_mul_temp_n_70;
  wire Gain2_mul_temp_n_71;
  wire Gain2_mul_temp_n_72;
  wire Gain2_mul_temp_n_73;
  wire Gain2_mul_temp_n_74;
  wire Gain2_mul_temp_n_75;
  wire Gain2_mul_temp_n_76;
  wire Gain2_mul_temp_n_77;
  wire Gain2_mul_temp_n_78;
  wire Gain2_mul_temp_n_79;
  wire Gain2_mul_temp_n_80;
  wire Gain2_mul_temp_n_81;
  wire Gain2_mul_temp_n_82;
  wire Gain2_mul_temp_n_83;
  wire Gain2_mul_temp_n_84;
  wire Gain2_mul_temp_n_85;
  wire Gain2_mul_temp_n_86;
  wire Gain2_mul_temp_n_87;
  wire Gain2_mul_temp_n_88;
  wire Gain2_mul_temp_n_89;
  wire Gain2_mul_temp_n_90;
  wire Gain2_mul_temp_n_91;
  wire Gain2_mul_temp_n_92;
  wire Gain2_mul_temp_n_93;
  wire Gain2_mul_temp_n_94;
  wire Gain2_mul_temp_n_95;
  wire Gain2_mul_temp_n_96;
  wire Gain2_mul_temp_n_97;
  wire Gain2_mul_temp_n_98;
  wire Gain2_mul_temp_n_99;
  wire Gain3_add_temp_1_n_100;
  wire Gain3_add_temp_1_n_101;
  wire Gain3_add_temp_1_n_102;
  wire Gain3_add_temp_1_n_103;
  wire Gain3_add_temp_1_n_104;
  wire Gain3_add_temp_1_n_105;
  wire Gain3_add_temp_1_n_106;
  wire Gain3_add_temp_1_n_107;
  wire Gain3_add_temp_1_n_108;
  wire Gain3_add_temp_1_n_109;
  wire Gain3_add_temp_1_n_110;
  wire Gain3_add_temp_1_n_111;
  wire Gain3_add_temp_1_n_112;
  wire Gain3_add_temp_1_n_113;
  wire Gain3_add_temp_1_n_114;
  wire Gain3_add_temp_1_n_115;
  wire Gain3_add_temp_1_n_116;
  wire Gain3_add_temp_1_n_117;
  wire Gain3_add_temp_1_n_118;
  wire Gain3_add_temp_1_n_119;
  wire Gain3_add_temp_1_n_120;
  wire Gain3_add_temp_1_n_121;
  wire Gain3_add_temp_1_n_122;
  wire Gain3_add_temp_1_n_123;
  wire Gain3_add_temp_1_n_124;
  wire Gain3_add_temp_1_n_125;
  wire Gain3_add_temp_1_n_126;
  wire Gain3_add_temp_1_n_127;
  wire Gain3_add_temp_1_n_128;
  wire Gain3_add_temp_1_n_129;
  wire Gain3_add_temp_1_n_130;
  wire Gain3_add_temp_1_n_131;
  wire Gain3_add_temp_1_n_132;
  wire Gain3_add_temp_1_n_133;
  wire Gain3_add_temp_1_n_134;
  wire Gain3_add_temp_1_n_135;
  wire Gain3_add_temp_1_n_136;
  wire Gain3_add_temp_1_n_137;
  wire Gain3_add_temp_1_n_138;
  wire Gain3_add_temp_1_n_139;
  wire Gain3_add_temp_1_n_140;
  wire Gain3_add_temp_1_n_141;
  wire Gain3_add_temp_1_n_142;
  wire Gain3_add_temp_1_n_143;
  wire Gain3_add_temp_1_n_144;
  wire Gain3_add_temp_1_n_145;
  wire Gain3_add_temp_1_n_146;
  wire Gain3_add_temp_1_n_147;
  wire Gain3_add_temp_1_n_148;
  wire Gain3_add_temp_1_n_149;
  wire Gain3_add_temp_1_n_150;
  wire Gain3_add_temp_1_n_151;
  wire Gain3_add_temp_1_n_152;
  wire Gain3_add_temp_1_n_153;
  wire Gain3_add_temp_1_n_77;
  wire Gain3_add_temp_1_n_78;
  wire Gain3_add_temp_1_n_79;
  wire Gain3_add_temp_1_n_80;
  wire Gain3_add_temp_1_n_81;
  wire Gain3_add_temp_1_n_82;
  wire Gain3_add_temp_1_n_83;
  wire Gain3_add_temp_1_n_84;
  wire Gain3_add_temp_1_n_85;
  wire Gain3_add_temp_1_n_86;
  wire Gain3_add_temp_1_n_87;
  wire Gain3_add_temp_1_n_88;
  wire Gain3_add_temp_1_n_89;
  wire Gain3_add_temp_1_n_90;
  wire Gain3_add_temp_1_n_91;
  wire Gain3_add_temp_1_n_92;
  wire Gain3_add_temp_1_n_93;
  wire Gain3_add_temp_1_n_94;
  wire Gain3_add_temp_1_n_95;
  wire Gain3_add_temp_1_n_96;
  wire Gain3_add_temp_1_n_97;
  wire Gain3_add_temp_1_n_98;
  wire Gain3_add_temp_1_n_99;
  wire Gain3_add_temp_2_n_100;
  wire Gain3_add_temp_2_n_101;
  wire Gain3_add_temp_2_n_102;
  wire Gain3_add_temp_2_n_103;
  wire Gain3_add_temp_2_n_104;
  wire Gain3_add_temp_2_n_105;
  wire Gain3_add_temp_2_n_77;
  wire Gain3_add_temp_2_n_78;
  wire Gain3_add_temp_2_n_79;
  wire Gain3_add_temp_2_n_80;
  wire Gain3_add_temp_2_n_81;
  wire Gain3_add_temp_2_n_82;
  wire Gain3_add_temp_2_n_83;
  wire Gain3_add_temp_2_n_84;
  wire Gain3_add_temp_2_n_85;
  wire Gain3_add_temp_2_n_86;
  wire Gain3_add_temp_2_n_87;
  wire Gain3_add_temp_2_n_88;
  wire Gain3_add_temp_2_n_89;
  wire Gain3_add_temp_2_n_90;
  wire Gain3_add_temp_2_n_91;
  wire Gain3_add_temp_2_n_92;
  wire Gain3_add_temp_2_n_93;
  wire Gain3_add_temp_2_n_94;
  wire Gain3_add_temp_2_n_95;
  wire Gain3_add_temp_2_n_96;
  wire Gain3_add_temp_2_n_97;
  wire Gain3_add_temp_2_n_98;
  wire Gain3_add_temp_2_n_99;
  wire Gain3_add_temp_n_100;
  wire Gain3_add_temp_n_101;
  wire Gain3_add_temp_n_102;
  wire Gain3_add_temp_n_103;
  wire Gain3_add_temp_n_104;
  wire Gain3_add_temp_n_105;
  wire Gain3_add_temp_n_106;
  wire Gain3_add_temp_n_107;
  wire Gain3_add_temp_n_108;
  wire Gain3_add_temp_n_109;
  wire Gain3_add_temp_n_110;
  wire Gain3_add_temp_n_111;
  wire Gain3_add_temp_n_112;
  wire Gain3_add_temp_n_113;
  wire Gain3_add_temp_n_114;
  wire Gain3_add_temp_n_115;
  wire Gain3_add_temp_n_116;
  wire Gain3_add_temp_n_117;
  wire Gain3_add_temp_n_118;
  wire Gain3_add_temp_n_119;
  wire Gain3_add_temp_n_120;
  wire Gain3_add_temp_n_121;
  wire Gain3_add_temp_n_122;
  wire Gain3_add_temp_n_123;
  wire Gain3_add_temp_n_124;
  wire Gain3_add_temp_n_125;
  wire Gain3_add_temp_n_126;
  wire Gain3_add_temp_n_127;
  wire Gain3_add_temp_n_128;
  wire Gain3_add_temp_n_129;
  wire Gain3_add_temp_n_130;
  wire Gain3_add_temp_n_131;
  wire Gain3_add_temp_n_132;
  wire Gain3_add_temp_n_133;
  wire Gain3_add_temp_n_134;
  wire Gain3_add_temp_n_135;
  wire Gain3_add_temp_n_136;
  wire Gain3_add_temp_n_137;
  wire Gain3_add_temp_n_138;
  wire Gain3_add_temp_n_139;
  wire Gain3_add_temp_n_140;
  wire Gain3_add_temp_n_141;
  wire Gain3_add_temp_n_142;
  wire Gain3_add_temp_n_143;
  wire Gain3_add_temp_n_144;
  wire Gain3_add_temp_n_145;
  wire Gain3_add_temp_n_146;
  wire Gain3_add_temp_n_147;
  wire Gain3_add_temp_n_148;
  wire Gain3_add_temp_n_149;
  wire Gain3_add_temp_n_150;
  wire Gain3_add_temp_n_151;
  wire Gain3_add_temp_n_152;
  wire Gain3_add_temp_n_153;
  wire Gain3_add_temp_n_77;
  wire Gain3_add_temp_n_78;
  wire Gain3_add_temp_n_79;
  wire Gain3_add_temp_n_80;
  wire Gain3_add_temp_n_81;
  wire Gain3_add_temp_n_82;
  wire Gain3_add_temp_n_83;
  wire Gain3_add_temp_n_84;
  wire Gain3_add_temp_n_85;
  wire Gain3_add_temp_n_86;
  wire Gain3_add_temp_n_87;
  wire Gain3_add_temp_n_88;
  wire Gain3_add_temp_n_89;
  wire Gain3_add_temp_n_90;
  wire Gain3_add_temp_n_91;
  wire Gain3_add_temp_n_92;
  wire Gain3_add_temp_n_93;
  wire Gain3_add_temp_n_94;
  wire Gain3_add_temp_n_95;
  wire Gain3_add_temp_n_96;
  wire Gain3_add_temp_n_97;
  wire Gain3_add_temp_n_98;
  wire Gain3_add_temp_n_99;
  wire [28:0]Gain3_mul_temp__0;
  wire Gain3_mul_temp_n_75;
  wire Gain3_mul_temp_n_76;
  wire Gain5_mul_temp_1_n_100;
  wire Gain5_mul_temp_1_n_101;
  wire Gain5_mul_temp_1_n_102;
  wire Gain5_mul_temp_1_n_103;
  wire Gain5_mul_temp_1_n_104;
  wire Gain5_mul_temp_1_n_105;
  wire Gain5_mul_temp_1_n_75;
  wire Gain5_mul_temp_1_n_76;
  wire Gain5_mul_temp_1_n_92;
  wire Gain5_mul_temp_1_n_93;
  wire Gain5_mul_temp_1_n_94;
  wire Gain5_mul_temp_1_n_95;
  wire Gain5_mul_temp_1_n_96;
  wire Gain5_mul_temp_1_n_97;
  wire Gain5_mul_temp_1_n_98;
  wire Gain5_mul_temp_1_n_99;
  wire Gain5_mul_temp_2_n_100;
  wire Gain5_mul_temp_2_n_101;
  wire Gain5_mul_temp_2_n_102;
  wire Gain5_mul_temp_2_n_103;
  wire Gain5_mul_temp_2_n_104;
  wire Gain5_mul_temp_2_n_105;
  wire Gain5_mul_temp_2_n_92;
  wire Gain5_mul_temp_2_n_93;
  wire Gain5_mul_temp_2_n_94;
  wire Gain5_mul_temp_2_n_95;
  wire Gain5_mul_temp_2_n_96;
  wire Gain5_mul_temp_2_n_97;
  wire Gain5_mul_temp_2_n_98;
  wire Gain5_mul_temp_2_n_99;
  wire Gain5_mul_temp_3_n_100;
  wire Gain5_mul_temp_3_n_101;
  wire Gain5_mul_temp_3_n_102;
  wire Gain5_mul_temp_3_n_103;
  wire Gain5_mul_temp_3_n_104;
  wire Gain5_mul_temp_3_n_105;
  wire Gain5_mul_temp_3_n_74;
  wire Gain5_mul_temp_3_n_75;
  wire Gain5_mul_temp_3_n_76;
  wire Gain5_mul_temp_3_n_92;
  wire Gain5_mul_temp_3_n_93;
  wire Gain5_mul_temp_3_n_94;
  wire Gain5_mul_temp_3_n_95;
  wire Gain5_mul_temp_3_n_96;
  wire Gain5_mul_temp_3_n_97;
  wire Gain5_mul_temp_3_n_98;
  wire Gain5_mul_temp_3_n_99;
  wire Gain5_mul_temp_n_100;
  wire Gain5_mul_temp_n_101;
  wire Gain5_mul_temp_n_102;
  wire Gain5_mul_temp_n_103;
  wire Gain5_mul_temp_n_104;
  wire Gain5_mul_temp_n_105;
  wire Gain5_mul_temp_n_92;
  wire Gain5_mul_temp_n_93;
  wire Gain5_mul_temp_n_94;
  wire Gain5_mul_temp_n_95;
  wire Gain5_mul_temp_n_96;
  wire Gain5_mul_temp_n_97;
  wire Gain5_mul_temp_n_98;
  wire Gain5_mul_temp_n_99;
  wire Gain6_1_0__0_carry__0_i_1_n_0;
  wire Gain6_1_0__0_carry__0_i_2_n_0;
  wire Gain6_1_0__0_carry__0_i_3_n_0;
  wire Gain6_1_0__0_carry__0_i_4_n_0;
  wire Gain6_1_0__0_carry__0_i_5_n_0;
  wire Gain6_1_0__0_carry__0_i_6_n_0;
  wire Gain6_1_0__0_carry__0_i_7_n_0;
  wire Gain6_1_0__0_carry__0_i_8_n_0;
  wire Gain6_1_0__0_carry__0_n_0;
  wire Gain6_1_0__0_carry__0_n_1;
  wire Gain6_1_0__0_carry__0_n_2;
  wire Gain6_1_0__0_carry__0_n_3;
  wire Gain6_1_0__0_carry__1_i_1_n_0;
  wire Gain6_1_0__0_carry__1_i_2_n_0;
  wire Gain6_1_0__0_carry__1_i_3_n_0;
  wire Gain6_1_0__0_carry__1_i_4_n_0;
  wire Gain6_1_0__0_carry__1_i_5_n_0;
  wire Gain6_1_0__0_carry__1_i_6_n_0;
  wire Gain6_1_0__0_carry__1_i_7_n_0;
  wire Gain6_1_0__0_carry__1_i_8_n_0;
  wire Gain6_1_0__0_carry__1_n_0;
  wire Gain6_1_0__0_carry__1_n_1;
  wire Gain6_1_0__0_carry__1_n_2;
  wire Gain6_1_0__0_carry__1_n_3;
  wire Gain6_1_0__0_carry__2_i_1_n_0;
  wire Gain6_1_0__0_carry__2_i_2_n_0;
  wire Gain6_1_0__0_carry__2_i_3_n_0;
  wire Gain6_1_0__0_carry__2_i_4_n_0;
  wire Gain6_1_0__0_carry__2_i_5_n_0;
  wire Gain6_1_0__0_carry__2_n_1;
  wire Gain6_1_0__0_carry__2_n_2;
  wire Gain6_1_0__0_carry__2_n_3;
  wire Gain6_1_0__0_carry_i_1_n_0;
  wire Gain6_1_0__0_carry_i_2_n_0;
  wire Gain6_1_0__0_carry_i_3_n_0;
  wire Gain6_1_0__0_carry_i_4_n_0;
  wire Gain6_1_0__0_carry_i_5_n_0;
  wire Gain6_1_0__0_carry_i_6_n_0;
  wire Gain6_1_0__0_carry_i_7_n_0;
  wire Gain6_1_0__0_carry_n_0;
  wire Gain6_1_0__0_carry_n_1;
  wire Gain6_1_0__0_carry_n_2;
  wire Gain6_1_0__0_carry_n_3;
  wire Gain6_2_0_carry__0_i_1_n_0;
  wire Gain6_2_0_carry__0_i_2_n_0;
  wire Gain6_2_0_carry__0_i_3_n_0;
  wire Gain6_2_0_carry__0_i_4_n_0;
  wire Gain6_2_0_carry__0_n_0;
  wire Gain6_2_0_carry__0_n_1;
  wire Gain6_2_0_carry__0_n_2;
  wire Gain6_2_0_carry__0_n_3;
  wire Gain6_2_0_carry__1_i_1_n_0;
  wire Gain6_2_0_carry__1_i_2_n_0;
  wire Gain6_2_0_carry__1_i_3_n_0;
  wire Gain6_2_0_carry__1_i_4_n_0;
  wire Gain6_2_0_carry__1_i_5_n_0;
  wire Gain6_2_0_carry__1_n_0;
  wire Gain6_2_0_carry__1_n_1;
  wire Gain6_2_0_carry__1_n_2;
  wire Gain6_2_0_carry__1_n_3;
  wire Gain6_2_0_carry__2_i_1_n_0;
  wire Gain6_2_0_carry__2_i_2_n_0;
  wire Gain6_2_0_carry__2_i_3_n_0;
  wire Gain6_2_0_carry__2_i_4_n_0;
  wire Gain6_2_0_carry__2_n_1;
  wire Gain6_2_0_carry__2_n_2;
  wire Gain6_2_0_carry__2_n_3;
  wire Gain6_2_0_carry_i_1_n_0;
  wire Gain6_2_0_carry_i_2_n_0;
  wire Gain6_2_0_carry_i_3_n_0;
  wire Gain6_2_0_carry_i_4_n_0;
  wire Gain6_2_0_carry_n_0;
  wire Gain6_2_0_carry_n_1;
  wire Gain6_2_0_carry_n_2;
  wire Gain6_2_0_carry_n_3;
  wire Gain6_3_0__1_carry__0_i_1_n_0;
  wire Gain6_3_0__1_carry__0_i_2_n_0;
  wire Gain6_3_0__1_carry__0_i_3_n_0;
  wire Gain6_3_0__1_carry__0_i_4_n_0;
  wire Gain6_3_0__1_carry__0_i_5_n_0;
  wire Gain6_3_0__1_carry__0_i_6_n_0;
  wire Gain6_3_0__1_carry__0_i_7_n_0;
  wire Gain6_3_0__1_carry__0_i_8_n_0;
  wire Gain6_3_0__1_carry__0_n_0;
  wire Gain6_3_0__1_carry__0_n_1;
  wire Gain6_3_0__1_carry__0_n_2;
  wire Gain6_3_0__1_carry__0_n_3;
  wire Gain6_3_0__1_carry__1_i_1_n_0;
  wire Gain6_3_0__1_carry__1_i_2_n_0;
  wire Gain6_3_0__1_carry__1_i_3_n_0;
  wire Gain6_3_0__1_carry__1_i_4_n_0;
  wire Gain6_3_0__1_carry__1_i_5_n_0;
  wire Gain6_3_0__1_carry__1_i_6_n_0;
  wire Gain6_3_0__1_carry__1_i_7_n_0;
  wire Gain6_3_0__1_carry__1_i_8_n_0;
  wire Gain6_3_0__1_carry__1_n_0;
  wire Gain6_3_0__1_carry__1_n_1;
  wire Gain6_3_0__1_carry__1_n_2;
  wire Gain6_3_0__1_carry__1_n_3;
  wire Gain6_3_0__1_carry__2_i_1_n_0;
  wire Gain6_3_0__1_carry__2_i_2_n_0;
  wire Gain6_3_0__1_carry__2_i_3_n_0;
  wire Gain6_3_0__1_carry__2_i_4_n_0;
  wire Gain6_3_0__1_carry__2_i_5_n_0;
  wire Gain6_3_0__1_carry__2_i_6_n_0;
  wire Gain6_3_0__1_carry__2_i_7_n_0;
  wire Gain6_3_0__1_carry__2_n_1;
  wire Gain6_3_0__1_carry__2_n_2;
  wire Gain6_3_0__1_carry__2_n_3;
  wire Gain6_3_0__1_carry_i_1_n_0;
  wire Gain6_3_0__1_carry_i_2_n_0;
  wire Gain6_3_0__1_carry_i_3_n_0;
  wire Gain6_3_0__1_carry_i_4_n_0;
  wire Gain6_3_0__1_carry_i_5_n_0;
  wire Gain6_3_0__1_carry_i_6_n_0;
  wire Gain6_3_0__1_carry_i_7_n_0;
  wire Gain6_3_0__1_carry_n_0;
  wire Gain6_3_0__1_carry_n_1;
  wire Gain6_3_0__1_carry_n_2;
  wire Gain6_3_0__1_carry_n_3;
  wire [15:0]\Gain6_out1[1] ;
  wire [15:0]\Gain6_out1[2] ;
  wire [15:0]\Gain6_out1[3] ;
  wire Gain8_0_0_carry__0_i_1_n_0;
  wire Gain8_0_0_carry__0_i_2_n_0;
  wire Gain8_0_0_carry__0_i_3_n_0;
  wire Gain8_0_0_carry__0_i_4_n_0;
  wire Gain8_0_0_carry__0_n_0;
  wire Gain8_0_0_carry__0_n_1;
  wire Gain8_0_0_carry__0_n_2;
  wire Gain8_0_0_carry__0_n_3;
  wire Gain8_0_0_carry__1_i_1_n_0;
  wire Gain8_0_0_carry__1_i_2_n_0;
  wire Gain8_0_0_carry__1_i_3_n_0;
  wire Gain8_0_0_carry__1_n_0;
  wire Gain8_0_0_carry__1_n_2;
  wire Gain8_0_0_carry__1_n_3;
  wire Gain8_0_0_carry_i_1_n_0;
  wire Gain8_0_0_carry_i_2_n_0;
  wire Gain8_0_0_carry_i_3_n_0;
  wire Gain8_0_0_carry_i_4_n_0;
  wire Gain8_0_0_carry_i_5_n_0;
  wire Gain8_0_0_carry_n_0;
  wire Gain8_0_0_carry_n_1;
  wire Gain8_0_0_carry_n_2;
  wire Gain8_0_0_carry_n_3;
  wire Gain8_1_0_carry__0_i_1_n_0;
  wire Gain8_1_0_carry__0_i_2_n_0;
  wire Gain8_1_0_carry__0_i_3_n_0;
  wire Gain8_1_0_carry__0_i_4_n_0;
  wire Gain8_1_0_carry__0_n_0;
  wire Gain8_1_0_carry__0_n_1;
  wire Gain8_1_0_carry__0_n_2;
  wire Gain8_1_0_carry__0_n_3;
  wire Gain8_1_0_carry__1_i_1_n_0;
  wire Gain8_1_0_carry__1_i_2_n_0;
  wire Gain8_1_0_carry__1_i_3_n_0;
  wire Gain8_1_0_carry__1_i_4_n_0;
  wire Gain8_1_0_carry__1_i_5_n_0;
  wire Gain8_1_0_carry__1_n_0;
  wire Gain8_1_0_carry__1_n_1;
  wire Gain8_1_0_carry__1_n_2;
  wire Gain8_1_0_carry__1_n_3;
  wire Gain8_1_0_carry__2_i_1_n_0;
  wire Gain8_1_0_carry__2_i_2_n_0;
  wire Gain8_1_0_carry__2_i_3_n_0;
  wire Gain8_1_0_carry__2_n_2;
  wire Gain8_1_0_carry__2_n_3;
  wire Gain8_1_0_carry_i_1_n_0;
  wire Gain8_1_0_carry_i_2_n_0;
  wire Gain8_1_0_carry_i_3_n_0;
  wire Gain8_1_0_carry_i_4_n_0;
  wire Gain8_1_0_carry_n_0;
  wire Gain8_1_0_carry_n_1;
  wire Gain8_1_0_carry_n_2;
  wire Gain8_1_0_carry_n_3;
  wire Gain8_2_0_carry__0_i_1_n_0;
  wire Gain8_2_0_carry__0_i_2_n_0;
  wire Gain8_2_0_carry__0_i_3_n_0;
  wire Gain8_2_0_carry__0_i_4_n_0;
  wire Gain8_2_0_carry__0_n_0;
  wire Gain8_2_0_carry__0_n_1;
  wire Gain8_2_0_carry__0_n_2;
  wire Gain8_2_0_carry__0_n_3;
  wire Gain8_2_0_carry__1_i_1_n_0;
  wire Gain8_2_0_carry__1_i_2_n_0;
  wire Gain8_2_0_carry__1_i_3_n_0;
  wire Gain8_2_0_carry__1_n_0;
  wire Gain8_2_0_carry__1_n_2;
  wire Gain8_2_0_carry__1_n_3;
  wire Gain8_2_0_carry_i_1_n_0;
  wire Gain8_2_0_carry_i_2_n_0;
  wire Gain8_2_0_carry_i_3_n_0;
  wire Gain8_2_0_carry_i_4_n_0;
  wire Gain8_2_0_carry_i_5_n_0;
  wire Gain8_2_0_carry_n_0;
  wire Gain8_2_0_carry_n_1;
  wire Gain8_2_0_carry_n_2;
  wire Gain8_2_0_carry_n_3;
  wire Gain8_3_0_carry__0_i_1_n_0;
  wire Gain8_3_0_carry__0_i_2_n_0;
  wire Gain8_3_0_carry__0_i_3_n_0;
  wire Gain8_3_0_carry__0_i_4_n_0;
  wire Gain8_3_0_carry__0_n_0;
  wire Gain8_3_0_carry__0_n_1;
  wire Gain8_3_0_carry__0_n_2;
  wire Gain8_3_0_carry__0_n_3;
  wire Gain8_3_0_carry__1_i_1_n_0;
  wire Gain8_3_0_carry__1_i_2_n_0;
  wire Gain8_3_0_carry__1_i_3_n_0;
  wire Gain8_3_0_carry__1_i_4_n_0;
  wire Gain8_3_0_carry__1_i_5_n_0;
  wire Gain8_3_0_carry__1_n_0;
  wire Gain8_3_0_carry__1_n_1;
  wire Gain8_3_0_carry__1_n_2;
  wire Gain8_3_0_carry__1_n_3;
  wire Gain8_3_0_carry__2_i_1_n_0;
  wire Gain8_3_0_carry__2_i_2_n_0;
  wire Gain8_3_0_carry__2_i_3_n_0;
  wire Gain8_3_0_carry__2_n_2;
  wire Gain8_3_0_carry__2_n_3;
  wire Gain8_3_0_carry_i_1_n_0;
  wire Gain8_3_0_carry_i_2_n_0;
  wire Gain8_3_0_carry_i_3_n_0;
  wire Gain8_3_0_carry_i_4_n_0;
  wire Gain8_3_0_carry_n_0;
  wire Gain8_3_0_carry_n_1;
  wire Gain8_3_0_carry_n_2;
  wire Gain8_3_0_carry_n_3;
  wire [10:0]\Gain8_out1[0] ;
  wire [14:0]\Gain8_out1[1] ;
  wire [10:0]\Gain8_out1[2] ;
  wire [14:0]\Gain8_out1[3] ;
  wire Gain_mul_temp_i_10_n_0;
  wire Gain_mul_temp_i_11_n_0;
  wire Gain_mul_temp_i_12_n_0;
  wire Gain_mul_temp_i_12_n_1;
  wire Gain_mul_temp_i_12_n_2;
  wire Gain_mul_temp_i_12_n_3;
  wire Gain_mul_temp_i_13_n_0;
  wire Gain_mul_temp_i_14_n_0;
  wire Gain_mul_temp_i_15_n_0;
  wire Gain_mul_temp_i_16_n_0;
  wire Gain_mul_temp_i_17_n_0;
  wire Gain_mul_temp_i_17_n_1;
  wire Gain_mul_temp_i_17_n_2;
  wire Gain_mul_temp_i_17_n_3;
  wire Gain_mul_temp_i_18_n_0;
  wire Gain_mul_temp_i_19_n_0;
  wire Gain_mul_temp_i_1_n_1;
  wire Gain_mul_temp_i_1_n_2;
  wire Gain_mul_temp_i_1_n_3;
  wire Gain_mul_temp_i_20_n_0;
  wire Gain_mul_temp_i_21_n_0;
  wire Gain_mul_temp_i_22_n_0;
  wire Gain_mul_temp_i_22_n_1;
  wire Gain_mul_temp_i_22_n_2;
  wire Gain_mul_temp_i_22_n_3;
  wire Gain_mul_temp_i_23_n_0;
  wire Gain_mul_temp_i_24_n_0;
  wire Gain_mul_temp_i_25_n_0;
  wire Gain_mul_temp_i_26_n_0;
  wire Gain_mul_temp_i_27_n_0;
  wire Gain_mul_temp_i_27_n_1;
  wire Gain_mul_temp_i_27_n_2;
  wire Gain_mul_temp_i_27_n_3;
  wire Gain_mul_temp_i_28_n_0;
  wire Gain_mul_temp_i_29_n_0;
  wire Gain_mul_temp_i_2_n_0;
  wire Gain_mul_temp_i_2_n_1;
  wire Gain_mul_temp_i_2_n_2;
  wire Gain_mul_temp_i_2_n_3;
  wire Gain_mul_temp_i_30_n_0;
  wire Gain_mul_temp_i_31_n_0;
  wire Gain_mul_temp_i_32_n_0;
  wire Gain_mul_temp_i_32_n_1;
  wire Gain_mul_temp_i_32_n_2;
  wire Gain_mul_temp_i_32_n_3;
  wire Gain_mul_temp_i_33_n_0;
  wire Gain_mul_temp_i_34_n_0;
  wire Gain_mul_temp_i_35_n_0;
  wire Gain_mul_temp_i_36_n_0;
  wire Gain_mul_temp_i_37_n_0;
  wire Gain_mul_temp_i_37_n_1;
  wire Gain_mul_temp_i_37_n_2;
  wire Gain_mul_temp_i_37_n_3;
  wire Gain_mul_temp_i_38_n_0;
  wire Gain_mul_temp_i_39_n_0;
  wire Gain_mul_temp_i_3_n_0;
  wire Gain_mul_temp_i_40_n_0;
  wire Gain_mul_temp_i_41_n_0;
  wire Gain_mul_temp_i_42_n_0;
  wire Gain_mul_temp_i_42_n_1;
  wire Gain_mul_temp_i_42_n_2;
  wire Gain_mul_temp_i_42_n_3;
  wire Gain_mul_temp_i_43_n_0;
  wire Gain_mul_temp_i_44_n_0;
  wire Gain_mul_temp_i_45_n_0;
  wire Gain_mul_temp_i_46_n_0;
  wire Gain_mul_temp_i_47_n_0;
  wire Gain_mul_temp_i_47_n_1;
  wire Gain_mul_temp_i_47_n_2;
  wire Gain_mul_temp_i_47_n_3;
  wire Gain_mul_temp_i_48_n_0;
  wire Gain_mul_temp_i_49_n_0;
  wire Gain_mul_temp_i_4_n_0;
  wire Gain_mul_temp_i_50_n_0;
  wire Gain_mul_temp_i_51_n_0;
  wire Gain_mul_temp_i_52_n_0;
  wire Gain_mul_temp_i_52_n_1;
  wire Gain_mul_temp_i_52_n_2;
  wire Gain_mul_temp_i_52_n_3;
  wire Gain_mul_temp_i_53_n_0;
  wire Gain_mul_temp_i_54_n_0;
  wire Gain_mul_temp_i_55_n_0;
  wire Gain_mul_temp_i_56_n_0;
  wire Gain_mul_temp_i_57_n_0;
  wire Gain_mul_temp_i_58_n_0;
  wire Gain_mul_temp_i_59_n_0;
  wire Gain_mul_temp_i_5_n_0;
  wire Gain_mul_temp_i_6_n_0;
  wire Gain_mul_temp_i_7_n_0;
  wire Gain_mul_temp_i_7_n_1;
  wire Gain_mul_temp_i_7_n_2;
  wire Gain_mul_temp_i_7_n_3;
  wire Gain_mul_temp_i_8_n_0;
  wire Gain_mul_temp_i_9_n_0;
  wire Gain_mul_temp_n_100;
  wire Gain_mul_temp_n_101;
  wire Gain_mul_temp_n_102;
  wire Gain_mul_temp_n_103;
  wire Gain_mul_temp_n_104;
  wire Gain_mul_temp_n_105;
  wire Gain_mul_temp_n_74;
  wire Gain_mul_temp_n_75;
  wire Gain_mul_temp_n_76;
  wire Gain_mul_temp_n_77;
  wire Gain_mul_temp_n_78;
  wire Gain_mul_temp_n_79;
  wire Gain_mul_temp_n_80;
  wire Gain_mul_temp_n_81;
  wire Gain_mul_temp_n_82;
  wire Gain_mul_temp_n_83;
  wire Gain_mul_temp_n_84;
  wire Gain_mul_temp_n_85;
  wire Gain_mul_temp_n_86;
  wire Gain_mul_temp_n_87;
  wire Gain_mul_temp_n_88;
  wire Gain_mul_temp_n_89;
  wire Gain_mul_temp_n_90;
  wire Gain_mul_temp_n_91;
  wire Gain_mul_temp_n_92;
  wire Gain_mul_temp_n_93;
  wire Gain_mul_temp_n_94;
  wire Gain_mul_temp_n_95;
  wire Gain_mul_temp_n_96;
  wire Gain_mul_temp_n_97;
  wire Gain_mul_temp_n_98;
  wire Gain_mul_temp_n_99;
  wire IPCORE_CLK;
  wire Multiply_mul_temp_n_100;
  wire Multiply_mul_temp_n_101;
  wire Multiply_mul_temp_n_102;
  wire Multiply_mul_temp_n_103;
  wire Multiply_mul_temp_n_104;
  wire Multiply_mul_temp_n_105;
  wire Multiply_mul_temp_n_74;
  wire Multiply_mul_temp_n_89;
  wire Multiply_mul_temp_n_90;
  wire Multiply_mul_temp_n_91;
  wire Multiply_mul_temp_n_92;
  wire Multiply_mul_temp_n_93;
  wire Multiply_mul_temp_n_94;
  wire Multiply_mul_temp_n_95;
  wire Multiply_mul_temp_n_96;
  wire Multiply_mul_temp_n_97;
  wire Multiply_mul_temp_n_98;
  wire Multiply_mul_temp_n_99;
  wire [15:4]Multiply_out1;
  wire Sum1_add_temp_carry_i_1_n_0;
  wire Sum1_add_temp_carry_i_2_n_0;
  wire Sum1_add_temp_carry_n_2;
  wire Sum1_add_temp_carry_n_3;
  wire [15:15]Sum3_out1;
  wire Sum3_sub_temp__0_carry__0_i_1_n_0;
  wire Sum3_sub_temp__0_carry__0_i_2_n_0;
  wire Sum3_sub_temp__0_carry__0_i_3_n_0;
  wire Sum3_sub_temp__0_carry__0_i_4_n_0;
  wire Sum3_sub_temp__0_carry__0_n_0;
  wire Sum3_sub_temp__0_carry__0_n_1;
  wire Sum3_sub_temp__0_carry__0_n_2;
  wire Sum3_sub_temp__0_carry__0_n_3;
  wire Sum3_sub_temp__0_carry__1_i_1_n_0;
  wire Sum3_sub_temp__0_carry__1_i_2_n_0;
  wire Sum3_sub_temp__0_carry__1_i_3_n_0;
  wire Sum3_sub_temp__0_carry__1_i_4_n_0;
  wire Sum3_sub_temp__0_carry__1_n_0;
  wire Sum3_sub_temp__0_carry__1_n_1;
  wire Sum3_sub_temp__0_carry__1_n_2;
  wire Sum3_sub_temp__0_carry__1_n_3;
  wire Sum3_sub_temp__0_carry__2_i_1_n_0;
  wire Sum3_sub_temp__0_carry__2_i_2_n_0;
  wire Sum3_sub_temp__0_carry__2_i_3_n_0;
  wire Sum3_sub_temp__0_carry__2_i_4_n_0;
  wire Sum3_sub_temp__0_carry__2_i_5_n_0;
  wire Sum3_sub_temp__0_carry__2_i_6_n_0;
  wire Sum3_sub_temp__0_carry__2_i_7_n_0;
  wire Sum3_sub_temp__0_carry__2_n_0;
  wire Sum3_sub_temp__0_carry__2_n_1;
  wire Sum3_sub_temp__0_carry__2_n_2;
  wire Sum3_sub_temp__0_carry__2_n_3;
  wire Sum3_sub_temp__0_carry__3_i_1_n_0;
  wire Sum3_sub_temp__0_carry__3_i_2_n_0;
  wire Sum3_sub_temp__0_carry__3_i_3_n_0;
  wire Sum3_sub_temp__0_carry__3_i_4_n_0;
  wire Sum3_sub_temp__0_carry__3_n_0;
  wire Sum3_sub_temp__0_carry__3_n_1;
  wire Sum3_sub_temp__0_carry__3_n_2;
  wire Sum3_sub_temp__0_carry__3_n_3;
  wire Sum3_sub_temp__0_carry__4_i_1_n_0;
  wire Sum3_sub_temp__0_carry__4_i_2_n_0;
  wire Sum3_sub_temp__0_carry__4_i_3_n_0;
  wire Sum3_sub_temp__0_carry__4_i_4_n_0;
  wire Sum3_sub_temp__0_carry__4_n_0;
  wire Sum3_sub_temp__0_carry__4_n_1;
  wire Sum3_sub_temp__0_carry__4_n_2;
  wire Sum3_sub_temp__0_carry__4_n_3;
  wire Sum3_sub_temp__0_carry__5_i_1_n_0;
  wire Sum3_sub_temp__0_carry__5_i_2_n_0;
  wire Sum3_sub_temp__0_carry__5_i_3_n_0;
  wire Sum3_sub_temp__0_carry__5_n_2;
  wire Sum3_sub_temp__0_carry__5_n_3;
  wire Sum3_sub_temp__0_carry_i_1_n_0;
  wire Sum3_sub_temp__0_carry_i_2_n_0;
  wire Sum3_sub_temp__0_carry_i_3_n_0;
  wire Sum3_sub_temp__0_carry_i_4_n_0;
  wire Sum3_sub_temp__0_carry_i_5_n_0;
  wire Sum3_sub_temp__0_carry_n_0;
  wire Sum3_sub_temp__0_carry_n_1;
  wire Sum3_sub_temp__0_carry_n_2;
  wire Sum3_sub_temp__0_carry_n_3;
  wire \Sum4_add_temp[0]_carry__0_i_1_n_0 ;
  wire \Sum4_add_temp[0]_carry__0_i_2_n_0 ;
  wire \Sum4_add_temp[0]_carry__0_i_3_n_0 ;
  wire \Sum4_add_temp[0]_carry__0_i_4_n_0 ;
  wire \Sum4_add_temp[0]_carry__0_n_0 ;
  wire \Sum4_add_temp[0]_carry__0_n_1 ;
  wire \Sum4_add_temp[0]_carry__0_n_2 ;
  wire \Sum4_add_temp[0]_carry__0_n_3 ;
  wire \Sum4_add_temp[0]_carry__1_i_1_n_0 ;
  wire \Sum4_add_temp[0]_carry__1_i_2_n_0 ;
  wire \Sum4_add_temp[0]_carry__1_i_3_n_0 ;
  wire \Sum4_add_temp[0]_carry__1_i_4_n_0 ;
  wire \Sum4_add_temp[0]_carry__1_n_0 ;
  wire \Sum4_add_temp[0]_carry__1_n_1 ;
  wire \Sum4_add_temp[0]_carry__1_n_2 ;
  wire \Sum4_add_temp[0]_carry__1_n_3 ;
  wire \Sum4_add_temp[0]_carry__2_i_1_n_3 ;
  wire \Sum4_add_temp[0]_carry__2_i_2_n_0 ;
  wire \Sum4_add_temp[0]_carry__2_i_3_n_0 ;
  wire \Sum4_add_temp[0]_carry__2_i_4_n_0 ;
  wire \Sum4_add_temp[0]_carry__2_i_5_n_0 ;
  wire \Sum4_add_temp[0]_carry__2_n_0 ;
  wire \Sum4_add_temp[0]_carry__2_n_1 ;
  wire \Sum4_add_temp[0]_carry__2_n_2 ;
  wire \Sum4_add_temp[0]_carry__2_n_3 ;
  wire \Sum4_add_temp[0]_carry__3_i_1_n_0 ;
  wire \Sum4_add_temp[0]_carry_i_1_n_0 ;
  wire \Sum4_add_temp[0]_carry_i_2_n_0 ;
  wire \Sum4_add_temp[0]_carry_i_3_n_0 ;
  wire \Sum4_add_temp[0]_carry_n_0 ;
  wire \Sum4_add_temp[0]_carry_n_1 ;
  wire \Sum4_add_temp[0]_carry_n_2 ;
  wire \Sum4_add_temp[0]_carry_n_3 ;
  wire \Sum4_add_temp[1]_carry__0_i_1_n_0 ;
  wire \Sum4_add_temp[1]_carry__0_i_2_n_0 ;
  wire \Sum4_add_temp[1]_carry__0_i_3_n_0 ;
  wire \Sum4_add_temp[1]_carry__0_i_4_n_0 ;
  wire \Sum4_add_temp[1]_carry__0_n_0 ;
  wire \Sum4_add_temp[1]_carry__0_n_1 ;
  wire \Sum4_add_temp[1]_carry__0_n_2 ;
  wire \Sum4_add_temp[1]_carry__0_n_3 ;
  wire \Sum4_add_temp[1]_carry__1_i_1_n_0 ;
  wire \Sum4_add_temp[1]_carry__1_i_2_n_0 ;
  wire \Sum4_add_temp[1]_carry__1_i_3_n_0 ;
  wire \Sum4_add_temp[1]_carry__1_i_4_n_0 ;
  wire \Sum4_add_temp[1]_carry__1_n_0 ;
  wire \Sum4_add_temp[1]_carry__1_n_1 ;
  wire \Sum4_add_temp[1]_carry__1_n_2 ;
  wire \Sum4_add_temp[1]_carry__1_n_3 ;
  wire \Sum4_add_temp[1]_carry__2_i_1_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_i_2_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_i_3_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_i_4_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_i_5_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_n_0 ;
  wire \Sum4_add_temp[1]_carry__2_n_1 ;
  wire \Sum4_add_temp[1]_carry__2_n_2 ;
  wire \Sum4_add_temp[1]_carry__2_n_3 ;
  wire \Sum4_add_temp[1]_carry__3_i_1_n_0 ;
  wire \Sum4_add_temp[1]_carry_i_1_n_0 ;
  wire \Sum4_add_temp[1]_carry_i_2_n_0 ;
  wire \Sum4_add_temp[1]_carry_i_3_n_0 ;
  wire \Sum4_add_temp[1]_carry_n_0 ;
  wire \Sum4_add_temp[1]_carry_n_1 ;
  wire \Sum4_add_temp[1]_carry_n_2 ;
  wire \Sum4_add_temp[1]_carry_n_3 ;
  wire \Sum4_add_temp[2]_carry__0_i_1_n_0 ;
  wire \Sum4_add_temp[2]_carry__0_i_2_n_0 ;
  wire \Sum4_add_temp[2]_carry__0_i_3_n_0 ;
  wire \Sum4_add_temp[2]_carry__0_i_4_n_0 ;
  wire \Sum4_add_temp[2]_carry__0_n_0 ;
  wire \Sum4_add_temp[2]_carry__0_n_1 ;
  wire \Sum4_add_temp[2]_carry__0_n_2 ;
  wire \Sum4_add_temp[2]_carry__0_n_3 ;
  wire \Sum4_add_temp[2]_carry__1_i_1_n_0 ;
  wire \Sum4_add_temp[2]_carry__1_i_2_n_0 ;
  wire \Sum4_add_temp[2]_carry__1_i_3_n_0 ;
  wire \Sum4_add_temp[2]_carry__1_i_4_n_0 ;
  wire \Sum4_add_temp[2]_carry__1_n_0 ;
  wire \Sum4_add_temp[2]_carry__1_n_1 ;
  wire \Sum4_add_temp[2]_carry__1_n_2 ;
  wire \Sum4_add_temp[2]_carry__1_n_3 ;
  wire \Sum4_add_temp[2]_carry__2_i_1_n_3 ;
  wire \Sum4_add_temp[2]_carry__2_i_2_n_0 ;
  wire \Sum4_add_temp[2]_carry__2_i_3_n_0 ;
  wire \Sum4_add_temp[2]_carry__2_i_4_n_0 ;
  wire \Sum4_add_temp[2]_carry__2_i_5_n_0 ;
  wire \Sum4_add_temp[2]_carry__2_n_0 ;
  wire \Sum4_add_temp[2]_carry__2_n_1 ;
  wire \Sum4_add_temp[2]_carry__2_n_2 ;
  wire \Sum4_add_temp[2]_carry__2_n_3 ;
  wire \Sum4_add_temp[2]_carry__3_i_1_n_0 ;
  wire \Sum4_add_temp[2]_carry_i_1_n_0 ;
  wire \Sum4_add_temp[2]_carry_i_2_n_0 ;
  wire \Sum4_add_temp[2]_carry_i_3_n_0 ;
  wire \Sum4_add_temp[2]_carry_n_0 ;
  wire \Sum4_add_temp[2]_carry_n_1 ;
  wire \Sum4_add_temp[2]_carry_n_2 ;
  wire \Sum4_add_temp[2]_carry_n_3 ;
  wire \Sum4_add_temp[3]_carry__0_i_1_n_0 ;
  wire \Sum4_add_temp[3]_carry__0_i_2_n_0 ;
  wire \Sum4_add_temp[3]_carry__0_i_3_n_0 ;
  wire \Sum4_add_temp[3]_carry__0_i_4_n_0 ;
  wire \Sum4_add_temp[3]_carry__0_n_0 ;
  wire \Sum4_add_temp[3]_carry__0_n_1 ;
  wire \Sum4_add_temp[3]_carry__0_n_2 ;
  wire \Sum4_add_temp[3]_carry__0_n_3 ;
  wire \Sum4_add_temp[3]_carry__1_i_1_n_0 ;
  wire \Sum4_add_temp[3]_carry__1_i_2_n_0 ;
  wire \Sum4_add_temp[3]_carry__1_i_3_n_0 ;
  wire \Sum4_add_temp[3]_carry__1_i_4_n_0 ;
  wire \Sum4_add_temp[3]_carry__1_n_0 ;
  wire \Sum4_add_temp[3]_carry__1_n_1 ;
  wire \Sum4_add_temp[3]_carry__1_n_2 ;
  wire \Sum4_add_temp[3]_carry__1_n_3 ;
  wire \Sum4_add_temp[3]_carry__2_i_1_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_i_2_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_i_3_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_i_4_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_i_5_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_n_0 ;
  wire \Sum4_add_temp[3]_carry__2_n_1 ;
  wire \Sum4_add_temp[3]_carry__2_n_2 ;
  wire \Sum4_add_temp[3]_carry__2_n_3 ;
  wire \Sum4_add_temp[3]_carry__3_i_1_n_0 ;
  wire \Sum4_add_temp[3]_carry_i_1_n_0 ;
  wire \Sum4_add_temp[3]_carry_i_2_n_0 ;
  wire \Sum4_add_temp[3]_carry_i_3_n_0 ;
  wire \Sum4_add_temp[3]_carry_n_0 ;
  wire \Sum4_add_temp[3]_carry_n_1 ;
  wire \Sum4_add_temp[3]_carry_n_2 ;
  wire \Sum4_add_temp[3]_carry_n_3 ;
  wire [15:0]\Sum4_out1[0] ;
  wire [15:0]\Sum4_out1[1] ;
  wire [15:0]\Sum4_out1[2] ;
  wire [15:0]\Sum4_out1[3] ;
  wire [15:11]\Sum5_sub_cast[0] ;
  wire [8:0]\Sum6_add_cast[0] ;
  wire [14:0]\Sum6_add_cast[1] ;
  wire [9:0]\Sum6_add_cast[2] ;
  wire [14:0]\Sum6_add_cast[3] ;
  wire [11:0]\Sum6_add_temp[0] ;
  wire \Sum6_add_temp[0]_carry__0_i_1_n_0 ;
  wire \Sum6_add_temp[0]_carry__0_i_2_n_0 ;
  wire \Sum6_add_temp[0]_carry__0_i_3_n_0 ;
  wire \Sum6_add_temp[0]_carry__0_i_4_n_0 ;
  wire \Sum6_add_temp[0]_carry__0_n_0 ;
  wire \Sum6_add_temp[0]_carry__0_n_1 ;
  wire \Sum6_add_temp[0]_carry__0_n_2 ;
  wire \Sum6_add_temp[0]_carry__0_n_3 ;
  wire \Sum6_add_temp[0]_carry__1_i_1_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_i_2_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_i_3_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_i_4_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_i_5_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_n_0 ;
  wire \Sum6_add_temp[0]_carry__1_n_1 ;
  wire \Sum6_add_temp[0]_carry__1_n_2 ;
  wire \Sum6_add_temp[0]_carry__1_n_3 ;
  wire \Sum6_add_temp[0]_carry_i_1_n_0 ;
  wire \Sum6_add_temp[0]_carry_i_2_n_0 ;
  wire \Sum6_add_temp[0]_carry_i_3_n_0 ;
  wire \Sum6_add_temp[0]_carry_i_4_n_0 ;
  wire \Sum6_add_temp[0]_carry_n_0 ;
  wire \Sum6_add_temp[0]_carry_n_1 ;
  wire \Sum6_add_temp[0]_carry_n_2 ;
  wire \Sum6_add_temp[0]_carry_n_3 ;
  wire [14:0]\Sum6_add_temp[1] ;
  wire \Sum6_add_temp[1]_carry__0_i_1_n_0 ;
  wire \Sum6_add_temp[1]_carry__0_i_2_n_0 ;
  wire \Sum6_add_temp[1]_carry__0_i_3_n_0 ;
  wire \Sum6_add_temp[1]_carry__0_i_4_n_0 ;
  wire \Sum6_add_temp[1]_carry__0_n_0 ;
  wire \Sum6_add_temp[1]_carry__0_n_1 ;
  wire \Sum6_add_temp[1]_carry__0_n_2 ;
  wire \Sum6_add_temp[1]_carry__0_n_3 ;
  wire \Sum6_add_temp[1]_carry__1_i_1_n_0 ;
  wire \Sum6_add_temp[1]_carry__1_i_2_n_0 ;
  wire \Sum6_add_temp[1]_carry__1_i_3_n_0 ;
  wire \Sum6_add_temp[1]_carry__1_i_4_n_0 ;
  wire \Sum6_add_temp[1]_carry__1_n_0 ;
  wire \Sum6_add_temp[1]_carry__1_n_1 ;
  wire \Sum6_add_temp[1]_carry__1_n_2 ;
  wire \Sum6_add_temp[1]_carry__1_n_3 ;
  wire \Sum6_add_temp[1]_carry__2_i_1_n_0 ;
  wire \Sum6_add_temp[1]_carry__2_i_2_n_0 ;
  wire \Sum6_add_temp[1]_carry__2_i_3_n_0 ;
  wire \Sum6_add_temp[1]_carry__2_n_2 ;
  wire \Sum6_add_temp[1]_carry__2_n_3 ;
  wire \Sum6_add_temp[1]_carry_i_1_n_0 ;
  wire \Sum6_add_temp[1]_carry_i_2_n_0 ;
  wire \Sum6_add_temp[1]_carry_i_3_n_0 ;
  wire \Sum6_add_temp[1]_carry_i_4_n_0 ;
  wire \Sum6_add_temp[1]_carry_n_0 ;
  wire \Sum6_add_temp[1]_carry_n_1 ;
  wire \Sum6_add_temp[1]_carry_n_2 ;
  wire \Sum6_add_temp[1]_carry_n_3 ;
  wire [11:0]\Sum6_add_temp[2] ;
  wire \Sum6_add_temp[2]_carry__0_i_1_n_0 ;
  wire \Sum6_add_temp[2]_carry__0_i_2_n_0 ;
  wire \Sum6_add_temp[2]_carry__0_i_3_n_0 ;
  wire \Sum6_add_temp[2]_carry__0_i_4_n_0 ;
  wire \Sum6_add_temp[2]_carry__0_n_0 ;
  wire \Sum6_add_temp[2]_carry__0_n_1 ;
  wire \Sum6_add_temp[2]_carry__0_n_2 ;
  wire \Sum6_add_temp[2]_carry__0_n_3 ;
  wire \Sum6_add_temp[2]_carry__1_i_1_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_i_2_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_i_3_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_i_4_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_i_5_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_n_0 ;
  wire \Sum6_add_temp[2]_carry__1_n_1 ;
  wire \Sum6_add_temp[2]_carry__1_n_2 ;
  wire \Sum6_add_temp[2]_carry__1_n_3 ;
  wire \Sum6_add_temp[2]_carry_i_1_n_0 ;
  wire \Sum6_add_temp[2]_carry_i_2_n_0 ;
  wire \Sum6_add_temp[2]_carry_i_3_n_0 ;
  wire \Sum6_add_temp[2]_carry_i_4_n_0 ;
  wire \Sum6_add_temp[2]_carry_n_0 ;
  wire \Sum6_add_temp[2]_carry_n_1 ;
  wire \Sum6_add_temp[2]_carry_n_2 ;
  wire \Sum6_add_temp[2]_carry_n_3 ;
  wire [14:0]\Sum6_add_temp[3] ;
  wire \Sum6_add_temp[3]_carry__0_i_1_n_0 ;
  wire \Sum6_add_temp[3]_carry__0_i_2_n_0 ;
  wire \Sum6_add_temp[3]_carry__0_i_3_n_0 ;
  wire \Sum6_add_temp[3]_carry__0_i_4_n_0 ;
  wire \Sum6_add_temp[3]_carry__0_n_0 ;
  wire \Sum6_add_temp[3]_carry__0_n_1 ;
  wire \Sum6_add_temp[3]_carry__0_n_2 ;
  wire \Sum6_add_temp[3]_carry__0_n_3 ;
  wire \Sum6_add_temp[3]_carry__1_i_1_n_0 ;
  wire \Sum6_add_temp[3]_carry__1_i_2_n_0 ;
  wire \Sum6_add_temp[3]_carry__1_i_3_n_0 ;
  wire \Sum6_add_temp[3]_carry__1_i_4_n_0 ;
  wire \Sum6_add_temp[3]_carry__1_n_0 ;
  wire \Sum6_add_temp[3]_carry__1_n_1 ;
  wire \Sum6_add_temp[3]_carry__1_n_2 ;
  wire \Sum6_add_temp[3]_carry__1_n_3 ;
  wire \Sum6_add_temp[3]_carry__2_i_1_n_0 ;
  wire \Sum6_add_temp[3]_carry__2_i_2_n_0 ;
  wire \Sum6_add_temp[3]_carry__2_i_3_n_0 ;
  wire \Sum6_add_temp[3]_carry__2_n_2 ;
  wire \Sum6_add_temp[3]_carry__2_n_3 ;
  wire \Sum6_add_temp[3]_carry_i_1_n_0 ;
  wire \Sum6_add_temp[3]_carry_i_2_n_0 ;
  wire \Sum6_add_temp[3]_carry_i_3_n_0 ;
  wire \Sum6_add_temp[3]_carry_i_4_n_0 ;
  wire \Sum6_add_temp[3]_carry_n_0 ;
  wire \Sum6_add_temp[3]_carry_n_1 ;
  wire \Sum6_add_temp[3]_carry_n_2 ;
  wire \Sum6_add_temp[3]_carry_n_3 ;
  wire [14:10]Sum_sub_temp;
  wire Sum_sub_temp_carry__0_i_1_n_0;
  wire Sum_sub_temp_carry__0_i_2_n_0;
  wire Sum_sub_temp_carry__0_i_3_n_0;
  wire Sum_sub_temp_carry__0_i_4_n_0;
  wire Sum_sub_temp_carry__0_n_0;
  wire Sum_sub_temp_carry__0_n_1;
  wire Sum_sub_temp_carry__0_n_2;
  wire Sum_sub_temp_carry__0_n_3;
  wire Sum_sub_temp_carry__1_i_1_n_0;
  wire Sum_sub_temp_carry__1_i_2_n_0;
  wire Sum_sub_temp_carry__1_i_3_n_0;
  wire Sum_sub_temp_carry__1_i_4_n_0;
  wire Sum_sub_temp_carry__1_n_0;
  wire Sum_sub_temp_carry__1_n_1;
  wire Sum_sub_temp_carry__1_n_2;
  wire Sum_sub_temp_carry__1_n_3;
  wire Sum_sub_temp_carry__2_i_1_n_0;
  wire Sum_sub_temp_carry__2_i_2_n_0;
  wire Sum_sub_temp_carry__2_i_3_n_0;
  wire Sum_sub_temp_carry__2_n_2;
  wire Sum_sub_temp_carry__2_n_3;
  wire Sum_sub_temp_carry_i_1_n_0;
  wire Sum_sub_temp_carry_i_2_n_0;
  wire Sum_sub_temp_carry_i_3_n_0;
  wire Sum_sub_temp_carry_i_4_n_0;
  wire Sum_sub_temp_carry_n_0;
  wire Sum_sub_temp_carry_n_1;
  wire Sum_sub_temp_carry_n_2;
  wire Sum_sub_temp_carry_n_3;
  wire [15:0]\Unit_Delay2_out1_reg[0] ;
  wire [14:0]\Unit_Delay2_out1_reg[1] ;
  wire \Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ;
  wire \Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ;
  wire \Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ;
  wire \Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ;
  wire \Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ;
  wire \Unit_Delay2_out1_reg[1][15]_rep_n_0 ;
  wire [15:0]\Unit_Delay2_out1_reg[2] ;
  wire \Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ;
  wire \Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ;
  wire \Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ;
  wire \Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ;
  wire \Unit_Delay2_out1_reg[2][15]_rep_n_0 ;
  wire [15:0]\Unit_Delay2_out1_reg[3] ;
  wire \Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ;
  wire \Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ;
  wire \Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ;
  wire \Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ;
  wire \Unit_Delay2_out1_reg[3][15]_rep_n_0 ;
  wire [14:0]angle;
  wire [14:0]desired_angle;
  wire [31:0]destination_x;
  wire dtc_out_62;
  wire dtc_out_62_carry__0_i_1_n_0;
  wire dtc_out_62_carry_i_1_n_0;
  wire dtc_out_62_carry_i_2_n_0;
  wire dtc_out_62_carry_i_3_n_0;
  wire dtc_out_62_carry_i_4_n_0;
  wire dtc_out_62_carry_n_0;
  wire dtc_out_62_carry_n_1;
  wire dtc_out_62_carry_n_2;
  wire dtc_out_62_carry_n_3;
  wire mul_Gain6_dotp_1_mul_temp_2_n_100;
  wire mul_Gain6_dotp_1_mul_temp_2_n_101;
  wire mul_Gain6_dotp_1_mul_temp_2_n_102;
  wire mul_Gain6_dotp_1_mul_temp_2_n_103;
  wire mul_Gain6_dotp_1_mul_temp_2_n_104;
  wire mul_Gain6_dotp_1_mul_temp_2_n_105;
  wire mul_Gain6_dotp_1_mul_temp_2_n_75;
  wire mul_Gain6_dotp_1_mul_temp_2_n_92;
  wire mul_Gain6_dotp_1_mul_temp_2_n_93;
  wire mul_Gain6_dotp_1_mul_temp_2_n_94;
  wire mul_Gain6_dotp_1_mul_temp_2_n_95;
  wire mul_Gain6_dotp_1_mul_temp_2_n_96;
  wire mul_Gain6_dotp_1_mul_temp_2_n_97;
  wire mul_Gain6_dotp_1_mul_temp_2_n_98;
  wire mul_Gain6_dotp_1_mul_temp_2_n_99;
  wire mul_Gain6_dotp_1_mul_temp_3_n_100;
  wire mul_Gain6_dotp_1_mul_temp_3_n_101;
  wire mul_Gain6_dotp_1_mul_temp_3_n_102;
  wire mul_Gain6_dotp_1_mul_temp_3_n_103;
  wire mul_Gain6_dotp_1_mul_temp_3_n_104;
  wire mul_Gain6_dotp_1_mul_temp_3_n_105;
  wire mul_Gain6_dotp_1_mul_temp_3_n_92;
  wire mul_Gain6_dotp_1_mul_temp_3_n_93;
  wire mul_Gain6_dotp_1_mul_temp_3_n_94;
  wire mul_Gain6_dotp_1_mul_temp_3_n_95;
  wire mul_Gain6_dotp_1_mul_temp_3_n_96;
  wire mul_Gain6_dotp_1_mul_temp_3_n_97;
  wire mul_Gain6_dotp_1_mul_temp_3_n_98;
  wire mul_Gain6_dotp_1_mul_temp_3_n_99;
  wire mul_Gain6_dotp_1_mul_temp_n_100;
  wire mul_Gain6_dotp_1_mul_temp_n_101;
  wire mul_Gain6_dotp_1_mul_temp_n_102;
  wire mul_Gain6_dotp_1_mul_temp_n_103;
  wire mul_Gain6_dotp_1_mul_temp_n_104;
  wire mul_Gain6_dotp_1_mul_temp_n_105;
  wire mul_Gain6_dotp_1_mul_temp_n_83;
  wire mul_Gain6_dotp_1_mul_temp_n_84;
  wire mul_Gain6_dotp_1_mul_temp_n_85;
  wire mul_Gain6_dotp_1_mul_temp_n_86;
  wire mul_Gain6_dotp_1_mul_temp_n_87;
  wire mul_Gain6_dotp_1_mul_temp_n_88;
  wire mul_Gain6_dotp_1_mul_temp_n_89;
  wire mul_Gain6_dotp_1_mul_temp_n_90;
  wire mul_Gain6_dotp_1_mul_temp_n_91;
  wire mul_Gain6_dotp_1_mul_temp_n_92;
  wire mul_Gain6_dotp_1_mul_temp_n_93;
  wire mul_Gain6_dotp_1_mul_temp_n_94;
  wire mul_Gain6_dotp_1_mul_temp_n_95;
  wire mul_Gain6_dotp_1_mul_temp_n_96;
  wire mul_Gain6_dotp_1_mul_temp_n_97;
  wire mul_Gain6_dotp_1_mul_temp_n_98;
  wire mul_Gain6_dotp_1_mul_temp_n_99;
  wire mul_Gain6_dotp_2_mul_temp_1_n_100;
  wire mul_Gain6_dotp_2_mul_temp_1_n_101;
  wire mul_Gain6_dotp_2_mul_temp_1_n_102;
  wire mul_Gain6_dotp_2_mul_temp_1_n_103;
  wire mul_Gain6_dotp_2_mul_temp_1_n_104;
  wire mul_Gain6_dotp_2_mul_temp_1_n_105;
  wire mul_Gain6_dotp_2_mul_temp_1_n_74;
  wire mul_Gain6_dotp_2_mul_temp_1_n_75;
  wire mul_Gain6_dotp_2_mul_temp_1_n_92;
  wire mul_Gain6_dotp_2_mul_temp_1_n_93;
  wire mul_Gain6_dotp_2_mul_temp_1_n_94;
  wire mul_Gain6_dotp_2_mul_temp_1_n_95;
  wire mul_Gain6_dotp_2_mul_temp_1_n_96;
  wire mul_Gain6_dotp_2_mul_temp_1_n_97;
  wire mul_Gain6_dotp_2_mul_temp_1_n_98;
  wire mul_Gain6_dotp_2_mul_temp_1_n_99;
  wire mul_Gain6_dotp_2_mul_temp_2_n_100;
  wire mul_Gain6_dotp_2_mul_temp_2_n_101;
  wire mul_Gain6_dotp_2_mul_temp_2_n_102;
  wire mul_Gain6_dotp_2_mul_temp_2_n_103;
  wire mul_Gain6_dotp_2_mul_temp_2_n_104;
  wire mul_Gain6_dotp_2_mul_temp_2_n_105;
  wire mul_Gain6_dotp_2_mul_temp_2_n_92;
  wire mul_Gain6_dotp_2_mul_temp_2_n_93;
  wire mul_Gain6_dotp_2_mul_temp_2_n_94;
  wire mul_Gain6_dotp_2_mul_temp_2_n_95;
  wire mul_Gain6_dotp_2_mul_temp_2_n_96;
  wire mul_Gain6_dotp_2_mul_temp_2_n_97;
  wire mul_Gain6_dotp_2_mul_temp_2_n_98;
  wire mul_Gain6_dotp_2_mul_temp_2_n_99;
  wire mul_Gain6_dotp_2_mul_temp_n_100;
  wire mul_Gain6_dotp_2_mul_temp_n_101;
  wire mul_Gain6_dotp_2_mul_temp_n_102;
  wire mul_Gain6_dotp_2_mul_temp_n_103;
  wire mul_Gain6_dotp_2_mul_temp_n_104;
  wire mul_Gain6_dotp_2_mul_temp_n_105;
  wire mul_Gain6_dotp_2_mul_temp_n_92;
  wire mul_Gain6_dotp_2_mul_temp_n_93;
  wire mul_Gain6_dotp_2_mul_temp_n_94;
  wire mul_Gain6_dotp_2_mul_temp_n_95;
  wire mul_Gain6_dotp_2_mul_temp_n_96;
  wire mul_Gain6_dotp_2_mul_temp_n_97;
  wire mul_Gain6_dotp_2_mul_temp_n_98;
  wire mul_Gain6_dotp_2_mul_temp_n_99;
  wire mul_Gain6_dotp_3_mul_temp_1_n_100;
  wire mul_Gain6_dotp_3_mul_temp_1_n_101;
  wire mul_Gain6_dotp_3_mul_temp_1_n_102;
  wire mul_Gain6_dotp_3_mul_temp_1_n_103;
  wire mul_Gain6_dotp_3_mul_temp_1_n_104;
  wire mul_Gain6_dotp_3_mul_temp_1_n_105;
  wire mul_Gain6_dotp_3_mul_temp_1_n_92;
  wire mul_Gain6_dotp_3_mul_temp_1_n_93;
  wire mul_Gain6_dotp_3_mul_temp_1_n_94;
  wire mul_Gain6_dotp_3_mul_temp_1_n_95;
  wire mul_Gain6_dotp_3_mul_temp_1_n_96;
  wire mul_Gain6_dotp_3_mul_temp_1_n_97;
  wire mul_Gain6_dotp_3_mul_temp_1_n_98;
  wire mul_Gain6_dotp_3_mul_temp_1_n_99;
  wire mul_Gain6_dotp_3_mul_temp_n_100;
  wire mul_Gain6_dotp_3_mul_temp_n_101;
  wire mul_Gain6_dotp_3_mul_temp_n_102;
  wire mul_Gain6_dotp_3_mul_temp_n_103;
  wire mul_Gain6_dotp_3_mul_temp_n_104;
  wire mul_Gain6_dotp_3_mul_temp_n_105;
  wire mul_Gain6_dotp_3_mul_temp_n_74;
  wire mul_Gain6_dotp_3_mul_temp_n_75;
  wire mul_Gain6_dotp_3_mul_temp_n_92;
  wire mul_Gain6_dotp_3_mul_temp_n_93;
  wire mul_Gain6_dotp_3_mul_temp_n_94;
  wire mul_Gain6_dotp_3_mul_temp_n_95;
  wire mul_Gain6_dotp_3_mul_temp_n_96;
  wire mul_Gain6_dotp_3_mul_temp_n_97;
  wire mul_Gain6_dotp_3_mul_temp_n_98;
  wire mul_Gain6_dotp_3_mul_temp_n_99;
  wire mul_Gain8_dotp_0_mul_temp_2_n_100;
  wire mul_Gain8_dotp_0_mul_temp_2_n_101;
  wire mul_Gain8_dotp_0_mul_temp_2_n_102;
  wire mul_Gain8_dotp_0_mul_temp_2_n_103;
  wire mul_Gain8_dotp_0_mul_temp_2_n_104;
  wire mul_Gain8_dotp_0_mul_temp_2_n_105;
  wire mul_Gain8_dotp_0_mul_temp_2_n_74;
  wire mul_Gain8_dotp_0_mul_temp_2_n_75;
  wire mul_Gain8_dotp_0_mul_temp_2_n_91;
  wire mul_Gain8_dotp_0_mul_temp_2_n_92;
  wire mul_Gain8_dotp_0_mul_temp_2_n_93;
  wire mul_Gain8_dotp_0_mul_temp_2_n_94;
  wire mul_Gain8_dotp_0_mul_temp_2_n_95;
  wire mul_Gain8_dotp_0_mul_temp_2_n_96;
  wire mul_Gain8_dotp_0_mul_temp_2_n_97;
  wire mul_Gain8_dotp_0_mul_temp_2_n_98;
  wire mul_Gain8_dotp_0_mul_temp_2_n_99;
  wire mul_Gain8_dotp_0_mul_temp_3_n_100;
  wire mul_Gain8_dotp_0_mul_temp_3_n_101;
  wire mul_Gain8_dotp_0_mul_temp_3_n_102;
  wire mul_Gain8_dotp_0_mul_temp_3_n_103;
  wire mul_Gain8_dotp_0_mul_temp_3_n_104;
  wire mul_Gain8_dotp_0_mul_temp_3_n_105;
  wire mul_Gain8_dotp_0_mul_temp_3_n_91;
  wire mul_Gain8_dotp_0_mul_temp_3_n_92;
  wire mul_Gain8_dotp_0_mul_temp_3_n_93;
  wire mul_Gain8_dotp_0_mul_temp_3_n_94;
  wire mul_Gain8_dotp_0_mul_temp_3_n_95;
  wire mul_Gain8_dotp_0_mul_temp_3_n_96;
  wire mul_Gain8_dotp_0_mul_temp_3_n_97;
  wire mul_Gain8_dotp_0_mul_temp_3_n_98;
  wire mul_Gain8_dotp_0_mul_temp_3_n_99;
  wire mul_Gain8_dotp_0_mul_temp_n_100;
  wire mul_Gain8_dotp_0_mul_temp_n_101;
  wire mul_Gain8_dotp_0_mul_temp_n_102;
  wire mul_Gain8_dotp_0_mul_temp_n_103;
  wire mul_Gain8_dotp_0_mul_temp_n_104;
  wire mul_Gain8_dotp_0_mul_temp_n_105;
  wire mul_Gain8_dotp_0_mul_temp_n_91;
  wire mul_Gain8_dotp_0_mul_temp_n_92;
  wire mul_Gain8_dotp_0_mul_temp_n_93;
  wire mul_Gain8_dotp_0_mul_temp_n_94;
  wire mul_Gain8_dotp_0_mul_temp_n_95;
  wire mul_Gain8_dotp_0_mul_temp_n_96;
  wire mul_Gain8_dotp_0_mul_temp_n_97;
  wire mul_Gain8_dotp_0_mul_temp_n_98;
  wire mul_Gain8_dotp_0_mul_temp_n_99;
  wire mul_Gain8_dotp_1_mul_temp_1_n_100;
  wire mul_Gain8_dotp_1_mul_temp_1_n_101;
  wire mul_Gain8_dotp_1_mul_temp_1_n_102;
  wire mul_Gain8_dotp_1_mul_temp_1_n_103;
  wire mul_Gain8_dotp_1_mul_temp_1_n_104;
  wire mul_Gain8_dotp_1_mul_temp_1_n_105;
  wire mul_Gain8_dotp_1_mul_temp_1_n_91;
  wire mul_Gain8_dotp_1_mul_temp_1_n_92;
  wire mul_Gain8_dotp_1_mul_temp_1_n_93;
  wire mul_Gain8_dotp_1_mul_temp_1_n_94;
  wire mul_Gain8_dotp_1_mul_temp_1_n_95;
  wire mul_Gain8_dotp_1_mul_temp_1_n_96;
  wire mul_Gain8_dotp_1_mul_temp_1_n_97;
  wire mul_Gain8_dotp_1_mul_temp_1_n_98;
  wire mul_Gain8_dotp_1_mul_temp_1_n_99;
  wire mul_Gain8_dotp_1_mul_temp_2_n_100;
  wire mul_Gain8_dotp_1_mul_temp_2_n_101;
  wire mul_Gain8_dotp_1_mul_temp_2_n_102;
  wire mul_Gain8_dotp_1_mul_temp_2_n_103;
  wire mul_Gain8_dotp_1_mul_temp_2_n_104;
  wire mul_Gain8_dotp_1_mul_temp_2_n_105;
  wire mul_Gain8_dotp_1_mul_temp_2_n_91;
  wire mul_Gain8_dotp_1_mul_temp_2_n_92;
  wire mul_Gain8_dotp_1_mul_temp_2_n_93;
  wire mul_Gain8_dotp_1_mul_temp_2_n_94;
  wire mul_Gain8_dotp_1_mul_temp_2_n_95;
  wire mul_Gain8_dotp_1_mul_temp_2_n_96;
  wire mul_Gain8_dotp_1_mul_temp_2_n_97;
  wire mul_Gain8_dotp_1_mul_temp_2_n_98;
  wire mul_Gain8_dotp_1_mul_temp_2_n_99;
  wire mul_Gain8_dotp_1_mul_temp_n_100;
  wire mul_Gain8_dotp_1_mul_temp_n_101;
  wire mul_Gain8_dotp_1_mul_temp_n_102;
  wire mul_Gain8_dotp_1_mul_temp_n_103;
  wire mul_Gain8_dotp_1_mul_temp_n_104;
  wire mul_Gain8_dotp_1_mul_temp_n_105;
  wire mul_Gain8_dotp_1_mul_temp_n_74;
  wire mul_Gain8_dotp_1_mul_temp_n_75;
  wire mul_Gain8_dotp_1_mul_temp_n_91;
  wire mul_Gain8_dotp_1_mul_temp_n_92;
  wire mul_Gain8_dotp_1_mul_temp_n_93;
  wire mul_Gain8_dotp_1_mul_temp_n_94;
  wire mul_Gain8_dotp_1_mul_temp_n_95;
  wire mul_Gain8_dotp_1_mul_temp_n_96;
  wire mul_Gain8_dotp_1_mul_temp_n_97;
  wire mul_Gain8_dotp_1_mul_temp_n_98;
  wire mul_Gain8_dotp_1_mul_temp_n_99;
  wire [31:0]position;
  wire [15:0]pwm;
  wire \pwm[10]_INST_0_i_1_n_0 ;
  wire \pwm[10]_INST_0_i_2_n_0 ;
  wire \pwm[10]_INST_0_n_1 ;
  wire \pwm[10]_INST_0_n_2 ;
  wire \pwm[10]_INST_0_n_3 ;
  wire \pwm[2]_INST_0_i_1_n_0 ;
  wire \pwm[2]_INST_0_i_2_n_0 ;
  wire \pwm[2]_INST_0_n_0 ;
  wire \pwm[2]_INST_0_n_1 ;
  wire \pwm[2]_INST_0_n_2 ;
  wire \pwm[2]_INST_0_n_3 ;
  wire \pwm[6]_INST_0_i_1_n_0 ;
  wire \pwm[6]_INST_0_i_2_n_0 ;
  wire \pwm[6]_INST_0_n_0 ;
  wire \pwm[6]_INST_0_n_1 ;
  wire \pwm[6]_INST_0_n_2 ;
  wire \pwm[6]_INST_0_n_3 ;
  wire reset;
  wire [15:0]sum_Gain6_dotp_2_3;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__0_n_1;
  wire sum_Gain6_dotp_2_3__0_carry__0_n_2;
  wire sum_Gain6_dotp_2_3__0_carry__0_n_3;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__1_n_1;
  wire sum_Gain6_dotp_2_3__0_carry__1_n_2;
  wire sum_Gain6_dotp_2_3__0_carry__1_n_3;
  wire sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0;
  wire sum_Gain6_dotp_2_3__0_carry__2_n_1;
  wire sum_Gain6_dotp_2_3__0_carry__2_n_2;
  wire sum_Gain6_dotp_2_3__0_carry__2_n_3;
  wire sum_Gain6_dotp_2_3__0_carry_i_1_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_2_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_3_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_4_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_5_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_6_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_i_7_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_n_0;
  wire sum_Gain6_dotp_2_3__0_carry_n_1;
  wire sum_Gain6_dotp_2_3__0_carry_n_2;
  wire sum_Gain6_dotp_2_3__0_carry_n_3;
  wire tmp_Gain6_dotp_10;
  wire [15:0]tmp_Gain6_dotp_1_2;
  wire [10:0]tmp_Gain6_dotp_1_3;
  wire [15:0]tmp_Gain6_dotp_2;
  wire [15:0]tmp_Gain6_dotp_2_1;
  wire [11:0]tmp_Gain6_dotp_2_2;
  wire [15:0]tmp_Gain6_dotp_3;
  wire [10:0]tmp_Gain6_dotp_3_1;
  wire [9:0]tmp_Gain8_dotp_0;
  wire [14:0]tmp_Gain8_dotp_0_2;
  wire [10:0]tmp_Gain8_dotp_0_3;
  wire [14:0]tmp_Gain8_dotp_1;
  wire [10:0]tmp_Gain8_dotp_1_1;
  wire [9:0]tmp_Gain8_dotp_1_2;
  wire NLW_Gain1_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain1_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain1_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain1_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain1_mul_temp_CARRYOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_OVERFLOW_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain1_mul_temp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain1_mul_temp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain1_mul_temp__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_Gain1_mul_temp__0_PCOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_OVERFLOW_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_Gain1_mul_temp__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain1_mul_temp__1_CARRYOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_OVERFLOW_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain1_mul_temp__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain1_mul_temp__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain1_mul_temp__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain1_mul_temp__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_Gain1_mul_temp__2_PCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain2_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain2_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain2_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_CARRYOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_OVERFLOW_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain2_mul_temp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain2_mul_temp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_Gain2_mul_temp__0_PCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_OVERFLOW_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_Gain2_mul_temp__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp__1_CARRYOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_OVERFLOW_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain2_mul_temp__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain2_mul_temp__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain2_mul_temp__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_Gain2_mul_temp__2_PCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_Gain2_mul_temp_carry__10_CO_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__7_O_UNCONNECTED;
  wire [3:0]NLW_Gain2_mul_temp_carry__8_O_UNCONNECTED;
  wire [2:0]NLW_Gain2_mul_temp_carry__9_O_UNCONNECTED;
  wire NLW_Gain3_add_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain3_add_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain3_add_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain3_add_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain3_add_temp_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_Gain3_add_temp_P_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain3_add_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain3_add_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain3_add_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_Gain3_add_temp_1_P_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain3_add_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain3_add_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain3_add_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain3_add_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:29]NLW_Gain3_add_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_Gain3_add_temp_2_PCOUT_UNCONNECTED;
  wire NLW_Gain3_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain3_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain3_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain3_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain3_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain3_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain3_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain3_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain3_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_Gain3_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Gain3_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain5_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain5_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain5_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain5_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:23]NLW_Gain5_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Gain5_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain5_mul_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain5_mul_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain5_mul_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_Gain5_mul_temp_1_P_UNCONNECTED;
  wire [47:0]NLW_Gain5_mul_temp_1_PCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain5_mul_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain5_mul_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain5_mul_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_Gain5_mul_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_Gain5_mul_temp_2_PCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_OVERFLOW_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain5_mul_temp_3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain5_mul_temp_3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain5_mul_temp_3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain5_mul_temp_3_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Gain5_mul_temp_3_P_UNCONNECTED;
  wire [47:0]NLW_Gain5_mul_temp_3_PCOUT_UNCONNECTED;
  wire [3:3]NLW_Gain6_1_0__0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Gain6_2_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Gain6_3_0__1_carry__2_CO_UNCONNECTED;
  wire [2:2]NLW_Gain8_0_0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_Gain8_0_0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_Gain8_1_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Gain8_1_0_carry__2_O_UNCONNECTED;
  wire [2:2]NLW_Gain8_2_0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_Gain8_2_0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_Gain8_3_0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Gain8_3_0_carry__2_O_UNCONNECTED;
  wire NLW_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gain_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gain_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gain_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gain_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gain_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Gain_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Gain_mul_temp_PCOUT_UNCONNECTED;
  wire [3:3]NLW_Gain_mul_temp_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_12_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_17_O_UNCONNECTED;
  wire [2:0]NLW_Gain_mul_temp_i_2_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_22_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_27_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_32_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_37_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_42_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_47_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_52_O_UNCONNECTED;
  wire [3:0]NLW_Gain_mul_temp_i_7_O_UNCONNECTED;
  wire NLW_Multiply_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Multiply_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Multiply_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_Multiply_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Multiply_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_Multiply_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Multiply_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Multiply_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Multiply_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_Multiply_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_Multiply_mul_temp_PCOUT_UNCONNECTED;
  wire [3:2]NLW_Sum1_add_temp_carry_CO_UNCONNECTED;
  wire [3:3]NLW_Sum1_add_temp_carry_O_UNCONNECTED;
  wire [3:0]NLW_Sum3_sub_temp__0_carry_O_UNCONNECTED;
  wire [3:0]NLW_Sum3_sub_temp__0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_Sum3_sub_temp__0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_Sum3_sub_temp__0_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_Sum3_sub_temp__0_carry__5_O_UNCONNECTED;
  wire [0:0]\NLW_Sum4_add_temp[0]_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[0]_carry__2_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[0]_carry__2_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[0]_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[0]_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_Sum4_add_temp[1]_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[1]_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[1]_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_Sum4_add_temp[2]_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[2]_carry__2_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[2]_carry__2_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[2]_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[2]_carry__3_O_UNCONNECTED ;
  wire [0:0]\NLW_Sum4_add_temp[3]_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_Sum4_add_temp[3]_carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_Sum4_add_temp[3]_carry__3_O_UNCONNECTED ;
  wire [3:2]\NLW_Sum6_add_temp[1]_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Sum6_add_temp[1]_carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_Sum6_add_temp[3]_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Sum6_add_temp[3]_carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_Sum_sub_temp_carry_O_UNCONNECTED;
  wire [3:0]NLW_Sum_sub_temp_carry__0_O_UNCONNECTED;
  wire [1:0]NLW_Sum_sub_temp_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_Sum_sub_temp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Sum_sub_temp_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_dtc_out_62_carry_O_UNCONNECTED;
  wire [3:1]NLW_dtc_out_62_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_dtc_out_62_carry__0_O_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_1_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_1_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_1_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_mul_Gain6_dotp_1_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_1_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_1_mul_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_1_mul_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_mul_Gain6_dotp_1_mul_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_1_mul_temp_2_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_1_mul_temp_3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_1_mul_temp_3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_1_mul_temp_3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_mul_Gain6_dotp_1_mul_temp_3_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_1_mul_temp_3_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_2_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_2_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_2_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_mul_Gain6_dotp_2_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_2_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_2_mul_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_2_mul_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mul_Gain6_dotp_2_mul_temp_1_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_2_mul_temp_1_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_2_mul_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_2_mul_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_2_mul_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_mul_Gain6_dotp_2_mul_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_2_mul_temp_2_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_3_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_3_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_3_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mul_Gain6_dotp_3_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_3_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain6_dotp_3_mul_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain6_dotp_3_mul_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain6_dotp_3_mul_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_mul_Gain6_dotp_3_mul_temp_1_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain6_dotp_3_mul_temp_1_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_0_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_0_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_0_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_mul_Gain8_dotp_0_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_0_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_0_mul_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_0_mul_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mul_Gain8_dotp_0_mul_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_0_mul_temp_2_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_0_mul_temp_3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_0_mul_temp_3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_0_mul_temp_3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_mul_Gain8_dotp_0_mul_temp_3_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_0_mul_temp_3_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_1_mul_temp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_1_mul_temp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_1_mul_temp_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mul_Gain8_dotp_1_mul_temp_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_1_mul_temp_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_1_mul_temp_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_1_mul_temp_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_mul_Gain8_dotp_1_mul_temp_1_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_1_mul_temp_1_PCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_Gain8_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_Gain8_dotp_1_mul_temp_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_Gain8_dotp_1_mul_temp_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED;
  wire [47:25]NLW_mul_Gain8_dotp_1_mul_temp_2_P_UNCONNECTED;
  wire [47:0]NLW_mul_Gain8_dotp_1_mul_temp_2_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_pwm[14]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_pwm[14]_INST_0_O_UNCONNECTED ;
  wire [3:3]NLW_sum_Gain6_dotp_2_3__0_carry__2_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
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
    Gain1_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,destination_x[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain1_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain1_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain1_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain1_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain1_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain1_mul_temp_OVERFLOW_UNCONNECTED),
        .P({Gain1_mul_temp_n_58,Gain1_mul_temp_n_59,Gain1_mul_temp_n_60,Gain1_mul_temp_n_61,Gain1_mul_temp_n_62,Gain1_mul_temp_n_63,Gain1_mul_temp_n_64,Gain1_mul_temp_n_65,Gain1_mul_temp_n_66,Gain1_mul_temp_n_67,Gain1_mul_temp_n_68,Gain1_mul_temp_n_69,Gain1_mul_temp_n_70,Gain1_mul_temp_n_71,Gain1_mul_temp_n_72,Gain1_mul_temp_n_73,Gain1_mul_temp_n_74,Gain1_mul_temp_n_75,Gain1_mul_temp_n_76,Gain1_mul_temp_n_77,Gain1_mul_temp_n_78,Gain1_mul_temp_n_79,Gain1_mul_temp_n_80,Gain1_mul_temp_n_81,Gain1_mul_temp_n_82,Gain1_mul_temp_n_83,Gain1_mul_temp_n_84,Gain1_mul_temp_n_85,Gain1_mul_temp_n_86,Gain1_mul_temp_n_87,Gain1_mul_temp_n_88,Gain1_mul_temp_n_89,Gain1_mul_temp_n_90,Gain1_mul_temp_n_91,Gain1_mul_temp_n_92,Gain1_mul_temp_n_93,Gain1_mul_temp_n_94,Gain1_mul_temp_n_95,Gain1_mul_temp_n_96,Gain1_mul_temp_n_97,Gain1_mul_temp_n_98,Gain1_mul_temp_n_99,Gain1_mul_temp_n_100,Gain1_mul_temp_n_101,Gain1_mul_temp_n_102,Gain1_mul_temp_n_103,Gain1_mul_temp_n_104,Gain1_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Gain1_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain1_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gain1_mul_temp_n_106,Gain1_mul_temp_n_107,Gain1_mul_temp_n_108,Gain1_mul_temp_n_109,Gain1_mul_temp_n_110,Gain1_mul_temp_n_111,Gain1_mul_temp_n_112,Gain1_mul_temp_n_113,Gain1_mul_temp_n_114,Gain1_mul_temp_n_115,Gain1_mul_temp_n_116,Gain1_mul_temp_n_117,Gain1_mul_temp_n_118,Gain1_mul_temp_n_119,Gain1_mul_temp_n_120,Gain1_mul_temp_n_121,Gain1_mul_temp_n_122,Gain1_mul_temp_n_123,Gain1_mul_temp_n_124,Gain1_mul_temp_n_125,Gain1_mul_temp_n_126,Gain1_mul_temp_n_127,Gain1_mul_temp_n_128,Gain1_mul_temp_n_129,Gain1_mul_temp_n_130,Gain1_mul_temp_n_131,Gain1_mul_temp_n_132,Gain1_mul_temp_n_133,Gain1_mul_temp_n_134,Gain1_mul_temp_n_135,Gain1_mul_temp_n_136,Gain1_mul_temp_n_137,Gain1_mul_temp_n_138,Gain1_mul_temp_n_139,Gain1_mul_temp_n_140,Gain1_mul_temp_n_141,Gain1_mul_temp_n_142,Gain1_mul_temp_n_143,Gain1_mul_temp_n_144,Gain1_mul_temp_n_145,Gain1_mul_temp_n_146,Gain1_mul_temp_n_147,Gain1_mul_temp_n_148,Gain1_mul_temp_n_149,Gain1_mul_temp_n_150,Gain1_mul_temp_n_151,Gain1_mul_temp_n_152,Gain1_mul_temp_n_153}),
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
        .UNDERFLOW(NLW_Gain1_mul_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
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
    Gain1_mul_temp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain1_mul_temp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,destination_x[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain1_mul_temp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain1_mul_temp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain1_mul_temp__0_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain1_mul_temp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain1_mul_temp__0_OVERFLOW_UNCONNECTED),
        .P({Gain1_mul_temp__0_n_58,Gain1_mul_temp__0_n_59,Gain1_mul_temp__0_n_60,Gain1_mul_temp__0_n_61,Gain1_mul_temp__0_n_62,Gain1_mul_temp__0_n_63,Gain1_mul_temp__0_n_64,Gain1_mul_temp__0_n_65,Gain1_mul_temp__0_n_66,Gain1_mul_temp__0_n_67,Gain1_mul_temp__0_n_68,Gain1_mul_temp__0_n_69,Gain1_mul_temp__0_n_70,Gain1_mul_temp__0_n_71,Gain1_mul_temp__0_n_72,Gain1_mul_temp__0_n_73,Gain1_mul_temp__0_n_74,Gain1_mul_temp__0_n_75,Gain1_mul_temp__0_n_76,Gain1_mul_temp__0_n_77,Gain1_mul_temp__0_n_78,Gain1_mul_temp__0_n_79,Gain1_mul_temp__0_n_80,Gain1_mul_temp__0_n_81,Gain1_mul_temp__0_n_82,Gain1_mul_temp__0_n_83,Gain1_mul_temp__0_n_84,Gain1_mul_temp__0_n_85,Gain1_mul_temp__0_n_86,Gain1_mul_temp__0_n_87,Gain1_mul_temp__0_n_88,Gain1_mul_temp__0_n_89,Gain1_mul_temp__0_n_90,Gain1_mul_temp__0_n_91,Gain1_mul_temp__0_n_92,Gain1_mul_temp__0_n_93,Gain1_mul_temp__0_n_94,Gain1_mul_temp__0_n_95,Gain1_mul_temp__0_n_96,Gain1_mul_temp__0_n_97,Gain1_mul_temp__0_n_98,Gain1_mul_temp__0_n_99,Gain1_mul_temp__0_n_100,Gain1_mul_temp__0_n_101,Gain1_mul_temp__0_n_102,Gain1_mul_temp__0_n_103,Gain1_mul_temp__0_n_104,Gain1_mul_temp__0_n_105}),
        .PATTERNBDETECT(NLW_Gain1_mul_temp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain1_mul_temp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain1_mul_temp_n_106,Gain1_mul_temp_n_107,Gain1_mul_temp_n_108,Gain1_mul_temp_n_109,Gain1_mul_temp_n_110,Gain1_mul_temp_n_111,Gain1_mul_temp_n_112,Gain1_mul_temp_n_113,Gain1_mul_temp_n_114,Gain1_mul_temp_n_115,Gain1_mul_temp_n_116,Gain1_mul_temp_n_117,Gain1_mul_temp_n_118,Gain1_mul_temp_n_119,Gain1_mul_temp_n_120,Gain1_mul_temp_n_121,Gain1_mul_temp_n_122,Gain1_mul_temp_n_123,Gain1_mul_temp_n_124,Gain1_mul_temp_n_125,Gain1_mul_temp_n_126,Gain1_mul_temp_n_127,Gain1_mul_temp_n_128,Gain1_mul_temp_n_129,Gain1_mul_temp_n_130,Gain1_mul_temp_n_131,Gain1_mul_temp_n_132,Gain1_mul_temp_n_133,Gain1_mul_temp_n_134,Gain1_mul_temp_n_135,Gain1_mul_temp_n_136,Gain1_mul_temp_n_137,Gain1_mul_temp_n_138,Gain1_mul_temp_n_139,Gain1_mul_temp_n_140,Gain1_mul_temp_n_141,Gain1_mul_temp_n_142,Gain1_mul_temp_n_143,Gain1_mul_temp_n_144,Gain1_mul_temp_n_145,Gain1_mul_temp_n_146,Gain1_mul_temp_n_147,Gain1_mul_temp_n_148,Gain1_mul_temp_n_149,Gain1_mul_temp_n_150,Gain1_mul_temp_n_151,Gain1_mul_temp_n_152,Gain1_mul_temp_n_153}),
        .PCOUT(NLW_Gain1_mul_temp__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain1_mul_temp__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
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
    Gain1_mul_temp__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({Gain1_mul_temp__1_n_24,Gain1_mul_temp__1_n_25,Gain1_mul_temp__1_n_26,Gain1_mul_temp__1_n_27,Gain1_mul_temp__1_n_28,Gain1_mul_temp__1_n_29,Gain1_mul_temp__1_n_30,Gain1_mul_temp__1_n_31,Gain1_mul_temp__1_n_32,Gain1_mul_temp__1_n_33,Gain1_mul_temp__1_n_34,Gain1_mul_temp__1_n_35,Gain1_mul_temp__1_n_36,Gain1_mul_temp__1_n_37,Gain1_mul_temp__1_n_38,Gain1_mul_temp__1_n_39,Gain1_mul_temp__1_n_40,Gain1_mul_temp__1_n_41,Gain1_mul_temp__1_n_42,Gain1_mul_temp__1_n_43,Gain1_mul_temp__1_n_44,Gain1_mul_temp__1_n_45,Gain1_mul_temp__1_n_46,Gain1_mul_temp__1_n_47,Gain1_mul_temp__1_n_48,Gain1_mul_temp__1_n_49,Gain1_mul_temp__1_n_50,Gain1_mul_temp__1_n_51,Gain1_mul_temp__1_n_52,Gain1_mul_temp__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,destination_x[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain1_mul_temp__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain1_mul_temp__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain1_mul_temp__1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain1_mul_temp__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain1_mul_temp__1_OVERFLOW_UNCONNECTED),
        .P({Gain1_mul_temp__1_n_58,Gain1_mul_temp__1_n_59,Gain1_mul_temp__1_n_60,Gain1_mul_temp__1_n_61,Gain1_mul_temp__1_n_62,Gain1_mul_temp__1_n_63,Gain1_mul_temp__1_n_64,Gain1_mul_temp__1_n_65,Gain1_mul_temp__1_n_66,Gain1_mul_temp__1_n_67,Gain1_mul_temp__1_n_68,Gain1_mul_temp__1_n_69,Gain1_mul_temp__1_n_70,Gain1_mul_temp__1_n_71,Gain1_mul_temp__1_n_72,Gain1_mul_temp__1_n_73,Gain1_mul_temp__1_n_74,Gain1_mul_temp__1_n_75,Gain1_mul_temp__1_n_76,Gain1_mul_temp__1_n_77,Gain1_mul_temp__1_n_78,Gain1_mul_temp__1_n_79,Gain1_mul_temp__1_n_80,Gain1_mul_temp__1_n_81,Gain1_mul_temp__1_n_82,Gain1_mul_temp__1_n_83,Gain1_mul_temp__1_n_84,Gain1_mul_temp__1_n_85,Gain1_mul_temp__1_n_86,Gain1_mul_temp__1_n_87,Gain1_mul_temp__1_n_88,Gain1_mul_temp__1_n_89,Gain1_mul_temp__1_n_90,Gain1_mul_temp__1_n_91,Gain1_mul_temp__1_n_92,Gain1_mul_temp__1_n_93,Gain1_mul_temp__1_n_94,Gain1_mul_temp__1_n_95,Gain1_mul_temp__1_n_96,Gain1_mul_temp__1_n_97,Gain1_mul_temp__1_n_98,Gain1_mul_temp__1_n_99,Gain1_mul_temp__1_n_100,Gain1_mul_temp__1_n_101,Gain1_mul_temp__1_n_102,Gain1_mul_temp__1_n_103,Gain1_mul_temp__1_n_104,Gain1_mul_temp__1_n_105}),
        .PATTERNBDETECT(NLW_Gain1_mul_temp__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain1_mul_temp__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gain1_mul_temp__1_n_106,Gain1_mul_temp__1_n_107,Gain1_mul_temp__1_n_108,Gain1_mul_temp__1_n_109,Gain1_mul_temp__1_n_110,Gain1_mul_temp__1_n_111,Gain1_mul_temp__1_n_112,Gain1_mul_temp__1_n_113,Gain1_mul_temp__1_n_114,Gain1_mul_temp__1_n_115,Gain1_mul_temp__1_n_116,Gain1_mul_temp__1_n_117,Gain1_mul_temp__1_n_118,Gain1_mul_temp__1_n_119,Gain1_mul_temp__1_n_120,Gain1_mul_temp__1_n_121,Gain1_mul_temp__1_n_122,Gain1_mul_temp__1_n_123,Gain1_mul_temp__1_n_124,Gain1_mul_temp__1_n_125,Gain1_mul_temp__1_n_126,Gain1_mul_temp__1_n_127,Gain1_mul_temp__1_n_128,Gain1_mul_temp__1_n_129,Gain1_mul_temp__1_n_130,Gain1_mul_temp__1_n_131,Gain1_mul_temp__1_n_132,Gain1_mul_temp__1_n_133,Gain1_mul_temp__1_n_134,Gain1_mul_temp__1_n_135,Gain1_mul_temp__1_n_136,Gain1_mul_temp__1_n_137,Gain1_mul_temp__1_n_138,Gain1_mul_temp__1_n_139,Gain1_mul_temp__1_n_140,Gain1_mul_temp__1_n_141,Gain1_mul_temp__1_n_142,Gain1_mul_temp__1_n_143,Gain1_mul_temp__1_n_144,Gain1_mul_temp__1_n_145,Gain1_mul_temp__1_n_146,Gain1_mul_temp__1_n_147,Gain1_mul_temp__1_n_148,Gain1_mul_temp__1_n_149,Gain1_mul_temp__1_n_150,Gain1_mul_temp__1_n_151,Gain1_mul_temp__1_n_152,Gain1_mul_temp__1_n_153}),
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
        .UNDERFLOW(NLW_Gain1_mul_temp__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    Gain1_mul_temp__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({Gain1_mul_temp__1_n_24,Gain1_mul_temp__1_n_25,Gain1_mul_temp__1_n_26,Gain1_mul_temp__1_n_27,Gain1_mul_temp__1_n_28,Gain1_mul_temp__1_n_29,Gain1_mul_temp__1_n_30,Gain1_mul_temp__1_n_31,Gain1_mul_temp__1_n_32,Gain1_mul_temp__1_n_33,Gain1_mul_temp__1_n_34,Gain1_mul_temp__1_n_35,Gain1_mul_temp__1_n_36,Gain1_mul_temp__1_n_37,Gain1_mul_temp__1_n_38,Gain1_mul_temp__1_n_39,Gain1_mul_temp__1_n_40,Gain1_mul_temp__1_n_41,Gain1_mul_temp__1_n_42,Gain1_mul_temp__1_n_43,Gain1_mul_temp__1_n_44,Gain1_mul_temp__1_n_45,Gain1_mul_temp__1_n_46,Gain1_mul_temp__1_n_47,Gain1_mul_temp__1_n_48,Gain1_mul_temp__1_n_49,Gain1_mul_temp__1_n_50,Gain1_mul_temp__1_n_51,Gain1_mul_temp__1_n_52,Gain1_mul_temp__1_n_53}),
        .ACOUT(NLW_Gain1_mul_temp__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,destination_x[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain1_mul_temp__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain1_mul_temp__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain1_mul_temp__2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain1_mul_temp__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain1_mul_temp__2_OVERFLOW_UNCONNECTED),
        .P({Gain1_mul_temp__2_n_58,Gain1_mul_temp__2_n_59,Gain1_mul_temp__2_n_60,Gain1_mul_temp__2_n_61,Gain1_mul_temp__2_n_62,Gain1_mul_temp__2_n_63,Gain1_mul_temp__2_n_64,Gain1_mul_temp__2_n_65,Gain1_mul_temp__2_n_66,Gain1_mul_temp__2_n_67,Gain1_mul_temp__2_n_68,Gain1_mul_temp__2_n_69,Gain1_mul_temp__2_n_70,Gain1_mul_temp__2_n_71,Gain1_mul_temp__2_n_72,Gain1_mul_temp__2_n_73,Gain1_mul_temp__2_n_74,Gain1_mul_temp__2_n_75,Gain1_mul_temp__2_n_76,Gain1_mul_temp__2_n_77,Gain1_mul_temp__2_n_78,Gain1_mul_temp__2_n_79,Gain1_mul_temp__2_n_80,Gain1_mul_temp__2_n_81,Gain1_mul_temp__2_n_82,Gain1_mul_temp__2_n_83,Gain1_mul_temp__2_n_84,Gain1_mul_temp__2_n_85,Gain1_mul_temp__2_n_86,Gain1_mul_temp__2_n_87,Gain1_mul_temp__2_n_88,Gain1_mul_temp__2_n_89,Gain1_mul_temp__2_n_90,Gain1_mul_temp__2_n_91,Gain1_mul_temp__2_n_92,Gain1_mul_temp__2_n_93,Gain1_mul_temp__2_n_94,Gain1_mul_temp__2_n_95,Gain1_mul_temp__2_n_96,Gain1_mul_temp__2_n_97,Gain1_mul_temp__2_n_98,Gain1_mul_temp__2_n_99,Gain1_mul_temp__2_n_100,Gain1_mul_temp__2_n_101,Gain1_mul_temp__2_n_102,Gain1_mul_temp__2_n_103,Gain1_mul_temp__2_n_104,Gain1_mul_temp__2_n_105}),
        .PATTERNBDETECT(NLW_Gain1_mul_temp__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain1_mul_temp__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain1_mul_temp__1_n_106,Gain1_mul_temp__1_n_107,Gain1_mul_temp__1_n_108,Gain1_mul_temp__1_n_109,Gain1_mul_temp__1_n_110,Gain1_mul_temp__1_n_111,Gain1_mul_temp__1_n_112,Gain1_mul_temp__1_n_113,Gain1_mul_temp__1_n_114,Gain1_mul_temp__1_n_115,Gain1_mul_temp__1_n_116,Gain1_mul_temp__1_n_117,Gain1_mul_temp__1_n_118,Gain1_mul_temp__1_n_119,Gain1_mul_temp__1_n_120,Gain1_mul_temp__1_n_121,Gain1_mul_temp__1_n_122,Gain1_mul_temp__1_n_123,Gain1_mul_temp__1_n_124,Gain1_mul_temp__1_n_125,Gain1_mul_temp__1_n_126,Gain1_mul_temp__1_n_127,Gain1_mul_temp__1_n_128,Gain1_mul_temp__1_n_129,Gain1_mul_temp__1_n_130,Gain1_mul_temp__1_n_131,Gain1_mul_temp__1_n_132,Gain1_mul_temp__1_n_133,Gain1_mul_temp__1_n_134,Gain1_mul_temp__1_n_135,Gain1_mul_temp__1_n_136,Gain1_mul_temp__1_n_137,Gain1_mul_temp__1_n_138,Gain1_mul_temp__1_n_139,Gain1_mul_temp__1_n_140,Gain1_mul_temp__1_n_141,Gain1_mul_temp__1_n_142,Gain1_mul_temp__1_n_143,Gain1_mul_temp__1_n_144,Gain1_mul_temp__1_n_145,Gain1_mul_temp__1_n_146,Gain1_mul_temp__1_n_147,Gain1_mul_temp__1_n_148,Gain1_mul_temp__1_n_149,Gain1_mul_temp__1_n_150,Gain1_mul_temp__1_n_151,Gain1_mul_temp__1_n_152,Gain1_mul_temp__1_n_153}),
        .PCOUT(NLW_Gain1_mul_temp__2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain1_mul_temp__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
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
    Gain2_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,position[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain2_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain2_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain2_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain2_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain2_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain2_mul_temp_OVERFLOW_UNCONNECTED),
        .P({Gain2_mul_temp_n_58,Gain2_mul_temp_n_59,Gain2_mul_temp_n_60,Gain2_mul_temp_n_61,Gain2_mul_temp_n_62,Gain2_mul_temp_n_63,Gain2_mul_temp_n_64,Gain2_mul_temp_n_65,Gain2_mul_temp_n_66,Gain2_mul_temp_n_67,Gain2_mul_temp_n_68,Gain2_mul_temp_n_69,Gain2_mul_temp_n_70,Gain2_mul_temp_n_71,Gain2_mul_temp_n_72,Gain2_mul_temp_n_73,Gain2_mul_temp_n_74,Gain2_mul_temp_n_75,Gain2_mul_temp_n_76,Gain2_mul_temp_n_77,Gain2_mul_temp_n_78,Gain2_mul_temp_n_79,Gain2_mul_temp_n_80,Gain2_mul_temp_n_81,Gain2_mul_temp_n_82,Gain2_mul_temp_n_83,Gain2_mul_temp_n_84,Gain2_mul_temp_n_85,Gain2_mul_temp_n_86,Gain2_mul_temp_n_87,Gain2_mul_temp_n_88,Gain2_mul_temp_n_89,Gain2_mul_temp_n_90,Gain2_mul_temp_n_91,Gain2_mul_temp_n_92,Gain2_mul_temp_n_93,Gain2_mul_temp_n_94,Gain2_mul_temp_n_95,Gain2_mul_temp_n_96,Gain2_mul_temp_n_97,Gain2_mul_temp_n_98,Gain2_mul_temp_n_99,Gain2_mul_temp_n_100,Gain2_mul_temp_n_101,Gain2_mul_temp_n_102,Gain2_mul_temp_n_103,Gain2_mul_temp_n_104,Gain2_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Gain2_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain2_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gain2_mul_temp_n_106,Gain2_mul_temp_n_107,Gain2_mul_temp_n_108,Gain2_mul_temp_n_109,Gain2_mul_temp_n_110,Gain2_mul_temp_n_111,Gain2_mul_temp_n_112,Gain2_mul_temp_n_113,Gain2_mul_temp_n_114,Gain2_mul_temp_n_115,Gain2_mul_temp_n_116,Gain2_mul_temp_n_117,Gain2_mul_temp_n_118,Gain2_mul_temp_n_119,Gain2_mul_temp_n_120,Gain2_mul_temp_n_121,Gain2_mul_temp_n_122,Gain2_mul_temp_n_123,Gain2_mul_temp_n_124,Gain2_mul_temp_n_125,Gain2_mul_temp_n_126,Gain2_mul_temp_n_127,Gain2_mul_temp_n_128,Gain2_mul_temp_n_129,Gain2_mul_temp_n_130,Gain2_mul_temp_n_131,Gain2_mul_temp_n_132,Gain2_mul_temp_n_133,Gain2_mul_temp_n_134,Gain2_mul_temp_n_135,Gain2_mul_temp_n_136,Gain2_mul_temp_n_137,Gain2_mul_temp_n_138,Gain2_mul_temp_n_139,Gain2_mul_temp_n_140,Gain2_mul_temp_n_141,Gain2_mul_temp_n_142,Gain2_mul_temp_n_143,Gain2_mul_temp_n_144,Gain2_mul_temp_n_145,Gain2_mul_temp_n_146,Gain2_mul_temp_n_147,Gain2_mul_temp_n_148,Gain2_mul_temp_n_149,Gain2_mul_temp_n_150,Gain2_mul_temp_n_151,Gain2_mul_temp_n_152,Gain2_mul_temp_n_153}),
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
        .UNDERFLOW(NLW_Gain2_mul_temp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
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
    Gain2_mul_temp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain2_mul_temp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,position[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain2_mul_temp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain2_mul_temp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain2_mul_temp__0_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain2_mul_temp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain2_mul_temp__0_OVERFLOW_UNCONNECTED),
        .P({Gain2_mul_temp__0_n_58,Gain2_mul_temp__0_n_59,Gain2_mul_temp__0_n_60,Gain2_mul_temp__0_n_61,Gain2_mul_temp__0_n_62,Gain2_mul_temp__0_n_63,Gain2_mul_temp__0_n_64,Gain2_mul_temp__0_n_65,Gain2_mul_temp__0_n_66,Gain2_mul_temp__0_n_67,Gain2_mul_temp__0_n_68,Gain2_mul_temp__0_n_69,Gain2_mul_temp__0_n_70,Gain2_mul_temp__0_n_71,Gain2_mul_temp__0_n_72,Gain2_mul_temp__0_n_73,Gain2_mul_temp__0_n_74,Gain2_mul_temp__0_n_75,Gain2_mul_temp__0_n_76,Gain2_mul_temp__0_n_77,Gain2_mul_temp__0_n_78,Gain2_mul_temp__0_n_79,Gain2_mul_temp__0_n_80,Gain2_mul_temp__0_n_81,Gain2_mul_temp__0_n_82,Gain2_mul_temp__0_n_83,Gain2_mul_temp__0_n_84,Gain2_mul_temp__0_n_85,Gain2_mul_temp__0_n_86,Gain2_mul_temp__0_n_87,Gain2_mul_temp__0_n_88,Gain2_mul_temp__0_n_89,Gain2_mul_temp__0_n_90,Gain2_mul_temp__0_n_91,Gain2_mul_temp__0_n_92,Gain2_mul_temp__0_n_93,Gain2_mul_temp__0_n_94,Gain2_mul_temp__0_n_95,Gain2_mul_temp__0_n_96,Gain2_mul_temp__0_n_97,Gain2_mul_temp__0_n_98,Gain2_mul_temp__0_n_99,Gain2_mul_temp__0_n_100,Gain2_mul_temp__0_n_101,Gain2_mul_temp__0_n_102,Gain2_mul_temp__0_n_103,Gain2_mul_temp__0_n_104,Gain2_mul_temp__0_n_105}),
        .PATTERNBDETECT(NLW_Gain2_mul_temp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain2_mul_temp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain2_mul_temp_n_106,Gain2_mul_temp_n_107,Gain2_mul_temp_n_108,Gain2_mul_temp_n_109,Gain2_mul_temp_n_110,Gain2_mul_temp_n_111,Gain2_mul_temp_n_112,Gain2_mul_temp_n_113,Gain2_mul_temp_n_114,Gain2_mul_temp_n_115,Gain2_mul_temp_n_116,Gain2_mul_temp_n_117,Gain2_mul_temp_n_118,Gain2_mul_temp_n_119,Gain2_mul_temp_n_120,Gain2_mul_temp_n_121,Gain2_mul_temp_n_122,Gain2_mul_temp_n_123,Gain2_mul_temp_n_124,Gain2_mul_temp_n_125,Gain2_mul_temp_n_126,Gain2_mul_temp_n_127,Gain2_mul_temp_n_128,Gain2_mul_temp_n_129,Gain2_mul_temp_n_130,Gain2_mul_temp_n_131,Gain2_mul_temp_n_132,Gain2_mul_temp_n_133,Gain2_mul_temp_n_134,Gain2_mul_temp_n_135,Gain2_mul_temp_n_136,Gain2_mul_temp_n_137,Gain2_mul_temp_n_138,Gain2_mul_temp_n_139,Gain2_mul_temp_n_140,Gain2_mul_temp_n_141,Gain2_mul_temp_n_142,Gain2_mul_temp_n_143,Gain2_mul_temp_n_144,Gain2_mul_temp_n_145,Gain2_mul_temp_n_146,Gain2_mul_temp_n_147,Gain2_mul_temp_n_148,Gain2_mul_temp_n_149,Gain2_mul_temp_n_150,Gain2_mul_temp_n_151,Gain2_mul_temp_n_152,Gain2_mul_temp_n_153}),
        .PCOUT(NLW_Gain2_mul_temp__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain2_mul_temp__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
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
    Gain2_mul_temp__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({Gain2_mul_temp__1_n_24,Gain2_mul_temp__1_n_25,Gain2_mul_temp__1_n_26,Gain2_mul_temp__1_n_27,Gain2_mul_temp__1_n_28,Gain2_mul_temp__1_n_29,Gain2_mul_temp__1_n_30,Gain2_mul_temp__1_n_31,Gain2_mul_temp__1_n_32,Gain2_mul_temp__1_n_33,Gain2_mul_temp__1_n_34,Gain2_mul_temp__1_n_35,Gain2_mul_temp__1_n_36,Gain2_mul_temp__1_n_37,Gain2_mul_temp__1_n_38,Gain2_mul_temp__1_n_39,Gain2_mul_temp__1_n_40,Gain2_mul_temp__1_n_41,Gain2_mul_temp__1_n_42,Gain2_mul_temp__1_n_43,Gain2_mul_temp__1_n_44,Gain2_mul_temp__1_n_45,Gain2_mul_temp__1_n_46,Gain2_mul_temp__1_n_47,Gain2_mul_temp__1_n_48,Gain2_mul_temp__1_n_49,Gain2_mul_temp__1_n_50,Gain2_mul_temp__1_n_51,Gain2_mul_temp__1_n_52,Gain2_mul_temp__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,position[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain2_mul_temp__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain2_mul_temp__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain2_mul_temp__1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain2_mul_temp__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain2_mul_temp__1_OVERFLOW_UNCONNECTED),
        .P({Gain2_mul_temp__1_n_58,Gain2_mul_temp__1_n_59,Gain2_mul_temp__1_n_60,Gain2_mul_temp__1_n_61,Gain2_mul_temp__1_n_62,Gain2_mul_temp__1_n_63,Gain2_mul_temp__1_n_64,Gain2_mul_temp__1_n_65,Gain2_mul_temp__1_n_66,Gain2_mul_temp__1_n_67,Gain2_mul_temp__1_n_68,Gain2_mul_temp__1_n_69,Gain2_mul_temp__1_n_70,Gain2_mul_temp__1_n_71,Gain2_mul_temp__1_n_72,Gain2_mul_temp__1_n_73,Gain2_mul_temp__1_n_74,Gain2_mul_temp__1_n_75,Gain2_mul_temp__1_n_76,Gain2_mul_temp__1_n_77,Gain2_mul_temp__1_n_78,Gain2_mul_temp__1_n_79,Gain2_mul_temp__1_n_80,Gain2_mul_temp__1_n_81,Gain2_mul_temp__1_n_82,Gain2_mul_temp__1_n_83,Gain2_mul_temp__1_n_84,Gain2_mul_temp__1_n_85,Gain2_mul_temp__1_n_86,Gain2_mul_temp__1_n_87,Gain2_mul_temp__1_n_88,Gain2_mul_temp__1_n_89,Gain2_mul_temp__1_n_90,Gain2_mul_temp__1_n_91,Gain2_mul_temp__1_n_92,Gain2_mul_temp__1_n_93,Gain2_mul_temp__1_n_94,Gain2_mul_temp__1_n_95,Gain2_mul_temp__1_n_96,Gain2_mul_temp__1_n_97,Gain2_mul_temp__1_n_98,Gain2_mul_temp__1_n_99,Gain2_mul_temp__1_n_100,Gain2_mul_temp__1_n_101,Gain2_mul_temp__1_n_102,Gain2_mul_temp__1_n_103,Gain2_mul_temp__1_n_104,Gain2_mul_temp__1_n_105}),
        .PATTERNBDETECT(NLW_Gain2_mul_temp__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain2_mul_temp__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gain2_mul_temp__1_n_106,Gain2_mul_temp__1_n_107,Gain2_mul_temp__1_n_108,Gain2_mul_temp__1_n_109,Gain2_mul_temp__1_n_110,Gain2_mul_temp__1_n_111,Gain2_mul_temp__1_n_112,Gain2_mul_temp__1_n_113,Gain2_mul_temp__1_n_114,Gain2_mul_temp__1_n_115,Gain2_mul_temp__1_n_116,Gain2_mul_temp__1_n_117,Gain2_mul_temp__1_n_118,Gain2_mul_temp__1_n_119,Gain2_mul_temp__1_n_120,Gain2_mul_temp__1_n_121,Gain2_mul_temp__1_n_122,Gain2_mul_temp__1_n_123,Gain2_mul_temp__1_n_124,Gain2_mul_temp__1_n_125,Gain2_mul_temp__1_n_126,Gain2_mul_temp__1_n_127,Gain2_mul_temp__1_n_128,Gain2_mul_temp__1_n_129,Gain2_mul_temp__1_n_130,Gain2_mul_temp__1_n_131,Gain2_mul_temp__1_n_132,Gain2_mul_temp__1_n_133,Gain2_mul_temp__1_n_134,Gain2_mul_temp__1_n_135,Gain2_mul_temp__1_n_136,Gain2_mul_temp__1_n_137,Gain2_mul_temp__1_n_138,Gain2_mul_temp__1_n_139,Gain2_mul_temp__1_n_140,Gain2_mul_temp__1_n_141,Gain2_mul_temp__1_n_142,Gain2_mul_temp__1_n_143,Gain2_mul_temp__1_n_144,Gain2_mul_temp__1_n_145,Gain2_mul_temp__1_n_146,Gain2_mul_temp__1_n_147,Gain2_mul_temp__1_n_148,Gain2_mul_temp__1_n_149,Gain2_mul_temp__1_n_150,Gain2_mul_temp__1_n_151,Gain2_mul_temp__1_n_152,Gain2_mul_temp__1_n_153}),
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
        .UNDERFLOW(NLW_Gain2_mul_temp__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    Gain2_mul_temp__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({Gain2_mul_temp__1_n_24,Gain2_mul_temp__1_n_25,Gain2_mul_temp__1_n_26,Gain2_mul_temp__1_n_27,Gain2_mul_temp__1_n_28,Gain2_mul_temp__1_n_29,Gain2_mul_temp__1_n_30,Gain2_mul_temp__1_n_31,Gain2_mul_temp__1_n_32,Gain2_mul_temp__1_n_33,Gain2_mul_temp__1_n_34,Gain2_mul_temp__1_n_35,Gain2_mul_temp__1_n_36,Gain2_mul_temp__1_n_37,Gain2_mul_temp__1_n_38,Gain2_mul_temp__1_n_39,Gain2_mul_temp__1_n_40,Gain2_mul_temp__1_n_41,Gain2_mul_temp__1_n_42,Gain2_mul_temp__1_n_43,Gain2_mul_temp__1_n_44,Gain2_mul_temp__1_n_45,Gain2_mul_temp__1_n_46,Gain2_mul_temp__1_n_47,Gain2_mul_temp__1_n_48,Gain2_mul_temp__1_n_49,Gain2_mul_temp__1_n_50,Gain2_mul_temp__1_n_51,Gain2_mul_temp__1_n_52,Gain2_mul_temp__1_n_53}),
        .ACOUT(NLW_Gain2_mul_temp__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,position[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain2_mul_temp__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain2_mul_temp__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain2_mul_temp__2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain2_mul_temp__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain2_mul_temp__2_OVERFLOW_UNCONNECTED),
        .P({Gain2_mul_temp__2_n_58,Gain2_mul_temp__2_n_59,Gain2_mul_temp__2_n_60,Gain2_mul_temp__2_n_61,Gain2_mul_temp__2_n_62,Gain2_mul_temp__2_n_63,Gain2_mul_temp__2_n_64,Gain2_mul_temp__2_n_65,Gain2_mul_temp__2_n_66,Gain2_mul_temp__2_n_67,Gain2_mul_temp__2_n_68,Gain2_mul_temp__2_n_69,Gain2_mul_temp__2_n_70,Gain2_mul_temp__2_n_71,Gain2_mul_temp__2_n_72,Gain2_mul_temp__2_n_73,Gain2_mul_temp__2_n_74,Gain2_mul_temp__2_n_75,Gain2_mul_temp__2_n_76,Gain2_mul_temp__2_n_77,Gain2_mul_temp__2_n_78,Gain2_mul_temp__2_n_79,Gain2_mul_temp__2_n_80,Gain2_mul_temp__2_n_81,Gain2_mul_temp__2_n_82,Gain2_mul_temp__2_n_83,Gain2_mul_temp__2_n_84,Gain2_mul_temp__2_n_85,Gain2_mul_temp__2_n_86,Gain2_mul_temp__2_n_87,Gain2_mul_temp__2_n_88,Gain2_mul_temp__2_n_89,Gain2_mul_temp__2_n_90,Gain2_mul_temp__2_n_91,Gain2_mul_temp__2_n_92,Gain2_mul_temp__2_n_93,Gain2_mul_temp__2_n_94,Gain2_mul_temp__2_n_95,Gain2_mul_temp__2_n_96,Gain2_mul_temp__2_n_97,Gain2_mul_temp__2_n_98,Gain2_mul_temp__2_n_99,Gain2_mul_temp__2_n_100,Gain2_mul_temp__2_n_101,Gain2_mul_temp__2_n_102,Gain2_mul_temp__2_n_103,Gain2_mul_temp__2_n_104,Gain2_mul_temp__2_n_105}),
        .PATTERNBDETECT(NLW_Gain2_mul_temp__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain2_mul_temp__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain2_mul_temp__1_n_106,Gain2_mul_temp__1_n_107,Gain2_mul_temp__1_n_108,Gain2_mul_temp__1_n_109,Gain2_mul_temp__1_n_110,Gain2_mul_temp__1_n_111,Gain2_mul_temp__1_n_112,Gain2_mul_temp__1_n_113,Gain2_mul_temp__1_n_114,Gain2_mul_temp__1_n_115,Gain2_mul_temp__1_n_116,Gain2_mul_temp__1_n_117,Gain2_mul_temp__1_n_118,Gain2_mul_temp__1_n_119,Gain2_mul_temp__1_n_120,Gain2_mul_temp__1_n_121,Gain2_mul_temp__1_n_122,Gain2_mul_temp__1_n_123,Gain2_mul_temp__1_n_124,Gain2_mul_temp__1_n_125,Gain2_mul_temp__1_n_126,Gain2_mul_temp__1_n_127,Gain2_mul_temp__1_n_128,Gain2_mul_temp__1_n_129,Gain2_mul_temp__1_n_130,Gain2_mul_temp__1_n_131,Gain2_mul_temp__1_n_132,Gain2_mul_temp__1_n_133,Gain2_mul_temp__1_n_134,Gain2_mul_temp__1_n_135,Gain2_mul_temp__1_n_136,Gain2_mul_temp__1_n_137,Gain2_mul_temp__1_n_138,Gain2_mul_temp__1_n_139,Gain2_mul_temp__1_n_140,Gain2_mul_temp__1_n_141,Gain2_mul_temp__1_n_142,Gain2_mul_temp__1_n_143,Gain2_mul_temp__1_n_144,Gain2_mul_temp__1_n_145,Gain2_mul_temp__1_n_146,Gain2_mul_temp__1_n_147,Gain2_mul_temp__1_n_148,Gain2_mul_temp__1_n_149,Gain2_mul_temp__1_n_150,Gain2_mul_temp__1_n_151,Gain2_mul_temp__1_n_152,Gain2_mul_temp__1_n_153}),
        .PCOUT(NLW_Gain2_mul_temp__2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain2_mul_temp__2_UNDERFLOW_UNCONNECTED));
  CARRY4 Gain2_mul_temp_carry
       (.CI(1'b0),
        .CO({Gain2_mul_temp_carry_n_0,Gain2_mul_temp_carry_n_1,Gain2_mul_temp_carry_n_2,Gain2_mul_temp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_103,Gain2_mul_temp__2_n_104,Gain2_mul_temp__2_n_105,1'b0}),
        .O(NLW_Gain2_mul_temp_carry_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry_i_1_n_0,Gain2_mul_temp_carry_i_2_n_0,Gain2_mul_temp_carry_i_3_n_0,Gain2_mul_temp__1_n_89}));
  CARRY4 Gain2_mul_temp_carry__0
       (.CI(Gain2_mul_temp_carry_n_0),
        .CO({Gain2_mul_temp_carry__0_n_0,Gain2_mul_temp_carry__0_n_1,Gain2_mul_temp_carry__0_n_2,Gain2_mul_temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_99,Gain2_mul_temp__2_n_100,Gain2_mul_temp__2_n_101,Gain2_mul_temp__2_n_102}),
        .O(NLW_Gain2_mul_temp_carry__0_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__0_i_1_n_0,Gain2_mul_temp_carry__0_i_2_n_0,Gain2_mul_temp_carry__0_i_3_n_0,Gain2_mul_temp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__0_i_1
       (.I0(Gain2_mul_temp__2_n_99),
        .I1(Gain2_mul_temp_n_99),
        .O(Gain2_mul_temp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__0_i_2
       (.I0(Gain2_mul_temp__2_n_100),
        .I1(Gain2_mul_temp_n_100),
        .O(Gain2_mul_temp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__0_i_3
       (.I0(Gain2_mul_temp__2_n_101),
        .I1(Gain2_mul_temp_n_101),
        .O(Gain2_mul_temp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__0_i_4
       (.I0(Gain2_mul_temp__2_n_102),
        .I1(Gain2_mul_temp_n_102),
        .O(Gain2_mul_temp_carry__0_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__1
       (.CI(Gain2_mul_temp_carry__0_n_0),
        .CO({Gain2_mul_temp_carry__1_n_0,Gain2_mul_temp_carry__1_n_1,Gain2_mul_temp_carry__1_n_2,Gain2_mul_temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_95,Gain2_mul_temp__2_n_96,Gain2_mul_temp__2_n_97,Gain2_mul_temp__2_n_98}),
        .O(NLW_Gain2_mul_temp_carry__1_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__1_i_1_n_0,Gain2_mul_temp_carry__1_i_2_n_0,Gain2_mul_temp_carry__1_i_3_n_0,Gain2_mul_temp_carry__1_i_4_n_0}));
  CARRY4 Gain2_mul_temp_carry__10
       (.CI(Gain2_mul_temp_carry__9_n_0),
        .CO({NLW_Gain2_mul_temp_carry__10_CO_UNCONNECTED[3],Gain2_mul_temp_carry__10_n_1,Gain2_mul_temp_carry__10_n_2,Gain2_mul_temp_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Gain2_mul_temp__2_n_60,Gain2_mul_temp__2_n_61,Gain2_mul_temp__2_n_62}),
        .O(Gain2_mul_temp__3[63:60]),
        .S({Gain2_mul_temp_carry__10_i_1_n_0,Gain2_mul_temp_carry__10_i_2_n_0,Gain2_mul_temp_carry__10_i_3_n_0,Gain2_mul_temp_carry__10_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__10_i_1
       (.I0(Gain2_mul_temp__0_n_76),
        .I1(Gain2_mul_temp__2_n_59),
        .O(Gain2_mul_temp_carry__10_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__10_i_2
       (.I0(Gain2_mul_temp__2_n_60),
        .I1(Gain2_mul_temp__0_n_77),
        .O(Gain2_mul_temp_carry__10_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__10_i_3
       (.I0(Gain2_mul_temp__2_n_61),
        .I1(Gain2_mul_temp__0_n_78),
        .O(Gain2_mul_temp_carry__10_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__10_i_4
       (.I0(Gain2_mul_temp__2_n_62),
        .I1(Gain2_mul_temp__0_n_79),
        .O(Gain2_mul_temp_carry__10_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__1_i_1
       (.I0(Gain2_mul_temp__2_n_95),
        .I1(Gain2_mul_temp_n_95),
        .O(Gain2_mul_temp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__1_i_2
       (.I0(Gain2_mul_temp__2_n_96),
        .I1(Gain2_mul_temp_n_96),
        .O(Gain2_mul_temp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__1_i_3
       (.I0(Gain2_mul_temp__2_n_97),
        .I1(Gain2_mul_temp_n_97),
        .O(Gain2_mul_temp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__1_i_4
       (.I0(Gain2_mul_temp__2_n_98),
        .I1(Gain2_mul_temp_n_98),
        .O(Gain2_mul_temp_carry__1_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__2
       (.CI(Gain2_mul_temp_carry__1_n_0),
        .CO({Gain2_mul_temp_carry__2_n_0,Gain2_mul_temp_carry__2_n_1,Gain2_mul_temp_carry__2_n_2,Gain2_mul_temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_91,Gain2_mul_temp__2_n_92,Gain2_mul_temp__2_n_93,Gain2_mul_temp__2_n_94}),
        .O(NLW_Gain2_mul_temp_carry__2_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__2_i_1_n_0,Gain2_mul_temp_carry__2_i_2_n_0,Gain2_mul_temp_carry__2_i_3_n_0,Gain2_mul_temp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__2_i_1
       (.I0(Gain2_mul_temp__2_n_91),
        .I1(Gain2_mul_temp_n_91),
        .O(Gain2_mul_temp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__2_i_2
       (.I0(Gain2_mul_temp__2_n_92),
        .I1(Gain2_mul_temp_n_92),
        .O(Gain2_mul_temp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__2_i_3
       (.I0(Gain2_mul_temp__2_n_93),
        .I1(Gain2_mul_temp_n_93),
        .O(Gain2_mul_temp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__2_i_4
       (.I0(Gain2_mul_temp__2_n_94),
        .I1(Gain2_mul_temp_n_94),
        .O(Gain2_mul_temp_carry__2_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__3
       (.CI(Gain2_mul_temp_carry__2_n_0),
        .CO({Gain2_mul_temp_carry__3_n_0,Gain2_mul_temp_carry__3_n_1,Gain2_mul_temp_carry__3_n_2,Gain2_mul_temp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_87,Gain2_mul_temp__2_n_88,Gain2_mul_temp__2_n_89,Gain2_mul_temp__2_n_90}),
        .O(NLW_Gain2_mul_temp_carry__3_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__3_i_1_n_0,Gain2_mul_temp_carry__3_i_2_n_0,Gain2_mul_temp_carry__3_i_3_n_0,Gain2_mul_temp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__3_i_1
       (.I0(Gain2_mul_temp__2_n_87),
        .I1(Gain2_mul_temp__0_n_104),
        .O(Gain2_mul_temp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__3_i_2
       (.I0(Gain2_mul_temp__2_n_88),
        .I1(Gain2_mul_temp__0_n_105),
        .O(Gain2_mul_temp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__3_i_3
       (.I0(Gain2_mul_temp__2_n_89),
        .I1(Gain2_mul_temp_n_89),
        .O(Gain2_mul_temp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__3_i_4
       (.I0(Gain2_mul_temp__2_n_90),
        .I1(Gain2_mul_temp_n_90),
        .O(Gain2_mul_temp_carry__3_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__4
       (.CI(Gain2_mul_temp_carry__3_n_0),
        .CO({Gain2_mul_temp_carry__4_n_0,Gain2_mul_temp_carry__4_n_1,Gain2_mul_temp_carry__4_n_2,Gain2_mul_temp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_83,Gain2_mul_temp__2_n_84,Gain2_mul_temp__2_n_85,Gain2_mul_temp__2_n_86}),
        .O(NLW_Gain2_mul_temp_carry__4_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__4_i_1_n_0,Gain2_mul_temp_carry__4_i_2_n_0,Gain2_mul_temp_carry__4_i_3_n_0,Gain2_mul_temp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__4_i_1
       (.I0(Gain2_mul_temp__2_n_83),
        .I1(Gain2_mul_temp__0_n_100),
        .O(Gain2_mul_temp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__4_i_2
       (.I0(Gain2_mul_temp__2_n_84),
        .I1(Gain2_mul_temp__0_n_101),
        .O(Gain2_mul_temp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__4_i_3
       (.I0(Gain2_mul_temp__2_n_85),
        .I1(Gain2_mul_temp__0_n_102),
        .O(Gain2_mul_temp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__4_i_4
       (.I0(Gain2_mul_temp__2_n_86),
        .I1(Gain2_mul_temp__0_n_103),
        .O(Gain2_mul_temp_carry__4_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__5
       (.CI(Gain2_mul_temp_carry__4_n_0),
        .CO({Gain2_mul_temp_carry__5_n_0,Gain2_mul_temp_carry__5_n_1,Gain2_mul_temp_carry__5_n_2,Gain2_mul_temp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_79,Gain2_mul_temp__2_n_80,Gain2_mul_temp__2_n_81,Gain2_mul_temp__2_n_82}),
        .O(NLW_Gain2_mul_temp_carry__5_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__5_i_1_n_0,Gain2_mul_temp_carry__5_i_2_n_0,Gain2_mul_temp_carry__5_i_3_n_0,Gain2_mul_temp_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__5_i_1
       (.I0(Gain2_mul_temp__2_n_79),
        .I1(Gain2_mul_temp__0_n_96),
        .O(Gain2_mul_temp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__5_i_2
       (.I0(Gain2_mul_temp__2_n_80),
        .I1(Gain2_mul_temp__0_n_97),
        .O(Gain2_mul_temp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__5_i_3
       (.I0(Gain2_mul_temp__2_n_81),
        .I1(Gain2_mul_temp__0_n_98),
        .O(Gain2_mul_temp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__5_i_4
       (.I0(Gain2_mul_temp__2_n_82),
        .I1(Gain2_mul_temp__0_n_99),
        .O(Gain2_mul_temp_carry__5_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__6
       (.CI(Gain2_mul_temp_carry__5_n_0),
        .CO({Gain2_mul_temp_carry__6_n_0,Gain2_mul_temp_carry__6_n_1,Gain2_mul_temp_carry__6_n_2,Gain2_mul_temp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_75,Gain2_mul_temp__2_n_76,Gain2_mul_temp__2_n_77,Gain2_mul_temp__2_n_78}),
        .O(NLW_Gain2_mul_temp_carry__6_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__6_i_1_n_0,Gain2_mul_temp_carry__6_i_2_n_0,Gain2_mul_temp_carry__6_i_3_n_0,Gain2_mul_temp_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__6_i_1
       (.I0(Gain2_mul_temp__2_n_75),
        .I1(Gain2_mul_temp__0_n_92),
        .O(Gain2_mul_temp_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__6_i_2
       (.I0(Gain2_mul_temp__2_n_76),
        .I1(Gain2_mul_temp__0_n_93),
        .O(Gain2_mul_temp_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__6_i_3
       (.I0(Gain2_mul_temp__2_n_77),
        .I1(Gain2_mul_temp__0_n_94),
        .O(Gain2_mul_temp_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__6_i_4
       (.I0(Gain2_mul_temp__2_n_78),
        .I1(Gain2_mul_temp__0_n_95),
        .O(Gain2_mul_temp_carry__6_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__7
       (.CI(Gain2_mul_temp_carry__6_n_0),
        .CO({Gain2_mul_temp_carry__7_n_0,Gain2_mul_temp_carry__7_n_1,Gain2_mul_temp_carry__7_n_2,Gain2_mul_temp_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_71,Gain2_mul_temp__2_n_72,Gain2_mul_temp__2_n_73,Gain2_mul_temp__2_n_74}),
        .O(NLW_Gain2_mul_temp_carry__7_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__7_i_1_n_0,Gain2_mul_temp_carry__7_i_2_n_0,Gain2_mul_temp_carry__7_i_3_n_0,Gain2_mul_temp_carry__7_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__7_i_1
       (.I0(Gain2_mul_temp__2_n_71),
        .I1(Gain2_mul_temp__0_n_88),
        .O(Gain2_mul_temp_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__7_i_2
       (.I0(Gain2_mul_temp__2_n_72),
        .I1(Gain2_mul_temp__0_n_89),
        .O(Gain2_mul_temp_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__7_i_3
       (.I0(Gain2_mul_temp__2_n_73),
        .I1(Gain2_mul_temp__0_n_90),
        .O(Gain2_mul_temp_carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__7_i_4
       (.I0(Gain2_mul_temp__2_n_74),
        .I1(Gain2_mul_temp__0_n_91),
        .O(Gain2_mul_temp_carry__7_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__8
       (.CI(Gain2_mul_temp_carry__7_n_0),
        .CO({Gain2_mul_temp_carry__8_n_0,Gain2_mul_temp_carry__8_n_1,Gain2_mul_temp_carry__8_n_2,Gain2_mul_temp_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_67,Gain2_mul_temp__2_n_68,Gain2_mul_temp__2_n_69,Gain2_mul_temp__2_n_70}),
        .O(NLW_Gain2_mul_temp_carry__8_O_UNCONNECTED[3:0]),
        .S({Gain2_mul_temp_carry__8_i_1_n_0,Gain2_mul_temp_carry__8_i_2_n_0,Gain2_mul_temp_carry__8_i_3_n_0,Gain2_mul_temp_carry__8_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__8_i_1
       (.I0(Gain2_mul_temp__2_n_67),
        .I1(Gain2_mul_temp__0_n_84),
        .O(Gain2_mul_temp_carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__8_i_2
       (.I0(Gain2_mul_temp__2_n_68),
        .I1(Gain2_mul_temp__0_n_85),
        .O(Gain2_mul_temp_carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__8_i_3
       (.I0(Gain2_mul_temp__2_n_69),
        .I1(Gain2_mul_temp__0_n_86),
        .O(Gain2_mul_temp_carry__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__8_i_4
       (.I0(Gain2_mul_temp__2_n_70),
        .I1(Gain2_mul_temp__0_n_87),
        .O(Gain2_mul_temp_carry__8_i_4_n_0));
  CARRY4 Gain2_mul_temp_carry__9
       (.CI(Gain2_mul_temp_carry__8_n_0),
        .CO({Gain2_mul_temp_carry__9_n_0,Gain2_mul_temp_carry__9_n_1,Gain2_mul_temp_carry__9_n_2,Gain2_mul_temp_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({Gain2_mul_temp__2_n_63,Gain2_mul_temp__2_n_64,Gain2_mul_temp__2_n_65,Gain2_mul_temp__2_n_66}),
        .O({Gain2_mul_temp__3[59],NLW_Gain2_mul_temp_carry__9_O_UNCONNECTED[2:0]}),
        .S({Gain2_mul_temp_carry__9_i_1_n_0,Gain2_mul_temp_carry__9_i_2_n_0,Gain2_mul_temp_carry__9_i_3_n_0,Gain2_mul_temp_carry__9_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__9_i_1
       (.I0(Gain2_mul_temp__2_n_63),
        .I1(Gain2_mul_temp__0_n_80),
        .O(Gain2_mul_temp_carry__9_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__9_i_2
       (.I0(Gain2_mul_temp__2_n_64),
        .I1(Gain2_mul_temp__0_n_81),
        .O(Gain2_mul_temp_carry__9_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__9_i_3
       (.I0(Gain2_mul_temp__2_n_65),
        .I1(Gain2_mul_temp__0_n_82),
        .O(Gain2_mul_temp_carry__9_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry__9_i_4
       (.I0(Gain2_mul_temp__2_n_66),
        .I1(Gain2_mul_temp__0_n_83),
        .O(Gain2_mul_temp_carry__9_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry_i_1
       (.I0(Gain2_mul_temp__2_n_103),
        .I1(Gain2_mul_temp_n_103),
        .O(Gain2_mul_temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry_i_2
       (.I0(Gain2_mul_temp__2_n_104),
        .I1(Gain2_mul_temp_n_104),
        .O(Gain2_mul_temp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain2_mul_temp_carry_i_3
       (.I0(Gain2_mul_temp__2_n_105),
        .I1(Gain2_mul_temp_n_105),
        .O(Gain2_mul_temp_carry_i_3_n_0));
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
    .CREG(0),
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
    Gain3_add_temp
       (.A({\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep_n_0 ,\Unit_Delay2_out1_reg[1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain3_add_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain3_add_temp_BCOUT_UNCONNECTED[17:0]),
        .C({Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0[28],Gain3_mul_temp__0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain3_add_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain3_add_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain3_add_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain3_add_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain3_add_temp_P_UNCONNECTED[47:29],Gain3_add_temp_n_77,Gain3_add_temp_n_78,Gain3_add_temp_n_79,Gain3_add_temp_n_80,Gain3_add_temp_n_81,Gain3_add_temp_n_82,Gain3_add_temp_n_83,Gain3_add_temp_n_84,Gain3_add_temp_n_85,Gain3_add_temp_n_86,Gain3_add_temp_n_87,Gain3_add_temp_n_88,Gain3_add_temp_n_89,Gain3_add_temp_n_90,Gain3_add_temp_n_91,Gain3_add_temp_n_92,Gain3_add_temp_n_93,Gain3_add_temp_n_94,Gain3_add_temp_n_95,Gain3_add_temp_n_96,Gain3_add_temp_n_97,Gain3_add_temp_n_98,Gain3_add_temp_n_99,Gain3_add_temp_n_100,Gain3_add_temp_n_101,Gain3_add_temp_n_102,Gain3_add_temp_n_103,Gain3_add_temp_n_104,Gain3_add_temp_n_105}),
        .PATTERNBDETECT(NLW_Gain3_add_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain3_add_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gain3_add_temp_n_106,Gain3_add_temp_n_107,Gain3_add_temp_n_108,Gain3_add_temp_n_109,Gain3_add_temp_n_110,Gain3_add_temp_n_111,Gain3_add_temp_n_112,Gain3_add_temp_n_113,Gain3_add_temp_n_114,Gain3_add_temp_n_115,Gain3_add_temp_n_116,Gain3_add_temp_n_117,Gain3_add_temp_n_118,Gain3_add_temp_n_119,Gain3_add_temp_n_120,Gain3_add_temp_n_121,Gain3_add_temp_n_122,Gain3_add_temp_n_123,Gain3_add_temp_n_124,Gain3_add_temp_n_125,Gain3_add_temp_n_126,Gain3_add_temp_n_127,Gain3_add_temp_n_128,Gain3_add_temp_n_129,Gain3_add_temp_n_130,Gain3_add_temp_n_131,Gain3_add_temp_n_132,Gain3_add_temp_n_133,Gain3_add_temp_n_134,Gain3_add_temp_n_135,Gain3_add_temp_n_136,Gain3_add_temp_n_137,Gain3_add_temp_n_138,Gain3_add_temp_n_139,Gain3_add_temp_n_140,Gain3_add_temp_n_141,Gain3_add_temp_n_142,Gain3_add_temp_n_143,Gain3_add_temp_n_144,Gain3_add_temp_n_145,Gain3_add_temp_n_146,Gain3_add_temp_n_147,Gain3_add_temp_n_148,Gain3_add_temp_n_149,Gain3_add_temp_n_150,Gain3_add_temp_n_151,Gain3_add_temp_n_152,Gain3_add_temp_n_153}),
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
        .UNDERFLOW(NLW_Gain3_add_temp_UNDERFLOW_UNCONNECTED));
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
    Gain3_add_temp_1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain3_add_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2] [14:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain3_add_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain3_add_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain3_add_temp_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain3_add_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain3_add_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain3_add_temp_1_P_UNCONNECTED[47:29],Gain3_add_temp_1_n_77,Gain3_add_temp_1_n_78,Gain3_add_temp_1_n_79,Gain3_add_temp_1_n_80,Gain3_add_temp_1_n_81,Gain3_add_temp_1_n_82,Gain3_add_temp_1_n_83,Gain3_add_temp_1_n_84,Gain3_add_temp_1_n_85,Gain3_add_temp_1_n_86,Gain3_add_temp_1_n_87,Gain3_add_temp_1_n_88,Gain3_add_temp_1_n_89,Gain3_add_temp_1_n_90,Gain3_add_temp_1_n_91,Gain3_add_temp_1_n_92,Gain3_add_temp_1_n_93,Gain3_add_temp_1_n_94,Gain3_add_temp_1_n_95,Gain3_add_temp_1_n_96,Gain3_add_temp_1_n_97,Gain3_add_temp_1_n_98,Gain3_add_temp_1_n_99,Gain3_add_temp_1_n_100,Gain3_add_temp_1_n_101,Gain3_add_temp_1_n_102,Gain3_add_temp_1_n_103,Gain3_add_temp_1_n_104,Gain3_add_temp_1_n_105}),
        .PATTERNBDETECT(NLW_Gain3_add_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain3_add_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain3_add_temp_n_106,Gain3_add_temp_n_107,Gain3_add_temp_n_108,Gain3_add_temp_n_109,Gain3_add_temp_n_110,Gain3_add_temp_n_111,Gain3_add_temp_n_112,Gain3_add_temp_n_113,Gain3_add_temp_n_114,Gain3_add_temp_n_115,Gain3_add_temp_n_116,Gain3_add_temp_n_117,Gain3_add_temp_n_118,Gain3_add_temp_n_119,Gain3_add_temp_n_120,Gain3_add_temp_n_121,Gain3_add_temp_n_122,Gain3_add_temp_n_123,Gain3_add_temp_n_124,Gain3_add_temp_n_125,Gain3_add_temp_n_126,Gain3_add_temp_n_127,Gain3_add_temp_n_128,Gain3_add_temp_n_129,Gain3_add_temp_n_130,Gain3_add_temp_n_131,Gain3_add_temp_n_132,Gain3_add_temp_n_133,Gain3_add_temp_n_134,Gain3_add_temp_n_135,Gain3_add_temp_n_136,Gain3_add_temp_n_137,Gain3_add_temp_n_138,Gain3_add_temp_n_139,Gain3_add_temp_n_140,Gain3_add_temp_n_141,Gain3_add_temp_n_142,Gain3_add_temp_n_143,Gain3_add_temp_n_144,Gain3_add_temp_n_145,Gain3_add_temp_n_146,Gain3_add_temp_n_147,Gain3_add_temp_n_148,Gain3_add_temp_n_149,Gain3_add_temp_n_150,Gain3_add_temp_n_151,Gain3_add_temp_n_152,Gain3_add_temp_n_153}),
        .PCOUT({Gain3_add_temp_1_n_106,Gain3_add_temp_1_n_107,Gain3_add_temp_1_n_108,Gain3_add_temp_1_n_109,Gain3_add_temp_1_n_110,Gain3_add_temp_1_n_111,Gain3_add_temp_1_n_112,Gain3_add_temp_1_n_113,Gain3_add_temp_1_n_114,Gain3_add_temp_1_n_115,Gain3_add_temp_1_n_116,Gain3_add_temp_1_n_117,Gain3_add_temp_1_n_118,Gain3_add_temp_1_n_119,Gain3_add_temp_1_n_120,Gain3_add_temp_1_n_121,Gain3_add_temp_1_n_122,Gain3_add_temp_1_n_123,Gain3_add_temp_1_n_124,Gain3_add_temp_1_n_125,Gain3_add_temp_1_n_126,Gain3_add_temp_1_n_127,Gain3_add_temp_1_n_128,Gain3_add_temp_1_n_129,Gain3_add_temp_1_n_130,Gain3_add_temp_1_n_131,Gain3_add_temp_1_n_132,Gain3_add_temp_1_n_133,Gain3_add_temp_1_n_134,Gain3_add_temp_1_n_135,Gain3_add_temp_1_n_136,Gain3_add_temp_1_n_137,Gain3_add_temp_1_n_138,Gain3_add_temp_1_n_139,Gain3_add_temp_1_n_140,Gain3_add_temp_1_n_141,Gain3_add_temp_1_n_142,Gain3_add_temp_1_n_143,Gain3_add_temp_1_n_144,Gain3_add_temp_1_n_145,Gain3_add_temp_1_n_146,Gain3_add_temp_1_n_147,Gain3_add_temp_1_n_148,Gain3_add_temp_1_n_149,Gain3_add_temp_1_n_150,Gain3_add_temp_1_n_151,Gain3_add_temp_1_n_152,Gain3_add_temp_1_n_153}),
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
        .UNDERFLOW(NLW_Gain3_add_temp_1_UNDERFLOW_UNCONNECTED));
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
    Gain3_add_temp_2
       (.A({\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep_n_0 ,\Unit_Delay2_out1_reg[3] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain3_add_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain3_add_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain3_add_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain3_add_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain3_add_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain3_add_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain3_add_temp_2_P_UNCONNECTED[47:29],Gain3_add_temp_2_n_77,Gain3_add_temp_2_n_78,Gain3_add_temp_2_n_79,Gain3_add_temp_2_n_80,Gain3_add_temp_2_n_81,Gain3_add_temp_2_n_82,Gain3_add_temp_2_n_83,Gain3_add_temp_2_n_84,Gain3_add_temp_2_n_85,Gain3_add_temp_2_n_86,Gain3_add_temp_2_n_87,Gain3_add_temp_2_n_88,Gain3_add_temp_2_n_89,Gain3_add_temp_2_n_90,Gain3_add_temp_2_n_91,Gain3_add_temp_2_n_92,Gain3_add_temp_2_n_93,Gain3_add_temp_2_n_94,Gain3_add_temp_2_n_95,Gain3_add_temp_2_n_96,Gain3_add_temp_2_n_97,Gain3_add_temp_2_n_98,Gain3_add_temp_2_n_99,Gain3_add_temp_2_n_100,Gain3_add_temp_2_n_101,Gain3_add_temp_2_n_102,Gain3_add_temp_2_n_103,Gain3_add_temp_2_n_104,Gain3_add_temp_2_n_105}),
        .PATTERNBDETECT(NLW_Gain3_add_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain3_add_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gain3_add_temp_1_n_106,Gain3_add_temp_1_n_107,Gain3_add_temp_1_n_108,Gain3_add_temp_1_n_109,Gain3_add_temp_1_n_110,Gain3_add_temp_1_n_111,Gain3_add_temp_1_n_112,Gain3_add_temp_1_n_113,Gain3_add_temp_1_n_114,Gain3_add_temp_1_n_115,Gain3_add_temp_1_n_116,Gain3_add_temp_1_n_117,Gain3_add_temp_1_n_118,Gain3_add_temp_1_n_119,Gain3_add_temp_1_n_120,Gain3_add_temp_1_n_121,Gain3_add_temp_1_n_122,Gain3_add_temp_1_n_123,Gain3_add_temp_1_n_124,Gain3_add_temp_1_n_125,Gain3_add_temp_1_n_126,Gain3_add_temp_1_n_127,Gain3_add_temp_1_n_128,Gain3_add_temp_1_n_129,Gain3_add_temp_1_n_130,Gain3_add_temp_1_n_131,Gain3_add_temp_1_n_132,Gain3_add_temp_1_n_133,Gain3_add_temp_1_n_134,Gain3_add_temp_1_n_135,Gain3_add_temp_1_n_136,Gain3_add_temp_1_n_137,Gain3_add_temp_1_n_138,Gain3_add_temp_1_n_139,Gain3_add_temp_1_n_140,Gain3_add_temp_1_n_141,Gain3_add_temp_1_n_142,Gain3_add_temp_1_n_143,Gain3_add_temp_1_n_144,Gain3_add_temp_1_n_145,Gain3_add_temp_1_n_146,Gain3_add_temp_1_n_147,Gain3_add_temp_1_n_148,Gain3_add_temp_1_n_149,Gain3_add_temp_1_n_150,Gain3_add_temp_1_n_151,Gain3_add_temp_1_n_152,Gain3_add_temp_1_n_153}),
        .PCOUT(NLW_Gain3_add_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain3_add_temp_2_UNDERFLOW_UNCONNECTED));
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
    Gain3_mul_temp
       (.A({\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] [15],\Unit_Delay2_out1_reg[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain3_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain3_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain3_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain3_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain3_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain3_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain3_mul_temp_P_UNCONNECTED[47:31],Gain3_mul_temp_n_75,Gain3_mul_temp_n_76,Gain3_mul_temp__0}),
        .PATTERNBDETECT(NLW_Gain3_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain3_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain3_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain3_mul_temp_UNDERFLOW_UNCONNECTED));
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
    Gain5_mul_temp
       (.A({Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain5_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain5_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain5_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain5_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain5_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain5_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain5_mul_temp_P_UNCONNECTED[47:23],\Sum6_add_cast[0] ,Gain5_mul_temp_n_92,Gain5_mul_temp_n_93,Gain5_mul_temp_n_94,Gain5_mul_temp_n_95,Gain5_mul_temp_n_96,Gain5_mul_temp_n_97,Gain5_mul_temp_n_98,Gain5_mul_temp_n_99,Gain5_mul_temp_n_100,Gain5_mul_temp_n_101,Gain5_mul_temp_n_102,Gain5_mul_temp_n_103,Gain5_mul_temp_n_104,Gain5_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Gain5_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain5_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain5_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain5_mul_temp_UNDERFLOW_UNCONNECTED));
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
    Gain5_mul_temp_1
       (.A({Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain5_mul_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain5_mul_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain5_mul_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain5_mul_temp_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain5_mul_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain5_mul_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain5_mul_temp_1_P_UNCONNECTED[47:31],Gain5_mul_temp_1_n_75,Gain5_mul_temp_1_n_76,\Sum6_add_cast[1] ,Gain5_mul_temp_1_n_92,Gain5_mul_temp_1_n_93,Gain5_mul_temp_1_n_94,Gain5_mul_temp_1_n_95,Gain5_mul_temp_1_n_96,Gain5_mul_temp_1_n_97,Gain5_mul_temp_1_n_98,Gain5_mul_temp_1_n_99,Gain5_mul_temp_1_n_100,Gain5_mul_temp_1_n_101,Gain5_mul_temp_1_n_102,Gain5_mul_temp_1_n_103,Gain5_mul_temp_1_n_104,Gain5_mul_temp_1_n_105}),
        .PATTERNBDETECT(NLW_Gain5_mul_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain5_mul_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain5_mul_temp_1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain5_mul_temp_1_UNDERFLOW_UNCONNECTED));
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
    Gain5_mul_temp_2
       (.A({Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain5_mul_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain5_mul_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain5_mul_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain5_mul_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain5_mul_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain5_mul_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain5_mul_temp_2_P_UNCONNECTED[47:24],\Sum6_add_cast[2] ,Gain5_mul_temp_2_n_92,Gain5_mul_temp_2_n_93,Gain5_mul_temp_2_n_94,Gain5_mul_temp_2_n_95,Gain5_mul_temp_2_n_96,Gain5_mul_temp_2_n_97,Gain5_mul_temp_2_n_98,Gain5_mul_temp_2_n_99,Gain5_mul_temp_2_n_100,Gain5_mul_temp_2_n_101,Gain5_mul_temp_2_n_102,Gain5_mul_temp_2_n_103,Gain5_mul_temp_2_n_104,Gain5_mul_temp_2_n_105}),
        .PATTERNBDETECT(NLW_Gain5_mul_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain5_mul_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain5_mul_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain5_mul_temp_2_UNDERFLOW_UNCONNECTED));
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
    Gain5_mul_temp_3
       (.A({Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,Sum3_out1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain5_mul_temp_3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain5_mul_temp_3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain5_mul_temp_3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain5_mul_temp_3_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain5_mul_temp_3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain5_mul_temp_3_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain5_mul_temp_3_P_UNCONNECTED[47:32],Gain5_mul_temp_3_n_74,Gain5_mul_temp_3_n_75,Gain5_mul_temp_3_n_76,\Sum6_add_cast[3] ,Gain5_mul_temp_3_n_92,Gain5_mul_temp_3_n_93,Gain5_mul_temp_3_n_94,Gain5_mul_temp_3_n_95,Gain5_mul_temp_3_n_96,Gain5_mul_temp_3_n_97,Gain5_mul_temp_3_n_98,Gain5_mul_temp_3_n_99,Gain5_mul_temp_3_n_100,Gain5_mul_temp_3_n_101,Gain5_mul_temp_3_n_102,Gain5_mul_temp_3_n_103,Gain5_mul_temp_3_n_104,Gain5_mul_temp_3_n_105}),
        .PATTERNBDETECT(NLW_Gain5_mul_temp_3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain5_mul_temp_3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain5_mul_temp_3_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain5_mul_temp_3_UNDERFLOW_UNCONNECTED));
  CARRY4 Gain6_1_0__0_carry
       (.CI(1'b0),
        .CO({Gain6_1_0__0_carry_n_0,Gain6_1_0__0_carry_n_1,Gain6_1_0__0_carry_n_2,Gain6_1_0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_1_0__0_carry_i_1_n_0,Gain6_1_0__0_carry_i_2_n_0,Gain6_1_0__0_carry_i_3_n_0,1'b0}),
        .O(\Gain6_out1[1] [3:0]),
        .S({Gain6_1_0__0_carry_i_4_n_0,Gain6_1_0__0_carry_i_5_n_0,Gain6_1_0__0_carry_i_6_n_0,Gain6_1_0__0_carry_i_7_n_0}));
  CARRY4 Gain6_1_0__0_carry__0
       (.CI(Gain6_1_0__0_carry_n_0),
        .CO({Gain6_1_0__0_carry__0_n_0,Gain6_1_0__0_carry__0_n_1,Gain6_1_0__0_carry__0_n_2,Gain6_1_0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_1_0__0_carry__0_i_1_n_0,Gain6_1_0__0_carry__0_i_2_n_0,Gain6_1_0__0_carry__0_i_3_n_0,Gain6_1_0__0_carry__0_i_4_n_0}),
        .O(\Gain6_out1[1] [7:4]),
        .S({Gain6_1_0__0_carry__0_i_5_n_0,Gain6_1_0__0_carry__0_i_6_n_0,Gain6_1_0__0_carry__0_i_7_n_0,Gain6_1_0__0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__0_i_1
       (.I0(tmp_Gain6_dotp_1_2[5]),
        .I1(tmp_Gain6_dotp_2_2[5]),
        .I2(tmp_Gain6_dotp_1_2[6]),
        .I3(tmp_Gain6_dotp_2_2[6]),
        .O(Gain6_1_0__0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__0_i_2
       (.I0(tmp_Gain6_dotp_1_2[4]),
        .I1(tmp_Gain6_dotp_2_2[4]),
        .I2(tmp_Gain6_dotp_1_2[5]),
        .I3(tmp_Gain6_dotp_2_2[5]),
        .O(Gain6_1_0__0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__0_i_3
       (.I0(tmp_Gain6_dotp_1_2[3]),
        .I1(tmp_Gain6_dotp_2_2[3]),
        .I2(tmp_Gain6_dotp_1_2[4]),
        .I3(tmp_Gain6_dotp_2_2[4]),
        .O(Gain6_1_0__0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__0_i_4
       (.I0(tmp_Gain6_dotp_1_2[2]),
        .I1(tmp_Gain6_dotp_2_2[2]),
        .I2(tmp_Gain6_dotp_1_2[3]),
        .I3(tmp_Gain6_dotp_2_2[3]),
        .O(Gain6_1_0__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__0_i_5
       (.I0(tmp_Gain6_dotp_2_2[5]),
        .I1(tmp_Gain6_dotp_1_2[5]),
        .I2(tmp_Gain6_dotp_2_2[7]),
        .I3(tmp_Gain6_dotp_1_2[7]),
        .I4(tmp_Gain6_dotp_2_2[6]),
        .I5(tmp_Gain6_dotp_1_2[6]),
        .O(Gain6_1_0__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__0_i_6
       (.I0(tmp_Gain6_dotp_2_2[4]),
        .I1(tmp_Gain6_dotp_1_2[4]),
        .I2(tmp_Gain6_dotp_2_2[6]),
        .I3(tmp_Gain6_dotp_1_2[6]),
        .I4(tmp_Gain6_dotp_2_2[5]),
        .I5(tmp_Gain6_dotp_1_2[5]),
        .O(Gain6_1_0__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__0_i_7
       (.I0(tmp_Gain6_dotp_2_2[3]),
        .I1(tmp_Gain6_dotp_1_2[3]),
        .I2(tmp_Gain6_dotp_2_2[5]),
        .I3(tmp_Gain6_dotp_1_2[5]),
        .I4(tmp_Gain6_dotp_2_2[4]),
        .I5(tmp_Gain6_dotp_1_2[4]),
        .O(Gain6_1_0__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__0_i_8
       (.I0(tmp_Gain6_dotp_2_2[2]),
        .I1(tmp_Gain6_dotp_1_2[2]),
        .I2(tmp_Gain6_dotp_2_2[4]),
        .I3(tmp_Gain6_dotp_1_2[4]),
        .I4(tmp_Gain6_dotp_2_2[3]),
        .I5(tmp_Gain6_dotp_1_2[3]),
        .O(Gain6_1_0__0_carry__0_i_8_n_0));
  CARRY4 Gain6_1_0__0_carry__1
       (.CI(Gain6_1_0__0_carry__0_n_0),
        .CO({Gain6_1_0__0_carry__1_n_0,Gain6_1_0__0_carry__1_n_1,Gain6_1_0__0_carry__1_n_2,Gain6_1_0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_1_0__0_carry__1_i_1_n_0,Gain6_1_0__0_carry__1_i_2_n_0,Gain6_1_0__0_carry__1_i_3_n_0,Gain6_1_0__0_carry__1_i_4_n_0}),
        .O(\Gain6_out1[1] [11:8]),
        .S({Gain6_1_0__0_carry__1_i_5_n_0,Gain6_1_0__0_carry__1_i_6_n_0,Gain6_1_0__0_carry__1_i_7_n_0,Gain6_1_0__0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__1_i_1
       (.I0(tmp_Gain6_dotp_1_2[9]),
        .I1(tmp_Gain6_dotp_2_2[9]),
        .I2(tmp_Gain6_dotp_1_2[10]),
        .I3(tmp_Gain6_dotp_2_2[10]),
        .O(Gain6_1_0__0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__1_i_2
       (.I0(tmp_Gain6_dotp_1_2[8]),
        .I1(tmp_Gain6_dotp_2_2[8]),
        .I2(tmp_Gain6_dotp_1_2[9]),
        .I3(tmp_Gain6_dotp_2_2[9]),
        .O(Gain6_1_0__0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__1_i_3
       (.I0(tmp_Gain6_dotp_1_2[7]),
        .I1(tmp_Gain6_dotp_2_2[7]),
        .I2(tmp_Gain6_dotp_1_2[8]),
        .I3(tmp_Gain6_dotp_2_2[8]),
        .O(Gain6_1_0__0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_1_0__0_carry__1_i_4
       (.I0(tmp_Gain6_dotp_1_2[6]),
        .I1(tmp_Gain6_dotp_2_2[6]),
        .I2(tmp_Gain6_dotp_1_2[7]),
        .I3(tmp_Gain6_dotp_2_2[7]),
        .O(Gain6_1_0__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__1_i_5
       (.I0(tmp_Gain6_dotp_2_2[9]),
        .I1(tmp_Gain6_dotp_1_2[9]),
        .I2(tmp_Gain6_dotp_2_2[11]),
        .I3(tmp_Gain6_dotp_1_2[11]),
        .I4(tmp_Gain6_dotp_2_2[10]),
        .I5(tmp_Gain6_dotp_1_2[10]),
        .O(Gain6_1_0__0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__1_i_6
       (.I0(tmp_Gain6_dotp_2_2[8]),
        .I1(tmp_Gain6_dotp_1_2[8]),
        .I2(tmp_Gain6_dotp_2_2[10]),
        .I3(tmp_Gain6_dotp_1_2[10]),
        .I4(tmp_Gain6_dotp_2_2[9]),
        .I5(tmp_Gain6_dotp_1_2[9]),
        .O(Gain6_1_0__0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__1_i_7
       (.I0(tmp_Gain6_dotp_2_2[7]),
        .I1(tmp_Gain6_dotp_1_2[7]),
        .I2(tmp_Gain6_dotp_2_2[9]),
        .I3(tmp_Gain6_dotp_1_2[9]),
        .I4(tmp_Gain6_dotp_2_2[8]),
        .I5(tmp_Gain6_dotp_1_2[8]),
        .O(Gain6_1_0__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_1_0__0_carry__1_i_8
       (.I0(tmp_Gain6_dotp_2_2[6]),
        .I1(tmp_Gain6_dotp_1_2[6]),
        .I2(tmp_Gain6_dotp_2_2[8]),
        .I3(tmp_Gain6_dotp_1_2[8]),
        .I4(tmp_Gain6_dotp_2_2[7]),
        .I5(tmp_Gain6_dotp_1_2[7]),
        .O(Gain6_1_0__0_carry__1_i_8_n_0));
  CARRY4 Gain6_1_0__0_carry__2
       (.CI(Gain6_1_0__0_carry__1_n_0),
        .CO({NLW_Gain6_1_0__0_carry__2_CO_UNCONNECTED[3],Gain6_1_0__0_carry__2_n_1,Gain6_1_0__0_carry__2_n_2,Gain6_1_0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_Gain6_dotp_1_2[13:12],Gain6_1_0__0_carry__2_i_1_n_0}),
        .O(\Gain6_out1[1] [15:12]),
        .S({Gain6_1_0__0_carry__2_i_2_n_0,Gain6_1_0__0_carry__2_i_3_n_0,Gain6_1_0__0_carry__2_i_4_n_0,Gain6_1_0__0_carry__2_i_5_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    Gain6_1_0__0_carry__2_i_1
       (.I0(tmp_Gain6_dotp_2_2[11]),
        .I1(tmp_Gain6_dotp_1_2[11]),
        .I2(tmp_Gain6_dotp_1_2[10]),
        .I3(tmp_Gain6_dotp_2_2[10]),
        .O(Gain6_1_0__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_1_0__0_carry__2_i_2
       (.I0(tmp_Gain6_dotp_1_2[14]),
        .I1(tmp_Gain6_dotp_1_2[15]),
        .O(Gain6_1_0__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_1_0__0_carry__2_i_3
       (.I0(tmp_Gain6_dotp_1_2[13]),
        .I1(tmp_Gain6_dotp_1_2[14]),
        .O(Gain6_1_0__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_1_0__0_carry__2_i_4
       (.I0(tmp_Gain6_dotp_1_2[12]),
        .I1(tmp_Gain6_dotp_1_2[13]),
        .O(Gain6_1_0__0_carry__2_i_4_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    Gain6_1_0__0_carry__2_i_5
       (.I0(tmp_Gain6_dotp_2_2[10]),
        .I1(tmp_Gain6_dotp_1_2[10]),
        .I2(tmp_Gain6_dotp_1_2[11]),
        .I3(tmp_Gain6_dotp_2_2[11]),
        .I4(tmp_Gain6_dotp_1_2[12]),
        .O(Gain6_1_0__0_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    Gain6_1_0__0_carry_i_1
       (.I0(tmp_Gain6_dotp_1_2[2]),
        .I1(tmp_Gain6_dotp_2_2[2]),
        .I2(\Unit_Delay2_out1_reg[3] [15]),
        .O(Gain6_1_0__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gain6_1_0__0_carry_i_2
       (.I0(\Unit_Delay2_out1_reg[3] [15]),
        .I1(tmp_Gain6_dotp_2_2[2]),
        .I2(tmp_Gain6_dotp_1_2[2]),
        .O(Gain6_1_0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_1_0__0_carry_i_3
       (.I0(tmp_Gain6_dotp_1_2[0]),
        .I1(tmp_Gain6_dotp_2_2[0]),
        .I2(\Unit_Delay2_out1_reg[3] [13]),
        .O(Gain6_1_0__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    Gain6_1_0__0_carry_i_4
       (.I0(\Unit_Delay2_out1_reg[3] [15]),
        .I1(tmp_Gain6_dotp_2_2[3]),
        .I2(tmp_Gain6_dotp_1_2[3]),
        .I3(tmp_Gain6_dotp_2_2[2]),
        .I4(tmp_Gain6_dotp_1_2[2]),
        .O(Gain6_1_0__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    Gain6_1_0__0_carry_i_5
       (.I0(\Unit_Delay2_out1_reg[3] [15]),
        .I1(tmp_Gain6_dotp_2_2[2]),
        .I2(tmp_Gain6_dotp_1_2[2]),
        .I3(\Unit_Delay2_out1_reg[3] [14]),
        .I4(tmp_Gain6_dotp_2_2[1]),
        .I5(tmp_Gain6_dotp_1_2[1]),
        .O(Gain6_1_0__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_1_0__0_carry_i_6
       (.I0(Gain6_1_0__0_carry_i_3_n_0),
        .I1(tmp_Gain6_dotp_2_2[1]),
        .I2(tmp_Gain6_dotp_1_2[1]),
        .I3(\Unit_Delay2_out1_reg[3] [14]),
        .O(Gain6_1_0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Gain6_1_0__0_carry_i_7
       (.I0(tmp_Gain6_dotp_1_2[0]),
        .I1(tmp_Gain6_dotp_2_2[0]),
        .I2(\Unit_Delay2_out1_reg[3] [13]),
        .O(Gain6_1_0__0_carry_i_7_n_0));
  CARRY4 Gain6_2_0_carry
       (.CI(1'b0),
        .CO({Gain6_2_0_carry_n_0,Gain6_2_0_carry_n_1,Gain6_2_0_carry_n_2,Gain6_2_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain6_dotp_3_1[3:0]),
        .O(\Gain6_out1[2] [3:0]),
        .S({Gain6_2_0_carry_i_1_n_0,Gain6_2_0_carry_i_2_n_0,Gain6_2_0_carry_i_3_n_0,Gain6_2_0_carry_i_4_n_0}));
  CARRY4 Gain6_2_0_carry__0
       (.CI(Gain6_2_0_carry_n_0),
        .CO({Gain6_2_0_carry__0_n_0,Gain6_2_0_carry__0_n_1,Gain6_2_0_carry__0_n_2,Gain6_2_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain6_dotp_3_1[7:4]),
        .O(\Gain6_out1[2] [7:4]),
        .S({Gain6_2_0_carry__0_i_1_n_0,Gain6_2_0_carry__0_i_2_n_0,Gain6_2_0_carry__0_i_3_n_0,Gain6_2_0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__0_i_1
       (.I0(tmp_Gain6_dotp_3_1[7]),
        .I1(tmp_Gain6_dotp_2_1[7]),
        .O(Gain6_2_0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__0_i_2
       (.I0(tmp_Gain6_dotp_3_1[6]),
        .I1(tmp_Gain6_dotp_2_1[6]),
        .O(Gain6_2_0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__0_i_3
       (.I0(tmp_Gain6_dotp_3_1[5]),
        .I1(tmp_Gain6_dotp_2_1[5]),
        .O(Gain6_2_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__0_i_4
       (.I0(tmp_Gain6_dotp_3_1[4]),
        .I1(tmp_Gain6_dotp_2_1[4]),
        .O(Gain6_2_0_carry__0_i_4_n_0));
  CARRY4 Gain6_2_0_carry__1
       (.CI(Gain6_2_0_carry__0_n_0),
        .CO({Gain6_2_0_carry__1_n_0,Gain6_2_0_carry__1_n_1,Gain6_2_0_carry__1_n_2,Gain6_2_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_Gain6_dotp_2_1[10],Gain6_2_0_carry__1_i_1_n_0,tmp_Gain6_dotp_3_1[9:8]}),
        .O(\Gain6_out1[2] [11:8]),
        .S({Gain6_2_0_carry__1_i_2_n_0,Gain6_2_0_carry__1_i_3_n_0,Gain6_2_0_carry__1_i_4_n_0,Gain6_2_0_carry__1_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Gain6_2_0_carry__1_i_1
       (.I0(tmp_Gain6_dotp_2_1[10]),
        .O(Gain6_2_0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_2_0_carry__1_i_2
       (.I0(tmp_Gain6_dotp_2_1[10]),
        .I1(tmp_Gain6_dotp_2_1[11]),
        .O(Gain6_2_0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__1_i_3
       (.I0(tmp_Gain6_dotp_2_1[10]),
        .I1(tmp_Gain6_dotp_3_1[10]),
        .O(Gain6_2_0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__1_i_4
       (.I0(tmp_Gain6_dotp_3_1[9]),
        .I1(tmp_Gain6_dotp_2_1[9]),
        .O(Gain6_2_0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry__1_i_5
       (.I0(tmp_Gain6_dotp_3_1[8]),
        .I1(tmp_Gain6_dotp_2_1[8]),
        .O(Gain6_2_0_carry__1_i_5_n_0));
  CARRY4 Gain6_2_0_carry__2
       (.CI(Gain6_2_0_carry__1_n_0),
        .CO({NLW_Gain6_2_0_carry__2_CO_UNCONNECTED[3],Gain6_2_0_carry__2_n_1,Gain6_2_0_carry__2_n_2,Gain6_2_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_Gain6_dotp_2_1[13:11]}),
        .O(\Gain6_out1[2] [15:12]),
        .S({Gain6_2_0_carry__2_i_1_n_0,Gain6_2_0_carry__2_i_2_n_0,Gain6_2_0_carry__2_i_3_n_0,Gain6_2_0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_2_0_carry__2_i_1
       (.I0(tmp_Gain6_dotp_2_1[15]),
        .I1(tmp_Gain6_dotp_2_1[14]),
        .O(Gain6_2_0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_2_0_carry__2_i_2
       (.I0(tmp_Gain6_dotp_2_1[13]),
        .I1(tmp_Gain6_dotp_2_1[14]),
        .O(Gain6_2_0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_2_0_carry__2_i_3
       (.I0(tmp_Gain6_dotp_2_1[12]),
        .I1(tmp_Gain6_dotp_2_1[13]),
        .O(Gain6_2_0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain6_2_0_carry__2_i_4
       (.I0(tmp_Gain6_dotp_2_1[11]),
        .I1(tmp_Gain6_dotp_2_1[12]),
        .O(Gain6_2_0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry_i_1
       (.I0(tmp_Gain6_dotp_3_1[3]),
        .I1(tmp_Gain6_dotp_2_1[3]),
        .O(Gain6_2_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry_i_2
       (.I0(tmp_Gain6_dotp_3_1[2]),
        .I1(tmp_Gain6_dotp_2_1[2]),
        .O(Gain6_2_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry_i_3
       (.I0(tmp_Gain6_dotp_3_1[1]),
        .I1(tmp_Gain6_dotp_2_1[1]),
        .O(Gain6_2_0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain6_2_0_carry_i_4
       (.I0(tmp_Gain6_dotp_3_1[0]),
        .I1(tmp_Gain6_dotp_2_1[0]),
        .O(Gain6_2_0_carry_i_4_n_0));
  CARRY4 Gain6_3_0__1_carry
       (.CI(1'b0),
        .CO({Gain6_3_0__1_carry_n_0,Gain6_3_0__1_carry_n_1,Gain6_3_0__1_carry_n_2,Gain6_3_0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_3_0__1_carry_i_1_n_0,Gain6_3_0__1_carry_i_2_n_0,Gain6_3_0__1_carry_i_3_n_0,1'b0}),
        .O(\Gain6_out1[3] [3:0]),
        .S({Gain6_3_0__1_carry_i_4_n_0,Gain6_3_0__1_carry_i_5_n_0,Gain6_3_0__1_carry_i_6_n_0,Gain6_3_0__1_carry_i_7_n_0}));
  CARRY4 Gain6_3_0__1_carry__0
       (.CI(Gain6_3_0__1_carry_n_0),
        .CO({Gain6_3_0__1_carry__0_n_0,Gain6_3_0__1_carry__0_n_1,Gain6_3_0__1_carry__0_n_2,Gain6_3_0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_3_0__1_carry__0_i_1_n_0,Gain6_3_0__1_carry__0_i_2_n_0,Gain6_3_0__1_carry__0_i_3_n_0,Gain6_3_0__1_carry__0_i_4_n_0}),
        .O(\Gain6_out1[3] [7:4]),
        .S({Gain6_3_0__1_carry__0_i_5_n_0,Gain6_3_0__1_carry__0_i_6_n_0,Gain6_3_0__1_carry__0_i_7_n_0,Gain6_3_0__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry__0_i_1
       (.I0(mul_Gain6_dotp_1_mul_temp_n_85),
        .I1(tmp_Gain6_dotp_2[6]),
        .I2(tmp_Gain6_dotp_3[6]),
        .O(Gain6_3_0__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry__0_i_2
       (.I0(mul_Gain6_dotp_1_mul_temp_n_86),
        .I1(tmp_Gain6_dotp_2[5]),
        .I2(tmp_Gain6_dotp_3[5]),
        .O(Gain6_3_0__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry__0_i_3
       (.I0(mul_Gain6_dotp_1_mul_temp_n_87),
        .I1(tmp_Gain6_dotp_2[4]),
        .I2(tmp_Gain6_dotp_3[4]),
        .O(Gain6_3_0__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry__0_i_4
       (.I0(mul_Gain6_dotp_1_mul_temp_n_88),
        .I1(tmp_Gain6_dotp_2[3]),
        .I2(tmp_Gain6_dotp_3[3]),
        .O(Gain6_3_0__1_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry__0_i_5
       (.I0(mul_Gain6_dotp_1_mul_temp_n_84),
        .I1(tmp_Gain6_dotp_2[7]),
        .I2(tmp_Gain6_dotp_3[7]),
        .I3(Gain6_3_0__1_carry__0_i_1_n_0),
        .O(Gain6_3_0__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry__0_i_6
       (.I0(mul_Gain6_dotp_1_mul_temp_n_85),
        .I1(tmp_Gain6_dotp_2[6]),
        .I2(tmp_Gain6_dotp_3[6]),
        .I3(Gain6_3_0__1_carry__0_i_2_n_0),
        .O(Gain6_3_0__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry__0_i_7
       (.I0(mul_Gain6_dotp_1_mul_temp_n_86),
        .I1(tmp_Gain6_dotp_2[5]),
        .I2(tmp_Gain6_dotp_3[5]),
        .I3(Gain6_3_0__1_carry__0_i_3_n_0),
        .O(Gain6_3_0__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry__0_i_8
       (.I0(mul_Gain6_dotp_1_mul_temp_n_87),
        .I1(tmp_Gain6_dotp_2[4]),
        .I2(tmp_Gain6_dotp_3[4]),
        .I3(Gain6_3_0__1_carry__0_i_4_n_0),
        .O(Gain6_3_0__1_carry__0_i_8_n_0));
  CARRY4 Gain6_3_0__1_carry__1
       (.CI(Gain6_3_0__1_carry__0_n_0),
        .CO({Gain6_3_0__1_carry__1_n_0,Gain6_3_0__1_carry__1_n_1,Gain6_3_0__1_carry__1_n_2,Gain6_3_0__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Gain6_3_0__1_carry__1_i_1_n_0,Gain6_3_0__1_carry__1_i_2_n_0,Gain6_3_0__1_carry__1_i_3_n_0,Gain6_3_0__1_carry__1_i_4_n_0}),
        .O(\Gain6_out1[3] [11:8]),
        .S({Gain6_3_0__1_carry__1_i_5_n_0,Gain6_3_0__1_carry__1_i_6_n_0,Gain6_3_0__1_carry__1_i_7_n_0,Gain6_3_0__1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hD00D)) 
    Gain6_3_0__1_carry__1_i_1
       (.I0(tmp_Gain6_dotp_10),
        .I1(tmp_Gain6_dotp_2[9]),
        .I2(tmp_Gain6_dotp_2[10]),
        .I3(tmp_Gain6_dotp_3[10]),
        .O(Gain6_3_0__1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h28)) 
    Gain6_3_0__1_carry__1_i_2
       (.I0(tmp_Gain6_dotp_3[9]),
        .I1(tmp_Gain6_dotp_10),
        .I2(tmp_Gain6_dotp_2[9]),
        .O(Gain6_3_0__1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gain6_3_0__1_carry__1_i_3
       (.I0(tmp_Gain6_dotp_10),
        .I1(tmp_Gain6_dotp_2[9]),
        .I2(tmp_Gain6_dotp_3[9]),
        .O(Gain6_3_0__1_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry__1_i_4
       (.I0(mul_Gain6_dotp_1_mul_temp_n_84),
        .I1(tmp_Gain6_dotp_2[7]),
        .I2(tmp_Gain6_dotp_3[7]),
        .O(Gain6_3_0__1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    Gain6_3_0__1_carry__1_i_5
       (.I0(tmp_Gain6_dotp_2[9]),
        .I1(tmp_Gain6_dotp_10),
        .I2(tmp_Gain6_dotp_3[11]),
        .I3(tmp_Gain6_dotp_2[11]),
        .I4(tmp_Gain6_dotp_3[10]),
        .I5(tmp_Gain6_dotp_2[10]),
        .O(Gain6_3_0__1_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    Gain6_3_0__1_carry__1_i_6
       (.I0(tmp_Gain6_dotp_3[9]),
        .I1(tmp_Gain6_dotp_3[10]),
        .I2(tmp_Gain6_dotp_2[10]),
        .I3(tmp_Gain6_dotp_2[9]),
        .I4(tmp_Gain6_dotp_10),
        .O(Gain6_3_0__1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    Gain6_3_0__1_carry__1_i_7
       (.I0(tmp_Gain6_dotp_3[9]),
        .I1(tmp_Gain6_dotp_2[9]),
        .I2(tmp_Gain6_dotp_10),
        .I3(tmp_Gain6_dotp_3[8]),
        .I4(tmp_Gain6_dotp_2[8]),
        .I5(mul_Gain6_dotp_1_mul_temp_n_83),
        .O(Gain6_3_0__1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry__1_i_8
       (.I0(Gain6_3_0__1_carry__1_i_4_n_0),
        .I1(tmp_Gain6_dotp_2[8]),
        .I2(mul_Gain6_dotp_1_mul_temp_n_83),
        .I3(tmp_Gain6_dotp_3[8]),
        .O(Gain6_3_0__1_carry__1_i_8_n_0));
  CARRY4 Gain6_3_0__1_carry__2
       (.CI(Gain6_3_0__1_carry__1_n_0),
        .CO({NLW_Gain6_3_0__1_carry__2_CO_UNCONNECTED[3],Gain6_3_0__1_carry__2_n_1,Gain6_3_0__1_carry__2_n_2,Gain6_3_0__1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Gain6_3_0__1_carry__2_i_1_n_0,Gain6_3_0__1_carry__2_i_2_n_0,Gain6_3_0__1_carry__2_i_3_n_0}),
        .O(\Gain6_out1[3] [15:12]),
        .S({Gain6_3_0__1_carry__2_i_4_n_0,Gain6_3_0__1_carry__2_i_5_n_0,Gain6_3_0__1_carry__2_i_6_n_0,Gain6_3_0__1_carry__2_i_7_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_3_0__1_carry__2_i_1
       (.I0(tmp_Gain6_dotp_2[12]),
        .I1(tmp_Gain6_dotp_3[12]),
        .I2(tmp_Gain6_dotp_2[13]),
        .I3(tmp_Gain6_dotp_3[13]),
        .O(Gain6_3_0__1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_3_0__1_carry__2_i_2
       (.I0(tmp_Gain6_dotp_2[11]),
        .I1(tmp_Gain6_dotp_3[11]),
        .I2(tmp_Gain6_dotp_2[12]),
        .I3(tmp_Gain6_dotp_3[12]),
        .O(Gain6_3_0__1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    Gain6_3_0__1_carry__2_i_3
       (.I0(tmp_Gain6_dotp_2[10]),
        .I1(tmp_Gain6_dotp_3[10]),
        .I2(tmp_Gain6_dotp_2[11]),
        .I3(tmp_Gain6_dotp_3[11]),
        .O(Gain6_3_0__1_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_3_0__1_carry__2_i_4
       (.I0(tmp_Gain6_dotp_3[13]),
        .I1(tmp_Gain6_dotp_2[13]),
        .I2(tmp_Gain6_dotp_3[15]),
        .I3(tmp_Gain6_dotp_2[15]),
        .I4(tmp_Gain6_dotp_3[14]),
        .I5(tmp_Gain6_dotp_2[14]),
        .O(Gain6_3_0__1_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_3_0__1_carry__2_i_5
       (.I0(tmp_Gain6_dotp_3[12]),
        .I1(tmp_Gain6_dotp_2[12]),
        .I2(tmp_Gain6_dotp_3[14]),
        .I3(tmp_Gain6_dotp_2[14]),
        .I4(tmp_Gain6_dotp_3[13]),
        .I5(tmp_Gain6_dotp_2[13]),
        .O(Gain6_3_0__1_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_3_0__1_carry__2_i_6
       (.I0(tmp_Gain6_dotp_3[11]),
        .I1(tmp_Gain6_dotp_2[11]),
        .I2(tmp_Gain6_dotp_3[13]),
        .I3(tmp_Gain6_dotp_2[13]),
        .I4(tmp_Gain6_dotp_3[12]),
        .I5(tmp_Gain6_dotp_2[12]),
        .O(Gain6_3_0__1_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    Gain6_3_0__1_carry__2_i_7
       (.I0(tmp_Gain6_dotp_3[10]),
        .I1(tmp_Gain6_dotp_2[10]),
        .I2(tmp_Gain6_dotp_3[12]),
        .I3(tmp_Gain6_dotp_2[12]),
        .I4(tmp_Gain6_dotp_3[11]),
        .I5(tmp_Gain6_dotp_2[11]),
        .O(Gain6_3_0__1_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry_i_1
       (.I0(mul_Gain6_dotp_1_mul_temp_n_89),
        .I1(tmp_Gain6_dotp_2[2]),
        .I2(tmp_Gain6_dotp_3[2]),
        .O(Gain6_3_0__1_carry_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry_i_2
       (.I0(mul_Gain6_dotp_1_mul_temp_n_90),
        .I1(tmp_Gain6_dotp_2[1]),
        .I2(tmp_Gain6_dotp_3[1]),
        .O(Gain6_3_0__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gain6_3_0__1_carry_i_3
       (.I0(mul_Gain6_dotp_1_mul_temp_n_91),
        .I1(tmp_Gain6_dotp_2[0]),
        .I2(tmp_Gain6_dotp_3[0]),
        .O(Gain6_3_0__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry_i_4
       (.I0(mul_Gain6_dotp_1_mul_temp_n_88),
        .I1(tmp_Gain6_dotp_2[3]),
        .I2(tmp_Gain6_dotp_3[3]),
        .I3(Gain6_3_0__1_carry_i_1_n_0),
        .O(Gain6_3_0__1_carry_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry_i_5
       (.I0(mul_Gain6_dotp_1_mul_temp_n_89),
        .I1(tmp_Gain6_dotp_2[2]),
        .I2(tmp_Gain6_dotp_3[2]),
        .I3(Gain6_3_0__1_carry_i_2_n_0),
        .O(Gain6_3_0__1_carry_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gain6_3_0__1_carry_i_6
       (.I0(mul_Gain6_dotp_1_mul_temp_n_90),
        .I1(tmp_Gain6_dotp_2[1]),
        .I2(tmp_Gain6_dotp_3[1]),
        .I3(Gain6_3_0__1_carry_i_3_n_0),
        .O(Gain6_3_0__1_carry_i_6_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Gain6_3_0__1_carry_i_7
       (.I0(mul_Gain6_dotp_1_mul_temp_n_91),
        .I1(tmp_Gain6_dotp_2[0]),
        .I2(tmp_Gain6_dotp_3[0]),
        .O(Gain6_3_0__1_carry_i_7_n_0));
  CARRY4 Gain8_0_0_carry
       (.CI(1'b0),
        .CO({Gain8_0_0_carry_n_0,Gain8_0_0_carry_n_1,Gain8_0_0_carry_n_2,Gain8_0_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_Gain8_dotp_0_3[2:1],Gain8_0_0_carry_i_1_n_0,tmp_Gain8_dotp_0_3[0]}),
        .O(\Gain8_out1[0] [3:0]),
        .S({Gain8_0_0_carry_i_2_n_0,Gain8_0_0_carry_i_3_n_0,Gain8_0_0_carry_i_4_n_0,Gain8_0_0_carry_i_5_n_0}));
  CARRY4 Gain8_0_0_carry__0
       (.CI(Gain8_0_0_carry_n_0),
        .CO({Gain8_0_0_carry__0_n_0,Gain8_0_0_carry__0_n_1,Gain8_0_0_carry__0_n_2,Gain8_0_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_0_3[6:3]),
        .O(\Gain8_out1[0] [7:4]),
        .S({Gain8_0_0_carry__0_i_1_n_0,Gain8_0_0_carry__0_i_2_n_0,Gain8_0_0_carry__0_i_3_n_0,Gain8_0_0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__0_i_1
       (.I0(tmp_Gain8_dotp_0_3[6]),
        .I1(tmp_Gain8_dotp_0_3[7]),
        .O(Gain8_0_0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__0_i_2
       (.I0(tmp_Gain8_dotp_0_3[5]),
        .I1(tmp_Gain8_dotp_0_3[6]),
        .O(Gain8_0_0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__0_i_3
       (.I0(tmp_Gain8_dotp_0_3[4]),
        .I1(tmp_Gain8_dotp_0_3[5]),
        .O(Gain8_0_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__0_i_4
       (.I0(tmp_Gain8_dotp_0_3[3]),
        .I1(tmp_Gain8_dotp_0_3[4]),
        .O(Gain8_0_0_carry__0_i_4_n_0));
  CARRY4 Gain8_0_0_carry__1
       (.CI(Gain8_0_0_carry__0_n_0),
        .CO({Gain8_0_0_carry__1_n_0,NLW_Gain8_0_0_carry__1_CO_UNCONNECTED[2],Gain8_0_0_carry__1_n_2,Gain8_0_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_Gain8_dotp_0_3[9:7]}),
        .O({NLW_Gain8_0_0_carry__1_O_UNCONNECTED[3],\Gain8_out1[0] [10:8]}),
        .S({1'b1,Gain8_0_0_carry__1_i_1_n_0,Gain8_0_0_carry__1_i_2_n_0,Gain8_0_0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__1_i_1
       (.I0(tmp_Gain8_dotp_0_3[9]),
        .I1(tmp_Gain8_dotp_0_3[10]),
        .O(Gain8_0_0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__1_i_2
       (.I0(tmp_Gain8_dotp_0_3[8]),
        .I1(tmp_Gain8_dotp_0_3[9]),
        .O(Gain8_0_0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry__1_i_3
       (.I0(tmp_Gain8_dotp_0_3[7]),
        .I1(tmp_Gain8_dotp_0_3[8]),
        .O(Gain8_0_0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Gain8_0_0_carry_i_1
       (.I0(tmp_Gain8_dotp_0_3[1]),
        .O(Gain8_0_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry_i_2
       (.I0(tmp_Gain8_dotp_0_3[2]),
        .I1(tmp_Gain8_dotp_0_3[3]),
        .O(Gain8_0_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_0_0_carry_i_3
       (.I0(tmp_Gain8_dotp_0_3[1]),
        .I1(tmp_Gain8_dotp_0_3[2]),
        .O(Gain8_0_0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    Gain8_0_0_carry_i_4
       (.I0(tmp_Gain8_dotp_0_3[1]),
        .I1(Sum_sub_temp[14]),
        .I2(Sum_sub_temp[12]),
        .I3(Sum_sub_temp[10]),
        .I4(Sum_sub_temp[11]),
        .I5(Sum_sub_temp[13]),
        .O(Gain8_0_0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    Gain8_0_0_carry_i_5
       (.I0(Sum_sub_temp[14]),
        .I1(Sum_sub_temp[12]),
        .I2(Sum_sub_temp[10]),
        .I3(Sum_sub_temp[11]),
        .I4(Sum_sub_temp[13]),
        .I5(tmp_Gain8_dotp_0_3[0]),
        .O(Gain8_0_0_carry_i_5_n_0));
  CARRY4 Gain8_1_0_carry
       (.CI(1'b0),
        .CO({Gain8_1_0_carry_n_0,Gain8_1_0_carry_n_1,Gain8_1_0_carry_n_2,Gain8_1_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_1_2[3:0]),
        .O(\Gain8_out1[1] [3:0]),
        .S({Gain8_1_0_carry_i_1_n_0,Gain8_1_0_carry_i_2_n_0,Gain8_1_0_carry_i_3_n_0,Gain8_1_0_carry_i_4_n_0}));
  CARRY4 Gain8_1_0_carry__0
       (.CI(Gain8_1_0_carry_n_0),
        .CO({Gain8_1_0_carry__0_n_0,Gain8_1_0_carry__0_n_1,Gain8_1_0_carry__0_n_2,Gain8_1_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_1_2[7:4]),
        .O(\Gain8_out1[1] [7:4]),
        .S({Gain8_1_0_carry__0_i_1_n_0,Gain8_1_0_carry__0_i_2_n_0,Gain8_1_0_carry__0_i_3_n_0,Gain8_1_0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__0_i_1
       (.I0(tmp_Gain8_dotp_1_2[7]),
        .I1(tmp_Gain8_dotp_0_2[7]),
        .O(Gain8_1_0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__0_i_2
       (.I0(tmp_Gain8_dotp_1_2[6]),
        .I1(tmp_Gain8_dotp_0_2[6]),
        .O(Gain8_1_0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__0_i_3
       (.I0(tmp_Gain8_dotp_1_2[5]),
        .I1(tmp_Gain8_dotp_0_2[5]),
        .O(Gain8_1_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__0_i_4
       (.I0(tmp_Gain8_dotp_1_2[4]),
        .I1(tmp_Gain8_dotp_0_2[4]),
        .O(Gain8_1_0_carry__0_i_4_n_0));
  CARRY4 Gain8_1_0_carry__1
       (.CI(Gain8_1_0_carry__0_n_0),
        .CO({Gain8_1_0_carry__1_n_0,Gain8_1_0_carry__1_n_1,Gain8_1_0_carry__1_n_2,Gain8_1_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_Gain8_dotp_0_2[10:9],Gain8_1_0_carry__1_i_1_n_0,tmp_Gain8_dotp_1_2[8]}),
        .O(\Gain8_out1[1] [11:8]),
        .S({Gain8_1_0_carry__1_i_2_n_0,Gain8_1_0_carry__1_i_3_n_0,Gain8_1_0_carry__1_i_4_n_0,Gain8_1_0_carry__1_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Gain8_1_0_carry__1_i_1
       (.I0(tmp_Gain8_dotp_0_2[9]),
        .O(Gain8_1_0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_1_0_carry__1_i_2
       (.I0(tmp_Gain8_dotp_0_2[10]),
        .I1(tmp_Gain8_dotp_0_2[11]),
        .O(Gain8_1_0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_1_0_carry__1_i_3
       (.I0(tmp_Gain8_dotp_0_2[9]),
        .I1(tmp_Gain8_dotp_0_2[10]),
        .O(Gain8_1_0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__1_i_4
       (.I0(tmp_Gain8_dotp_0_2[9]),
        .I1(tmp_Gain8_dotp_1_2[9]),
        .O(Gain8_1_0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry__1_i_5
       (.I0(tmp_Gain8_dotp_1_2[8]),
        .I1(tmp_Gain8_dotp_0_2[8]),
        .O(Gain8_1_0_carry__1_i_5_n_0));
  CARRY4 Gain8_1_0_carry__2
       (.CI(Gain8_1_0_carry__1_n_0),
        .CO({NLW_Gain8_1_0_carry__2_CO_UNCONNECTED[3:2],Gain8_1_0_carry__2_n_2,Gain8_1_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_Gain8_dotp_0_2[12:11]}),
        .O({NLW_Gain8_1_0_carry__2_O_UNCONNECTED[3],\Gain8_out1[1] [14:12]}),
        .S({1'b0,Gain8_1_0_carry__2_i_1_n_0,Gain8_1_0_carry__2_i_2_n_0,Gain8_1_0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_1_0_carry__2_i_1
       (.I0(tmp_Gain8_dotp_0_2[13]),
        .I1(tmp_Gain8_dotp_0_2[14]),
        .O(Gain8_1_0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_1_0_carry__2_i_2
       (.I0(tmp_Gain8_dotp_0_2[12]),
        .I1(tmp_Gain8_dotp_0_2[13]),
        .O(Gain8_1_0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_1_0_carry__2_i_3
       (.I0(tmp_Gain8_dotp_0_2[11]),
        .I1(tmp_Gain8_dotp_0_2[12]),
        .O(Gain8_1_0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry_i_1
       (.I0(tmp_Gain8_dotp_1_2[3]),
        .I1(tmp_Gain8_dotp_0_2[3]),
        .O(Gain8_1_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry_i_2
       (.I0(tmp_Gain8_dotp_1_2[2]),
        .I1(tmp_Gain8_dotp_0_2[2]),
        .O(Gain8_1_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry_i_3
       (.I0(tmp_Gain8_dotp_1_2[1]),
        .I1(tmp_Gain8_dotp_0_2[1]),
        .O(Gain8_1_0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_1_0_carry_i_4
       (.I0(tmp_Gain8_dotp_1_2[0]),
        .I1(tmp_Gain8_dotp_0_2[0]),
        .O(Gain8_1_0_carry_i_4_n_0));
  CARRY4 Gain8_2_0_carry
       (.CI(1'b0),
        .CO({Gain8_2_0_carry_n_0,Gain8_2_0_carry_n_1,Gain8_2_0_carry_n_2,Gain8_2_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_Gain8_dotp_1_1[2],Gain8_2_0_carry_i_1_n_0,tmp_Gain8_dotp_1_1[1:0]}),
        .O(\Gain8_out1[2] [3:0]),
        .S({Gain8_2_0_carry_i_2_n_0,Gain8_2_0_carry_i_3_n_0,Gain8_2_0_carry_i_4_n_0,Gain8_2_0_carry_i_5_n_0}));
  CARRY4 Gain8_2_0_carry__0
       (.CI(Gain8_2_0_carry_n_0),
        .CO({Gain8_2_0_carry__0_n_0,Gain8_2_0_carry__0_n_1,Gain8_2_0_carry__0_n_2,Gain8_2_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_1_1[6:3]),
        .O(\Gain8_out1[2] [7:4]),
        .S({Gain8_2_0_carry__0_i_1_n_0,Gain8_2_0_carry__0_i_2_n_0,Gain8_2_0_carry__0_i_3_n_0,Gain8_2_0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__0_i_1
       (.I0(tmp_Gain8_dotp_1_1[6]),
        .I1(tmp_Gain8_dotp_1_1[7]),
        .O(Gain8_2_0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__0_i_2
       (.I0(tmp_Gain8_dotp_1_1[5]),
        .I1(tmp_Gain8_dotp_1_1[6]),
        .O(Gain8_2_0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__0_i_3
       (.I0(tmp_Gain8_dotp_1_1[4]),
        .I1(tmp_Gain8_dotp_1_1[5]),
        .O(Gain8_2_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__0_i_4
       (.I0(tmp_Gain8_dotp_1_1[3]),
        .I1(tmp_Gain8_dotp_1_1[4]),
        .O(Gain8_2_0_carry__0_i_4_n_0));
  CARRY4 Gain8_2_0_carry__1
       (.CI(Gain8_2_0_carry__0_n_0),
        .CO({Gain8_2_0_carry__1_n_0,NLW_Gain8_2_0_carry__1_CO_UNCONNECTED[2],Gain8_2_0_carry__1_n_2,Gain8_2_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_Gain8_dotp_1_1[9:7]}),
        .O({NLW_Gain8_2_0_carry__1_O_UNCONNECTED[3],\Gain8_out1[2] [10:8]}),
        .S({1'b1,Gain8_2_0_carry__1_i_1_n_0,Gain8_2_0_carry__1_i_2_n_0,Gain8_2_0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__1_i_1
       (.I0(tmp_Gain8_dotp_1_1[9]),
        .I1(tmp_Gain8_dotp_1_1[10]),
        .O(Gain8_2_0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__1_i_2
       (.I0(tmp_Gain8_dotp_1_1[8]),
        .I1(tmp_Gain8_dotp_1_1[9]),
        .O(Gain8_2_0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry__1_i_3
       (.I0(tmp_Gain8_dotp_1_1[7]),
        .I1(tmp_Gain8_dotp_1_1[8]),
        .O(Gain8_2_0_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    Gain8_2_0_carry_i_1
       (.I0(Gain2_mul_temp__3[61]),
        .I1(Gain2_mul_temp__3[60]),
        .I2(Gain2_mul_temp__3[63]),
        .I3(Gain2_mul_temp__3[59]),
        .I4(Gain2_mul_temp__3[62]),
        .O(Gain8_2_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_2_0_carry_i_2
       (.I0(tmp_Gain8_dotp_1_1[2]),
        .I1(tmp_Gain8_dotp_1_1[3]),
        .O(Gain8_2_0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    Gain8_2_0_carry_i_3
       (.I0(Gain2_mul_temp__3[62]),
        .I1(Gain2_mul_temp__3[59]),
        .I2(Gain2_mul_temp__3[63]),
        .I3(Gain2_mul_temp__3[60]),
        .I4(Gain2_mul_temp__3[61]),
        .I5(tmp_Gain8_dotp_1_1[2]),
        .O(Gain8_2_0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    Gain8_2_0_carry_i_4
       (.I0(Gain2_mul_temp__3[62]),
        .I1(Gain2_mul_temp__3[59]),
        .I2(Gain2_mul_temp__3[60]),
        .I3(Gain2_mul_temp__3[63]),
        .I4(Gain2_mul_temp__3[61]),
        .I5(tmp_Gain8_dotp_1_1[1]),
        .O(Gain8_2_0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    Gain8_2_0_carry_i_5
       (.I0(tmp_Gain8_dotp_1_1[0]),
        .I1(Gain2_mul_temp__3[62]),
        .I2(Gain2_mul_temp__3[59]),
        .I3(Gain2_mul_temp__3[60]),
        .I4(Gain2_mul_temp__3[63]),
        .I5(Gain2_mul_temp__3[61]),
        .O(Gain8_2_0_carry_i_5_n_0));
  CARRY4 Gain8_3_0_carry
       (.CI(1'b0),
        .CO({Gain8_3_0_carry_n_0,Gain8_3_0_carry_n_1,Gain8_3_0_carry_n_2,Gain8_3_0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_1[3:0]),
        .O(\Gain8_out1[3] [3:0]),
        .S({Gain8_3_0_carry_i_1_n_0,Gain8_3_0_carry_i_2_n_0,Gain8_3_0_carry_i_3_n_0,Gain8_3_0_carry_i_4_n_0}));
  CARRY4 Gain8_3_0_carry__0
       (.CI(Gain8_3_0_carry_n_0),
        .CO({Gain8_3_0_carry__0_n_0,Gain8_3_0_carry__0_n_1,Gain8_3_0_carry__0_n_2,Gain8_3_0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_Gain8_dotp_1[7:4]),
        .O(\Gain8_out1[3] [7:4]),
        .S({Gain8_3_0_carry__0_i_1_n_0,Gain8_3_0_carry__0_i_2_n_0,Gain8_3_0_carry__0_i_3_n_0,Gain8_3_0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__0_i_1
       (.I0(tmp_Gain8_dotp_1[7]),
        .I1(tmp_Gain8_dotp_0[7]),
        .O(Gain8_3_0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__0_i_2
       (.I0(tmp_Gain8_dotp_1[6]),
        .I1(tmp_Gain8_dotp_0[6]),
        .O(Gain8_3_0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__0_i_3
       (.I0(tmp_Gain8_dotp_1[5]),
        .I1(tmp_Gain8_dotp_0[5]),
        .O(Gain8_3_0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__0_i_4
       (.I0(tmp_Gain8_dotp_1[4]),
        .I1(tmp_Gain8_dotp_0[4]),
        .O(Gain8_3_0_carry__0_i_4_n_0));
  CARRY4 Gain8_3_0_carry__1
       (.CI(Gain8_3_0_carry__0_n_0),
        .CO({Gain8_3_0_carry__1_n_0,Gain8_3_0_carry__1_n_1,Gain8_3_0_carry__1_n_2,Gain8_3_0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_Gain8_dotp_1[10],Gain8_3_0_carry__1_i_1_n_0,tmp_Gain8_dotp_0[9],tmp_Gain8_dotp_1[8]}),
        .O(\Gain8_out1[3] [11:8]),
        .S({Gain8_3_0_carry__1_i_2_n_0,Gain8_3_0_carry__1_i_3_n_0,Gain8_3_0_carry__1_i_4_n_0,Gain8_3_0_carry__1_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Gain8_3_0_carry__1_i_1
       (.I0(tmp_Gain8_dotp_0[9]),
        .O(Gain8_3_0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_3_0_carry__1_i_2
       (.I0(tmp_Gain8_dotp_1[10]),
        .I1(tmp_Gain8_dotp_1[11]),
        .O(Gain8_3_0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__1_i_3
       (.I0(tmp_Gain8_dotp_0[9]),
        .I1(tmp_Gain8_dotp_1[10]),
        .O(Gain8_3_0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__1_i_4
       (.I0(tmp_Gain8_dotp_0[9]),
        .I1(tmp_Gain8_dotp_1[9]),
        .O(Gain8_3_0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry__1_i_5
       (.I0(tmp_Gain8_dotp_1[8]),
        .I1(tmp_Gain8_dotp_0[8]),
        .O(Gain8_3_0_carry__1_i_5_n_0));
  CARRY4 Gain8_3_0_carry__2
       (.CI(Gain8_3_0_carry__1_n_0),
        .CO({NLW_Gain8_3_0_carry__2_CO_UNCONNECTED[3:2],Gain8_3_0_carry__2_n_2,Gain8_3_0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tmp_Gain8_dotp_1[12:11]}),
        .O({NLW_Gain8_3_0_carry__2_O_UNCONNECTED[3],\Gain8_out1[3] [14:12]}),
        .S({1'b0,Gain8_3_0_carry__2_i_1_n_0,Gain8_3_0_carry__2_i_2_n_0,Gain8_3_0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_3_0_carry__2_i_1
       (.I0(tmp_Gain8_dotp_1[13]),
        .I1(tmp_Gain8_dotp_1[14]),
        .O(Gain8_3_0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_3_0_carry__2_i_2
       (.I0(tmp_Gain8_dotp_1[12]),
        .I1(tmp_Gain8_dotp_1[13]),
        .O(Gain8_3_0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Gain8_3_0_carry__2_i_3
       (.I0(tmp_Gain8_dotp_1[11]),
        .I1(tmp_Gain8_dotp_1[12]),
        .O(Gain8_3_0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry_i_1
       (.I0(tmp_Gain8_dotp_1[3]),
        .I1(tmp_Gain8_dotp_0[3]),
        .O(Gain8_3_0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry_i_2
       (.I0(tmp_Gain8_dotp_1[2]),
        .I1(tmp_Gain8_dotp_0[2]),
        .O(Gain8_3_0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry_i_3
       (.I0(tmp_Gain8_dotp_1[1]),
        .I1(tmp_Gain8_dotp_0[1]),
        .O(Gain8_3_0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain8_3_0_carry_i_4
       (.I0(tmp_Gain8_dotp_1[0]),
        .I1(tmp_Gain8_dotp_0[0]),
        .O(Gain8_3_0_carry_i_4_n_0));
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
    Gain_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Gain1_mul_temp__3}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gain_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gain_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gain_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gain_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Gain_mul_temp_P_UNCONNECTED[47:32],Gain_mul_temp_n_74,Gain_mul_temp_n_75,Gain_mul_temp_n_76,Gain_mul_temp_n_77,Gain_mul_temp_n_78,Gain_mul_temp_n_79,Gain_mul_temp_n_80,Gain_mul_temp_n_81,Gain_mul_temp_n_82,Gain_mul_temp_n_83,Gain_mul_temp_n_84,Gain_mul_temp_n_85,Gain_mul_temp_n_86,Gain_mul_temp_n_87,Gain_mul_temp_n_88,Gain_mul_temp_n_89,Gain_mul_temp_n_90,Gain_mul_temp_n_91,Gain_mul_temp_n_92,Gain_mul_temp_n_93,Gain_mul_temp_n_94,Gain_mul_temp_n_95,Gain_mul_temp_n_96,Gain_mul_temp_n_97,Gain_mul_temp_n_98,Gain_mul_temp_n_99,Gain_mul_temp_n_100,Gain_mul_temp_n_101,Gain_mul_temp_n_102,Gain_mul_temp_n_103,Gain_mul_temp_n_104,Gain_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gain_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Gain_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Gain_mul_temp_UNDERFLOW_UNCONNECTED));
  CARRY4 Gain_mul_temp_i_1
       (.CI(Gain_mul_temp_i_2_n_0),
        .CO({NLW_Gain_mul_temp_i_1_CO_UNCONNECTED[3],Gain_mul_temp_i_1_n_1,Gain_mul_temp_i_1_n_2,Gain_mul_temp_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Gain1_mul_temp__2_n_60,Gain1_mul_temp__2_n_61,Gain1_mul_temp__2_n_62}),
        .O(Gain1_mul_temp__3[63:60]),
        .S({Gain_mul_temp_i_3_n_0,Gain_mul_temp_i_4_n_0,Gain_mul_temp_i_5_n_0,Gain_mul_temp_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_10
       (.I0(Gain1_mul_temp__2_n_65),
        .I1(Gain1_mul_temp__0_n_82),
        .O(Gain_mul_temp_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_11
       (.I0(Gain1_mul_temp__2_n_66),
        .I1(Gain1_mul_temp__0_n_83),
        .O(Gain_mul_temp_i_11_n_0));
  CARRY4 Gain_mul_temp_i_12
       (.CI(Gain_mul_temp_i_17_n_0),
        .CO({Gain_mul_temp_i_12_n_0,Gain_mul_temp_i_12_n_1,Gain_mul_temp_i_12_n_2,Gain_mul_temp_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_71,Gain1_mul_temp__2_n_72,Gain1_mul_temp__2_n_73,Gain1_mul_temp__2_n_74}),
        .O(NLW_Gain_mul_temp_i_12_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_18_n_0,Gain_mul_temp_i_19_n_0,Gain_mul_temp_i_20_n_0,Gain_mul_temp_i_21_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_13
       (.I0(Gain1_mul_temp__2_n_67),
        .I1(Gain1_mul_temp__0_n_84),
        .O(Gain_mul_temp_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_14
       (.I0(Gain1_mul_temp__2_n_68),
        .I1(Gain1_mul_temp__0_n_85),
        .O(Gain_mul_temp_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_15
       (.I0(Gain1_mul_temp__2_n_69),
        .I1(Gain1_mul_temp__0_n_86),
        .O(Gain_mul_temp_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_16
       (.I0(Gain1_mul_temp__2_n_70),
        .I1(Gain1_mul_temp__0_n_87),
        .O(Gain_mul_temp_i_16_n_0));
  CARRY4 Gain_mul_temp_i_17
       (.CI(Gain_mul_temp_i_22_n_0),
        .CO({Gain_mul_temp_i_17_n_0,Gain_mul_temp_i_17_n_1,Gain_mul_temp_i_17_n_2,Gain_mul_temp_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_75,Gain1_mul_temp__2_n_76,Gain1_mul_temp__2_n_77,Gain1_mul_temp__2_n_78}),
        .O(NLW_Gain_mul_temp_i_17_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_23_n_0,Gain_mul_temp_i_24_n_0,Gain_mul_temp_i_25_n_0,Gain_mul_temp_i_26_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_18
       (.I0(Gain1_mul_temp__2_n_71),
        .I1(Gain1_mul_temp__0_n_88),
        .O(Gain_mul_temp_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_19
       (.I0(Gain1_mul_temp__2_n_72),
        .I1(Gain1_mul_temp__0_n_89),
        .O(Gain_mul_temp_i_19_n_0));
  CARRY4 Gain_mul_temp_i_2
       (.CI(Gain_mul_temp_i_7_n_0),
        .CO({Gain_mul_temp_i_2_n_0,Gain_mul_temp_i_2_n_1,Gain_mul_temp_i_2_n_2,Gain_mul_temp_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_63,Gain1_mul_temp__2_n_64,Gain1_mul_temp__2_n_65,Gain1_mul_temp__2_n_66}),
        .O({Gain1_mul_temp__3[59],NLW_Gain_mul_temp_i_2_O_UNCONNECTED[2:0]}),
        .S({Gain_mul_temp_i_8_n_0,Gain_mul_temp_i_9_n_0,Gain_mul_temp_i_10_n_0,Gain_mul_temp_i_11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_20
       (.I0(Gain1_mul_temp__2_n_73),
        .I1(Gain1_mul_temp__0_n_90),
        .O(Gain_mul_temp_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_21
       (.I0(Gain1_mul_temp__2_n_74),
        .I1(Gain1_mul_temp__0_n_91),
        .O(Gain_mul_temp_i_21_n_0));
  CARRY4 Gain_mul_temp_i_22
       (.CI(Gain_mul_temp_i_27_n_0),
        .CO({Gain_mul_temp_i_22_n_0,Gain_mul_temp_i_22_n_1,Gain_mul_temp_i_22_n_2,Gain_mul_temp_i_22_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_79,Gain1_mul_temp__2_n_80,Gain1_mul_temp__2_n_81,Gain1_mul_temp__2_n_82}),
        .O(NLW_Gain_mul_temp_i_22_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_28_n_0,Gain_mul_temp_i_29_n_0,Gain_mul_temp_i_30_n_0,Gain_mul_temp_i_31_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_23
       (.I0(Gain1_mul_temp__2_n_75),
        .I1(Gain1_mul_temp__0_n_92),
        .O(Gain_mul_temp_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_24
       (.I0(Gain1_mul_temp__2_n_76),
        .I1(Gain1_mul_temp__0_n_93),
        .O(Gain_mul_temp_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_25
       (.I0(Gain1_mul_temp__2_n_77),
        .I1(Gain1_mul_temp__0_n_94),
        .O(Gain_mul_temp_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_26
       (.I0(Gain1_mul_temp__2_n_78),
        .I1(Gain1_mul_temp__0_n_95),
        .O(Gain_mul_temp_i_26_n_0));
  CARRY4 Gain_mul_temp_i_27
       (.CI(Gain_mul_temp_i_32_n_0),
        .CO({Gain_mul_temp_i_27_n_0,Gain_mul_temp_i_27_n_1,Gain_mul_temp_i_27_n_2,Gain_mul_temp_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_83,Gain1_mul_temp__2_n_84,Gain1_mul_temp__2_n_85,Gain1_mul_temp__2_n_86}),
        .O(NLW_Gain_mul_temp_i_27_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_33_n_0,Gain_mul_temp_i_34_n_0,Gain_mul_temp_i_35_n_0,Gain_mul_temp_i_36_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_28
       (.I0(Gain1_mul_temp__2_n_79),
        .I1(Gain1_mul_temp__0_n_96),
        .O(Gain_mul_temp_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_29
       (.I0(Gain1_mul_temp__2_n_80),
        .I1(Gain1_mul_temp__0_n_97),
        .O(Gain_mul_temp_i_29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_3
       (.I0(Gain1_mul_temp__2_n_59),
        .I1(Gain1_mul_temp__0_n_76),
        .O(Gain_mul_temp_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_30
       (.I0(Gain1_mul_temp__2_n_81),
        .I1(Gain1_mul_temp__0_n_98),
        .O(Gain_mul_temp_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_31
       (.I0(Gain1_mul_temp__2_n_82),
        .I1(Gain1_mul_temp__0_n_99),
        .O(Gain_mul_temp_i_31_n_0));
  CARRY4 Gain_mul_temp_i_32
       (.CI(Gain_mul_temp_i_37_n_0),
        .CO({Gain_mul_temp_i_32_n_0,Gain_mul_temp_i_32_n_1,Gain_mul_temp_i_32_n_2,Gain_mul_temp_i_32_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_87,Gain1_mul_temp__2_n_88,Gain1_mul_temp__2_n_89,Gain1_mul_temp__2_n_90}),
        .O(NLW_Gain_mul_temp_i_32_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_38_n_0,Gain_mul_temp_i_39_n_0,Gain_mul_temp_i_40_n_0,Gain_mul_temp_i_41_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_33
       (.I0(Gain1_mul_temp__2_n_83),
        .I1(Gain1_mul_temp__0_n_100),
        .O(Gain_mul_temp_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_34
       (.I0(Gain1_mul_temp__2_n_84),
        .I1(Gain1_mul_temp__0_n_101),
        .O(Gain_mul_temp_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_35
       (.I0(Gain1_mul_temp__2_n_85),
        .I1(Gain1_mul_temp__0_n_102),
        .O(Gain_mul_temp_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_36
       (.I0(Gain1_mul_temp__2_n_86),
        .I1(Gain1_mul_temp__0_n_103),
        .O(Gain_mul_temp_i_36_n_0));
  CARRY4 Gain_mul_temp_i_37
       (.CI(Gain_mul_temp_i_42_n_0),
        .CO({Gain_mul_temp_i_37_n_0,Gain_mul_temp_i_37_n_1,Gain_mul_temp_i_37_n_2,Gain_mul_temp_i_37_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_91,Gain1_mul_temp__2_n_92,Gain1_mul_temp__2_n_93,Gain1_mul_temp__2_n_94}),
        .O(NLW_Gain_mul_temp_i_37_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_43_n_0,Gain_mul_temp_i_44_n_0,Gain_mul_temp_i_45_n_0,Gain_mul_temp_i_46_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_38
       (.I0(Gain1_mul_temp__2_n_87),
        .I1(Gain1_mul_temp__0_n_104),
        .O(Gain_mul_temp_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_39
       (.I0(Gain1_mul_temp__2_n_88),
        .I1(Gain1_mul_temp__0_n_105),
        .O(Gain_mul_temp_i_39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_4
       (.I0(Gain1_mul_temp__2_n_60),
        .I1(Gain1_mul_temp__0_n_77),
        .O(Gain_mul_temp_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_40
       (.I0(Gain1_mul_temp__2_n_89),
        .I1(Gain1_mul_temp_n_89),
        .O(Gain_mul_temp_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_41
       (.I0(Gain1_mul_temp__2_n_90),
        .I1(Gain1_mul_temp_n_90),
        .O(Gain_mul_temp_i_41_n_0));
  CARRY4 Gain_mul_temp_i_42
       (.CI(Gain_mul_temp_i_47_n_0),
        .CO({Gain_mul_temp_i_42_n_0,Gain_mul_temp_i_42_n_1,Gain_mul_temp_i_42_n_2,Gain_mul_temp_i_42_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_95,Gain1_mul_temp__2_n_96,Gain1_mul_temp__2_n_97,Gain1_mul_temp__2_n_98}),
        .O(NLW_Gain_mul_temp_i_42_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_48_n_0,Gain_mul_temp_i_49_n_0,Gain_mul_temp_i_50_n_0,Gain_mul_temp_i_51_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_43
       (.I0(Gain1_mul_temp__2_n_91),
        .I1(Gain1_mul_temp_n_91),
        .O(Gain_mul_temp_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_44
       (.I0(Gain1_mul_temp__2_n_92),
        .I1(Gain1_mul_temp_n_92),
        .O(Gain_mul_temp_i_44_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_45
       (.I0(Gain1_mul_temp__2_n_93),
        .I1(Gain1_mul_temp_n_93),
        .O(Gain_mul_temp_i_45_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_46
       (.I0(Gain1_mul_temp__2_n_94),
        .I1(Gain1_mul_temp_n_94),
        .O(Gain_mul_temp_i_46_n_0));
  CARRY4 Gain_mul_temp_i_47
       (.CI(Gain_mul_temp_i_52_n_0),
        .CO({Gain_mul_temp_i_47_n_0,Gain_mul_temp_i_47_n_1,Gain_mul_temp_i_47_n_2,Gain_mul_temp_i_47_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_99,Gain1_mul_temp__2_n_100,Gain1_mul_temp__2_n_101,Gain1_mul_temp__2_n_102}),
        .O(NLW_Gain_mul_temp_i_47_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_53_n_0,Gain_mul_temp_i_54_n_0,Gain_mul_temp_i_55_n_0,Gain_mul_temp_i_56_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_48
       (.I0(Gain1_mul_temp__2_n_95),
        .I1(Gain1_mul_temp_n_95),
        .O(Gain_mul_temp_i_48_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_49
       (.I0(Gain1_mul_temp__2_n_96),
        .I1(Gain1_mul_temp_n_96),
        .O(Gain_mul_temp_i_49_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_5
       (.I0(Gain1_mul_temp__2_n_61),
        .I1(Gain1_mul_temp__0_n_78),
        .O(Gain_mul_temp_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_50
       (.I0(Gain1_mul_temp__2_n_97),
        .I1(Gain1_mul_temp_n_97),
        .O(Gain_mul_temp_i_50_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_51
       (.I0(Gain1_mul_temp__2_n_98),
        .I1(Gain1_mul_temp_n_98),
        .O(Gain_mul_temp_i_51_n_0));
  CARRY4 Gain_mul_temp_i_52
       (.CI(1'b0),
        .CO({Gain_mul_temp_i_52_n_0,Gain_mul_temp_i_52_n_1,Gain_mul_temp_i_52_n_2,Gain_mul_temp_i_52_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_103,Gain1_mul_temp__2_n_104,Gain1_mul_temp__2_n_105,1'b0}),
        .O(NLW_Gain_mul_temp_i_52_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_57_n_0,Gain_mul_temp_i_58_n_0,Gain_mul_temp_i_59_n_0,Gain1_mul_temp__1_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_53
       (.I0(Gain1_mul_temp__2_n_99),
        .I1(Gain1_mul_temp_n_99),
        .O(Gain_mul_temp_i_53_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_54
       (.I0(Gain1_mul_temp__2_n_100),
        .I1(Gain1_mul_temp_n_100),
        .O(Gain_mul_temp_i_54_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_55
       (.I0(Gain1_mul_temp__2_n_101),
        .I1(Gain1_mul_temp_n_101),
        .O(Gain_mul_temp_i_55_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_56
       (.I0(Gain1_mul_temp__2_n_102),
        .I1(Gain1_mul_temp_n_102),
        .O(Gain_mul_temp_i_56_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_57
       (.I0(Gain1_mul_temp__2_n_103),
        .I1(Gain1_mul_temp_n_103),
        .O(Gain_mul_temp_i_57_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_58
       (.I0(Gain1_mul_temp__2_n_104),
        .I1(Gain1_mul_temp_n_104),
        .O(Gain_mul_temp_i_58_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_59
       (.I0(Gain1_mul_temp__2_n_105),
        .I1(Gain1_mul_temp_n_105),
        .O(Gain_mul_temp_i_59_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_6
       (.I0(Gain1_mul_temp__2_n_62),
        .I1(Gain1_mul_temp__0_n_79),
        .O(Gain_mul_temp_i_6_n_0));
  CARRY4 Gain_mul_temp_i_7
       (.CI(Gain_mul_temp_i_12_n_0),
        .CO({Gain_mul_temp_i_7_n_0,Gain_mul_temp_i_7_n_1,Gain_mul_temp_i_7_n_2,Gain_mul_temp_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({Gain1_mul_temp__2_n_67,Gain1_mul_temp__2_n_68,Gain1_mul_temp__2_n_69,Gain1_mul_temp__2_n_70}),
        .O(NLW_Gain_mul_temp_i_7_O_UNCONNECTED[3:0]),
        .S({Gain_mul_temp_i_13_n_0,Gain_mul_temp_i_14_n_0,Gain_mul_temp_i_15_n_0,Gain_mul_temp_i_16_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_8
       (.I0(Gain1_mul_temp__2_n_63),
        .I1(Gain1_mul_temp__0_n_80),
        .O(Gain_mul_temp_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gain_mul_temp_i_9
       (.I0(Gain1_mul_temp__2_n_64),
        .I1(Gain1_mul_temp__0_n_81),
        .O(Gain_mul_temp_i_9_n_0));
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
    Multiply_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Multiply_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Multiply_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Multiply_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Multiply_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_Multiply_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Multiply_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_Multiply_mul_temp_P_UNCONNECTED[47:32],Multiply_mul_temp_n_74,Multiply_out1,pwm[1:0],Multiply_mul_temp_n_89,Multiply_mul_temp_n_90,Multiply_mul_temp_n_91,Multiply_mul_temp_n_92,Multiply_mul_temp_n_93,Multiply_mul_temp_n_94,Multiply_mul_temp_n_95,Multiply_mul_temp_n_96,Multiply_mul_temp_n_97,Multiply_mul_temp_n_98,Multiply_mul_temp_n_99,Multiply_mul_temp_n_100,Multiply_mul_temp_n_101,Multiply_mul_temp_n_102,Multiply_mul_temp_n_103,Multiply_mul_temp_n_104,Multiply_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_Multiply_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Multiply_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_Multiply_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_Multiply_mul_temp_UNDERFLOW_UNCONNECTED));
  CARRY4 Sum1_add_temp_carry
       (.CI(1'b0),
        .CO({NLW_Sum1_add_temp_carry_CO_UNCONNECTED[3:2],Sum1_add_temp_carry_n_2,Sum1_add_temp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b0}),
        .O({NLW_Sum1_add_temp_carry_O_UNCONNECTED[3],B}),
        .S({1'b0,Sum1_add_temp_carry_i_1_n_0,Sum1_add_temp_carry_i_2_n_0,1'b0}));
  LUT2 #(
    .INIT(4'hB)) 
    Sum1_add_temp_carry_i_1
       (.I0(Sum3_out1),
        .I1(dtc_out_62),
        .O(Sum1_add_temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Sum1_add_temp_carry_i_2
       (.I0(dtc_out_62),
        .I1(Sum3_out1),
        .O(Sum1_add_temp_carry_i_2_n_0));
  CARRY4 Sum3_sub_temp__0_carry
       (.CI(1'b0),
        .CO({Sum3_sub_temp__0_carry_n_0,Sum3_sub_temp__0_carry_n_1,Sum3_sub_temp__0_carry_n_2,Sum3_sub_temp__0_carry_n_3}),
        .CYINIT(Sum3_sub_temp__0_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Sum3_sub_temp__0_carry_O_UNCONNECTED[3:0]),
        .S({Sum3_sub_temp__0_carry_i_2_n_0,Sum3_sub_temp__0_carry_i_3_n_0,Sum3_sub_temp__0_carry_i_4_n_0,Sum3_sub_temp__0_carry_i_5_n_0}));
  CARRY4 Sum3_sub_temp__0_carry__0
       (.CI(Sum3_sub_temp__0_carry_n_0),
        .CO({Sum3_sub_temp__0_carry__0_n_0,Sum3_sub_temp__0_carry__0_n_1,Sum3_sub_temp__0_carry__0_n_2,Sum3_sub_temp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_Sum3_sub_temp__0_carry__0_O_UNCONNECTED[3:0]),
        .S({Sum3_sub_temp__0_carry__0_i_1_n_0,Sum3_sub_temp__0_carry__0_i_2_n_0,Sum3_sub_temp__0_carry__0_i_3_n_0,Sum3_sub_temp__0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__0_i_1
       (.I0(Gain_mul_temp_n_88),
        .O(Sum3_sub_temp__0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__0_i_2
       (.I0(Gain_mul_temp_n_89),
        .O(Sum3_sub_temp__0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__0_i_3
       (.I0(Gain_mul_temp_n_90),
        .O(Sum3_sub_temp__0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__0_i_4
       (.I0(Gain_mul_temp_n_91),
        .O(Sum3_sub_temp__0_carry__0_i_4_n_0));
  CARRY4 Sum3_sub_temp__0_carry__1
       (.CI(Sum3_sub_temp__0_carry__0_n_0),
        .CO({Sum3_sub_temp__0_carry__1_n_0,Sum3_sub_temp__0_carry__1_n_1,Sum3_sub_temp__0_carry__1_n_2,Sum3_sub_temp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Gain3_add_temp_2_n_92,1'b0,1'b0,1'b0}),
        .O({A[0],NLW_Sum3_sub_temp__0_carry__1_O_UNCONNECTED[2:0]}),
        .S({Sum3_sub_temp__0_carry__1_i_1_n_0,Sum3_sub_temp__0_carry__1_i_2_n_0,Sum3_sub_temp__0_carry__1_i_3_n_0,Sum3_sub_temp__0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__1_i_1
       (.I0(Gain3_add_temp_2_n_92),
        .I1(Gain_mul_temp_n_84),
        .O(Sum3_sub_temp__0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__1_i_2
       (.I0(Gain_mul_temp_n_85),
        .O(Sum3_sub_temp__0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__1_i_3
       (.I0(Gain_mul_temp_n_86),
        .O(Sum3_sub_temp__0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__1_i_4
       (.I0(Gain_mul_temp_n_87),
        .O(Sum3_sub_temp__0_carry__1_i_4_n_0));
  CARRY4 Sum3_sub_temp__0_carry__2
       (.CI(Sum3_sub_temp__0_carry__1_n_0),
        .CO({Sum3_sub_temp__0_carry__2_n_0,Sum3_sub_temp__0_carry__2_n_1,Sum3_sub_temp__0_carry__2_n_2,Sum3_sub_temp__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Gain3_add_temp_2_n_88,Sum3_sub_temp__0_carry__2_i_1_n_0,Sum3_sub_temp__0_carry__2_i_2_n_0,Sum3_sub_temp__0_carry__2_i_3_n_0}),
        .O(A[4:1]),
        .S({Sum3_sub_temp__0_carry__2_i_4_n_0,Sum3_sub_temp__0_carry__2_i_5_n_0,Sum3_sub_temp__0_carry__2_i_6_n_0,Sum3_sub_temp__0_carry__2_i_7_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    Sum3_sub_temp__0_carry__2_i_1
       (.I0(Gain_mul_temp_n_81),
        .I1(Gain3_add_temp_2_n_89),
        .O(Sum3_sub_temp__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Sum3_sub_temp__0_carry__2_i_2
       (.I0(Gain3_add_temp_2_n_91),
        .I1(Gain_mul_temp_n_83),
        .O(Sum3_sub_temp__0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry__2_i_3
       (.I0(Gain3_add_temp_2_n_92),
        .O(Sum3_sub_temp__0_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h2D)) 
    Sum3_sub_temp__0_carry__2_i_4
       (.I0(Gain3_add_temp_2_n_89),
        .I1(Gain_mul_temp_n_81),
        .I2(Gain3_add_temp_2_n_88),
        .O(Sum3_sub_temp__0_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    Sum3_sub_temp__0_carry__2_i_5
       (.I0(Gain3_add_temp_2_n_89),
        .I1(Gain_mul_temp_n_81),
        .I2(Gain_mul_temp_n_82),
        .I3(Gain3_add_temp_2_n_90),
        .O(Sum3_sub_temp__0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    Sum3_sub_temp__0_carry__2_i_6
       (.I0(Gain_mul_temp_n_83),
        .I1(Gain3_add_temp_2_n_91),
        .I2(Gain3_add_temp_2_n_90),
        .I3(Gain_mul_temp_n_82),
        .O(Sum3_sub_temp__0_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    Sum3_sub_temp__0_carry__2_i_7
       (.I0(Gain3_add_temp_2_n_92),
        .I1(Gain3_add_temp_2_n_91),
        .I2(Gain_mul_temp_n_83),
        .O(Sum3_sub_temp__0_carry__2_i_7_n_0));
  CARRY4 Sum3_sub_temp__0_carry__3
       (.CI(Sum3_sub_temp__0_carry__2_n_0),
        .CO({Sum3_sub_temp__0_carry__3_n_0,Sum3_sub_temp__0_carry__3_n_1,Sum3_sub_temp__0_carry__3_n_2,Sum3_sub_temp__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({Gain3_add_temp_2_n_84,Gain3_add_temp_2_n_85,Gain3_add_temp_2_n_86,Gain3_add_temp_2_n_87}),
        .O(A[8:5]),
        .S({Sum3_sub_temp__0_carry__3_i_1_n_0,Sum3_sub_temp__0_carry__3_i_2_n_0,Sum3_sub_temp__0_carry__3_i_3_n_0,Sum3_sub_temp__0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__3_i_1
       (.I0(Gain3_add_temp_2_n_85),
        .I1(Gain3_add_temp_2_n_84),
        .O(Sum3_sub_temp__0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__3_i_2
       (.I0(Gain3_add_temp_2_n_86),
        .I1(Gain3_add_temp_2_n_85),
        .O(Sum3_sub_temp__0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__3_i_3
       (.I0(Gain3_add_temp_2_n_87),
        .I1(Gain3_add_temp_2_n_86),
        .O(Sum3_sub_temp__0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__3_i_4
       (.I0(Gain3_add_temp_2_n_88),
        .I1(Gain3_add_temp_2_n_87),
        .O(Sum3_sub_temp__0_carry__3_i_4_n_0));
  CARRY4 Sum3_sub_temp__0_carry__4
       (.CI(Sum3_sub_temp__0_carry__3_n_0),
        .CO({Sum3_sub_temp__0_carry__4_n_0,Sum3_sub_temp__0_carry__4_n_1,Sum3_sub_temp__0_carry__4_n_2,Sum3_sub_temp__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({Gain3_add_temp_2_n_80,Gain3_add_temp_2_n_81,Gain3_add_temp_2_n_82,Gain3_add_temp_2_n_83}),
        .O(A[12:9]),
        .S({Sum3_sub_temp__0_carry__4_i_1_n_0,Sum3_sub_temp__0_carry__4_i_2_n_0,Sum3_sub_temp__0_carry__4_i_3_n_0,Sum3_sub_temp__0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__4_i_1
       (.I0(Gain3_add_temp_2_n_81),
        .I1(Gain3_add_temp_2_n_80),
        .O(Sum3_sub_temp__0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__4_i_2
       (.I0(Gain3_add_temp_2_n_82),
        .I1(Gain3_add_temp_2_n_81),
        .O(Sum3_sub_temp__0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__4_i_3
       (.I0(Gain3_add_temp_2_n_83),
        .I1(Gain3_add_temp_2_n_82),
        .O(Sum3_sub_temp__0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__4_i_4
       (.I0(Gain3_add_temp_2_n_84),
        .I1(Gain3_add_temp_2_n_83),
        .O(Sum3_sub_temp__0_carry__4_i_4_n_0));
  CARRY4 Sum3_sub_temp__0_carry__5
       (.CI(Sum3_sub_temp__0_carry__4_n_0),
        .CO({NLW_Sum3_sub_temp__0_carry__5_CO_UNCONNECTED[3:2],Sum3_sub_temp__0_carry__5_n_2,Sum3_sub_temp__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Gain3_add_temp_2_n_78,Gain3_add_temp_2_n_79}),
        .O({NLW_Sum3_sub_temp__0_carry__5_O_UNCONNECTED[3],Sum3_out1,A[14:13]}),
        .S({1'b0,Sum3_sub_temp__0_carry__5_i_1_n_0,Sum3_sub_temp__0_carry__5_i_2_n_0,Sum3_sub_temp__0_carry__5_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__5_i_1
       (.I0(Gain3_add_temp_2_n_78),
        .I1(Gain3_add_temp_2_n_77),
        .O(Sum3_sub_temp__0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__5_i_2
       (.I0(Gain3_add_temp_2_n_79),
        .I1(Gain3_add_temp_2_n_78),
        .O(Sum3_sub_temp__0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum3_sub_temp__0_carry__5_i_3
       (.I0(Gain3_add_temp_2_n_80),
        .I1(Gain3_add_temp_2_n_79),
        .O(Sum3_sub_temp__0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry_i_1
       (.I0(Gain_mul_temp_n_96),
        .O(Sum3_sub_temp__0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry_i_2
       (.I0(Gain_mul_temp_n_92),
        .O(Sum3_sub_temp__0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry_i_3
       (.I0(Gain_mul_temp_n_93),
        .O(Sum3_sub_temp__0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry_i_4
       (.I0(Gain_mul_temp_n_94),
        .O(Sum3_sub_temp__0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Sum3_sub_temp__0_carry_i_5
       (.I0(Gain_mul_temp_n_95),
        .O(Sum3_sub_temp__0_carry_i_5_n_0));
  CARRY4 \Sum4_add_temp[0]_carry 
       (.CI(1'b0),
        .CO({\Sum4_add_temp[0]_carry_n_0 ,\Sum4_add_temp[0]_carry_n_1 ,\Sum4_add_temp[0]_carry_n_2 ,\Sum4_add_temp[0]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\Sum6_add_temp[0] [3:1],1'b0}),
        .O({\Sum4_out1[0] [2:0],\NLW_Sum4_add_temp[0]_carry_O_UNCONNECTED [0]}),
        .S({\Sum4_add_temp[0]_carry_i_1_n_0 ,\Sum4_add_temp[0]_carry_i_2_n_0 ,\Sum4_add_temp[0]_carry_i_3_n_0 ,\Sum6_add_temp[0] [0]}));
  CARRY4 \Sum4_add_temp[0]_carry__0 
       (.CI(\Sum4_add_temp[0]_carry_n_0 ),
        .CO({\Sum4_add_temp[0]_carry__0_n_0 ,\Sum4_add_temp[0]_carry__0_n_1 ,\Sum4_add_temp[0]_carry__0_n_2 ,\Sum4_add_temp[0]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[0] [7:4]),
        .O(\Sum4_out1[0] [6:3]),
        .S({\Sum4_add_temp[0]_carry__0_i_1_n_0 ,\Sum4_add_temp[0]_carry__0_i_2_n_0 ,\Sum4_add_temp[0]_carry__0_i_3_n_0 ,\Sum4_add_temp[0]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__0_i_1 
       (.I0(\Sum6_add_temp[0] [7]),
        .I1(sum_Gain6_dotp_2_3[6]),
        .O(\Sum4_add_temp[0]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__0_i_2 
       (.I0(\Sum6_add_temp[0] [6]),
        .I1(sum_Gain6_dotp_2_3[5]),
        .O(\Sum4_add_temp[0]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__0_i_3 
       (.I0(\Sum6_add_temp[0] [5]),
        .I1(sum_Gain6_dotp_2_3[4]),
        .O(\Sum4_add_temp[0]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__0_i_4 
       (.I0(\Sum6_add_temp[0] [4]),
        .I1(sum_Gain6_dotp_2_3[3]),
        .O(\Sum4_add_temp[0]_carry__0_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[0]_carry__1 
       (.CI(\Sum4_add_temp[0]_carry__0_n_0 ),
        .CO({\Sum4_add_temp[0]_carry__1_n_0 ,\Sum4_add_temp[0]_carry__1_n_1 ,\Sum4_add_temp[0]_carry__1_n_2 ,\Sum4_add_temp[0]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[0] [11:8]),
        .O(\Sum4_out1[0] [10:7]),
        .S({\Sum4_add_temp[0]_carry__1_i_1_n_0 ,\Sum4_add_temp[0]_carry__1_i_2_n_0 ,\Sum4_add_temp[0]_carry__1_i_3_n_0 ,\Sum4_add_temp[0]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__1_i_1 
       (.I0(\Sum6_add_temp[0] [11]),
        .I1(sum_Gain6_dotp_2_3[10]),
        .O(\Sum4_add_temp[0]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__1_i_2 
       (.I0(\Sum6_add_temp[0] [10]),
        .I1(sum_Gain6_dotp_2_3[9]),
        .O(\Sum4_add_temp[0]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__1_i_3 
       (.I0(\Sum6_add_temp[0] [9]),
        .I1(sum_Gain6_dotp_2_3[8]),
        .O(\Sum4_add_temp[0]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry__1_i_4 
       (.I0(\Sum6_add_temp[0] [8]),
        .I1(sum_Gain6_dotp_2_3[7]),
        .O(\Sum4_add_temp[0]_carry__1_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[0]_carry__2 
       (.CI(\Sum4_add_temp[0]_carry__1_n_0 ),
        .CO({\Sum4_add_temp[0]_carry__2_n_0 ,\Sum4_add_temp[0]_carry__2_n_1 ,\Sum4_add_temp[0]_carry__2_n_2 ,\Sum4_add_temp[0]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({sum_Gain6_dotp_2_3[13],\Sum4_add_temp[0]_carry__2_i_1_n_3 ,sum_Gain6_dotp_2_3[12:11]}),
        .O(\Sum4_out1[0] [14:11]),
        .S({\Sum4_add_temp[0]_carry__2_i_2_n_0 ,\Sum4_add_temp[0]_carry__2_i_3_n_0 ,\Sum4_add_temp[0]_carry__2_i_4_n_0 ,\Sum4_add_temp[0]_carry__2_i_5_n_0 }));
  CARRY4 \Sum4_add_temp[0]_carry__2_i_1 
       (.CI(\Sum6_add_temp[0]_carry__1_n_0 ),
        .CO({\NLW_Sum4_add_temp[0]_carry__2_i_1_CO_UNCONNECTED [3:1],\Sum4_add_temp[0]_carry__2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Sum4_add_temp[0]_carry__2_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[0]_carry__2_i_2 
       (.I0(sum_Gain6_dotp_2_3[13]),
        .I1(sum_Gain6_dotp_2_3[14]),
        .O(\Sum4_add_temp[0]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[0]_carry__2_i_3 
       (.I0(sum_Gain6_dotp_2_3[13]),
        .I1(\Sum4_add_temp[0]_carry__2_i_1_n_3 ),
        .O(\Sum4_add_temp[0]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[0]_carry__2_i_4 
       (.I0(\Sum4_add_temp[0]_carry__2_i_1_n_3 ),
        .I1(sum_Gain6_dotp_2_3[12]),
        .O(\Sum4_add_temp[0]_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[0]_carry__2_i_5 
       (.I0(\Sum4_add_temp[0]_carry__2_i_1_n_3 ),
        .I1(sum_Gain6_dotp_2_3[11]),
        .O(\Sum4_add_temp[0]_carry__2_i_5_n_0 ));
  CARRY4 \Sum4_add_temp[0]_carry__3 
       (.CI(\Sum4_add_temp[0]_carry__2_n_0 ),
        .CO(\NLW_Sum4_add_temp[0]_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Sum4_add_temp[0]_carry__3_O_UNCONNECTED [3:1],\Sum4_out1[0] [15]}),
        .S({1'b0,1'b0,1'b0,\Sum4_add_temp[0]_carry__3_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[0]_carry__3_i_1 
       (.I0(sum_Gain6_dotp_2_3[14]),
        .I1(sum_Gain6_dotp_2_3[15]),
        .O(\Sum4_add_temp[0]_carry__3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry_i_1 
       (.I0(\Sum6_add_temp[0] [3]),
        .I1(sum_Gain6_dotp_2_3[2]),
        .O(\Sum4_add_temp[0]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry_i_2 
       (.I0(\Sum6_add_temp[0] [2]),
        .I1(sum_Gain6_dotp_2_3[1]),
        .O(\Sum4_add_temp[0]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[0]_carry_i_3 
       (.I0(\Sum6_add_temp[0] [1]),
        .I1(sum_Gain6_dotp_2_3[0]),
        .O(\Sum4_add_temp[0]_carry_i_3_n_0 ));
  CARRY4 \Sum4_add_temp[1]_carry 
       (.CI(1'b0),
        .CO({\Sum4_add_temp[1]_carry_n_0 ,\Sum4_add_temp[1]_carry_n_1 ,\Sum4_add_temp[1]_carry_n_2 ,\Sum4_add_temp[1]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\Sum6_add_temp[1] [3:1],1'b0}),
        .O({\Sum4_out1[1] [2:0],\NLW_Sum4_add_temp[1]_carry_O_UNCONNECTED [0]}),
        .S({\Sum4_add_temp[1]_carry_i_1_n_0 ,\Sum4_add_temp[1]_carry_i_2_n_0 ,\Sum4_add_temp[1]_carry_i_3_n_0 ,\Sum6_add_temp[1] [0]}));
  CARRY4 \Sum4_add_temp[1]_carry__0 
       (.CI(\Sum4_add_temp[1]_carry_n_0 ),
        .CO({\Sum4_add_temp[1]_carry__0_n_0 ,\Sum4_add_temp[1]_carry__0_n_1 ,\Sum4_add_temp[1]_carry__0_n_2 ,\Sum4_add_temp[1]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[1] [7:4]),
        .O(\Sum4_out1[1] [6:3]),
        .S({\Sum4_add_temp[1]_carry__0_i_1_n_0 ,\Sum4_add_temp[1]_carry__0_i_2_n_0 ,\Sum4_add_temp[1]_carry__0_i_3_n_0 ,\Sum4_add_temp[1]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__0_i_1 
       (.I0(\Sum6_add_temp[1] [7]),
        .I1(\Gain6_out1[1] [6]),
        .O(\Sum4_add_temp[1]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__0_i_2 
       (.I0(\Sum6_add_temp[1] [6]),
        .I1(\Gain6_out1[1] [5]),
        .O(\Sum4_add_temp[1]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__0_i_3 
       (.I0(\Sum6_add_temp[1] [5]),
        .I1(\Gain6_out1[1] [4]),
        .O(\Sum4_add_temp[1]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__0_i_4 
       (.I0(\Sum6_add_temp[1] [4]),
        .I1(\Gain6_out1[1] [3]),
        .O(\Sum4_add_temp[1]_carry__0_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[1]_carry__1 
       (.CI(\Sum4_add_temp[1]_carry__0_n_0 ),
        .CO({\Sum4_add_temp[1]_carry__1_n_0 ,\Sum4_add_temp[1]_carry__1_n_1 ,\Sum4_add_temp[1]_carry__1_n_2 ,\Sum4_add_temp[1]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[1] [11:8]),
        .O(\Sum4_out1[1] [10:7]),
        .S({\Sum4_add_temp[1]_carry__1_i_1_n_0 ,\Sum4_add_temp[1]_carry__1_i_2_n_0 ,\Sum4_add_temp[1]_carry__1_i_3_n_0 ,\Sum4_add_temp[1]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__1_i_1 
       (.I0(\Sum6_add_temp[1] [11]),
        .I1(\Gain6_out1[1] [10]),
        .O(\Sum4_add_temp[1]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__1_i_2 
       (.I0(\Sum6_add_temp[1] [10]),
        .I1(\Gain6_out1[1] [9]),
        .O(\Sum4_add_temp[1]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__1_i_3 
       (.I0(\Sum6_add_temp[1] [9]),
        .I1(\Gain6_out1[1] [8]),
        .O(\Sum4_add_temp[1]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__1_i_4 
       (.I0(\Sum6_add_temp[1] [8]),
        .I1(\Gain6_out1[1] [7]),
        .O(\Sum4_add_temp[1]_carry__1_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[1]_carry__2 
       (.CI(\Sum4_add_temp[1]_carry__1_n_0 ),
        .CO({\Sum4_add_temp[1]_carry__2_n_0 ,\Sum4_add_temp[1]_carry__2_n_1 ,\Sum4_add_temp[1]_carry__2_n_2 ,\Sum4_add_temp[1]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Gain6_out1[1] [13],\Sum4_add_temp[1]_carry__2_i_1_n_0 ,\Sum6_add_temp[1] [13:12]}),
        .O(\Sum4_out1[1] [14:11]),
        .S({\Sum4_add_temp[1]_carry__2_i_2_n_0 ,\Sum4_add_temp[1]_carry__2_i_3_n_0 ,\Sum4_add_temp[1]_carry__2_i_4_n_0 ,\Sum4_add_temp[1]_carry__2_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \Sum4_add_temp[1]_carry__2_i_1 
       (.I0(\Gain6_out1[1] [13]),
        .O(\Sum4_add_temp[1]_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[1]_carry__2_i_2 
       (.I0(\Gain6_out1[1] [13]),
        .I1(\Gain6_out1[1] [14]),
        .O(\Sum4_add_temp[1]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__2_i_3 
       (.I0(\Gain6_out1[1] [13]),
        .I1(\Sum6_add_temp[1] [14]),
        .O(\Sum4_add_temp[1]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__2_i_4 
       (.I0(\Sum6_add_temp[1] [13]),
        .I1(\Gain6_out1[1] [12]),
        .O(\Sum4_add_temp[1]_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry__2_i_5 
       (.I0(\Sum6_add_temp[1] [12]),
        .I1(\Gain6_out1[1] [11]),
        .O(\Sum4_add_temp[1]_carry__2_i_5_n_0 ));
  CARRY4 \Sum4_add_temp[1]_carry__3 
       (.CI(\Sum4_add_temp[1]_carry__2_n_0 ),
        .CO(\NLW_Sum4_add_temp[1]_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Sum4_add_temp[1]_carry__3_O_UNCONNECTED [3:1],\Sum4_out1[1] [15]}),
        .S({1'b0,1'b0,1'b0,\Sum4_add_temp[1]_carry__3_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[1]_carry__3_i_1 
       (.I0(\Gain6_out1[1] [14]),
        .I1(\Gain6_out1[1] [15]),
        .O(\Sum4_add_temp[1]_carry__3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry_i_1 
       (.I0(\Sum6_add_temp[1] [3]),
        .I1(\Gain6_out1[1] [2]),
        .O(\Sum4_add_temp[1]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry_i_2 
       (.I0(\Sum6_add_temp[1] [2]),
        .I1(\Gain6_out1[1] [1]),
        .O(\Sum4_add_temp[1]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[1]_carry_i_3 
       (.I0(\Sum6_add_temp[1] [1]),
        .I1(\Gain6_out1[1] [0]),
        .O(\Sum4_add_temp[1]_carry_i_3_n_0 ));
  CARRY4 \Sum4_add_temp[2]_carry 
       (.CI(1'b0),
        .CO({\Sum4_add_temp[2]_carry_n_0 ,\Sum4_add_temp[2]_carry_n_1 ,\Sum4_add_temp[2]_carry_n_2 ,\Sum4_add_temp[2]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\Sum6_add_temp[2] [3:1],1'b0}),
        .O({\Sum4_out1[2] [2:0],\NLW_Sum4_add_temp[2]_carry_O_UNCONNECTED [0]}),
        .S({\Sum4_add_temp[2]_carry_i_1_n_0 ,\Sum4_add_temp[2]_carry_i_2_n_0 ,\Sum4_add_temp[2]_carry_i_3_n_0 ,\Sum6_add_temp[2] [0]}));
  CARRY4 \Sum4_add_temp[2]_carry__0 
       (.CI(\Sum4_add_temp[2]_carry_n_0 ),
        .CO({\Sum4_add_temp[2]_carry__0_n_0 ,\Sum4_add_temp[2]_carry__0_n_1 ,\Sum4_add_temp[2]_carry__0_n_2 ,\Sum4_add_temp[2]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[2] [7:4]),
        .O(\Sum4_out1[2] [6:3]),
        .S({\Sum4_add_temp[2]_carry__0_i_1_n_0 ,\Sum4_add_temp[2]_carry__0_i_2_n_0 ,\Sum4_add_temp[2]_carry__0_i_3_n_0 ,\Sum4_add_temp[2]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__0_i_1 
       (.I0(\Sum6_add_temp[2] [7]),
        .I1(\Gain6_out1[2] [6]),
        .O(\Sum4_add_temp[2]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__0_i_2 
       (.I0(\Sum6_add_temp[2] [6]),
        .I1(\Gain6_out1[2] [5]),
        .O(\Sum4_add_temp[2]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__0_i_3 
       (.I0(\Sum6_add_temp[2] [5]),
        .I1(\Gain6_out1[2] [4]),
        .O(\Sum4_add_temp[2]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__0_i_4 
       (.I0(\Sum6_add_temp[2] [4]),
        .I1(\Gain6_out1[2] [3]),
        .O(\Sum4_add_temp[2]_carry__0_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[2]_carry__1 
       (.CI(\Sum4_add_temp[2]_carry__0_n_0 ),
        .CO({\Sum4_add_temp[2]_carry__1_n_0 ,\Sum4_add_temp[2]_carry__1_n_1 ,\Sum4_add_temp[2]_carry__1_n_2 ,\Sum4_add_temp[2]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[2] [11:8]),
        .O(\Sum4_out1[2] [10:7]),
        .S({\Sum4_add_temp[2]_carry__1_i_1_n_0 ,\Sum4_add_temp[2]_carry__1_i_2_n_0 ,\Sum4_add_temp[2]_carry__1_i_3_n_0 ,\Sum4_add_temp[2]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__1_i_1 
       (.I0(\Sum6_add_temp[2] [11]),
        .I1(\Gain6_out1[2] [10]),
        .O(\Sum4_add_temp[2]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__1_i_2 
       (.I0(\Sum6_add_temp[2] [10]),
        .I1(\Gain6_out1[2] [9]),
        .O(\Sum4_add_temp[2]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__1_i_3 
       (.I0(\Sum6_add_temp[2] [9]),
        .I1(\Gain6_out1[2] [8]),
        .O(\Sum4_add_temp[2]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry__1_i_4 
       (.I0(\Sum6_add_temp[2] [8]),
        .I1(\Gain6_out1[2] [7]),
        .O(\Sum4_add_temp[2]_carry__1_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[2]_carry__2 
       (.CI(\Sum4_add_temp[2]_carry__1_n_0 ),
        .CO({\Sum4_add_temp[2]_carry__2_n_0 ,\Sum4_add_temp[2]_carry__2_n_1 ,\Sum4_add_temp[2]_carry__2_n_2 ,\Sum4_add_temp[2]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Gain6_out1[2] [13],\Sum4_add_temp[2]_carry__2_i_1_n_3 ,\Gain6_out1[2] [12:11]}),
        .O(\Sum4_out1[2] [14:11]),
        .S({\Sum4_add_temp[2]_carry__2_i_2_n_0 ,\Sum4_add_temp[2]_carry__2_i_3_n_0 ,\Sum4_add_temp[2]_carry__2_i_4_n_0 ,\Sum4_add_temp[2]_carry__2_i_5_n_0 }));
  CARRY4 \Sum4_add_temp[2]_carry__2_i_1 
       (.CI(\Sum6_add_temp[2]_carry__1_n_0 ),
        .CO({\NLW_Sum4_add_temp[2]_carry__2_i_1_CO_UNCONNECTED [3:1],\Sum4_add_temp[2]_carry__2_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Sum4_add_temp[2]_carry__2_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[2]_carry__2_i_2 
       (.I0(\Gain6_out1[2] [13]),
        .I1(\Gain6_out1[2] [14]),
        .O(\Sum4_add_temp[2]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[2]_carry__2_i_3 
       (.I0(\Gain6_out1[2] [13]),
        .I1(\Sum4_add_temp[2]_carry__2_i_1_n_3 ),
        .O(\Sum4_add_temp[2]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[2]_carry__2_i_4 
       (.I0(\Sum4_add_temp[2]_carry__2_i_1_n_3 ),
        .I1(\Gain6_out1[2] [12]),
        .O(\Sum4_add_temp[2]_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[2]_carry__2_i_5 
       (.I0(\Sum4_add_temp[2]_carry__2_i_1_n_3 ),
        .I1(\Gain6_out1[2] [11]),
        .O(\Sum4_add_temp[2]_carry__2_i_5_n_0 ));
  CARRY4 \Sum4_add_temp[2]_carry__3 
       (.CI(\Sum4_add_temp[2]_carry__2_n_0 ),
        .CO(\NLW_Sum4_add_temp[2]_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Sum4_add_temp[2]_carry__3_O_UNCONNECTED [3:1],\Sum4_out1[2] [15]}),
        .S({1'b0,1'b0,1'b0,\Sum4_add_temp[2]_carry__3_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[2]_carry__3_i_1 
       (.I0(\Gain6_out1[2] [14]),
        .I1(\Gain6_out1[2] [15]),
        .O(\Sum4_add_temp[2]_carry__3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry_i_1 
       (.I0(\Sum6_add_temp[2] [3]),
        .I1(\Gain6_out1[2] [2]),
        .O(\Sum4_add_temp[2]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry_i_2 
       (.I0(\Sum6_add_temp[2] [2]),
        .I1(\Gain6_out1[2] [1]),
        .O(\Sum4_add_temp[2]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[2]_carry_i_3 
       (.I0(\Sum6_add_temp[2] [1]),
        .I1(\Gain6_out1[2] [0]),
        .O(\Sum4_add_temp[2]_carry_i_3_n_0 ));
  CARRY4 \Sum4_add_temp[3]_carry 
       (.CI(1'b0),
        .CO({\Sum4_add_temp[3]_carry_n_0 ,\Sum4_add_temp[3]_carry_n_1 ,\Sum4_add_temp[3]_carry_n_2 ,\Sum4_add_temp[3]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\Sum6_add_temp[3] [3:1],1'b0}),
        .O({\Sum4_out1[3] [2:0],\NLW_Sum4_add_temp[3]_carry_O_UNCONNECTED [0]}),
        .S({\Sum4_add_temp[3]_carry_i_1_n_0 ,\Sum4_add_temp[3]_carry_i_2_n_0 ,\Sum4_add_temp[3]_carry_i_3_n_0 ,\Sum6_add_temp[3] [0]}));
  CARRY4 \Sum4_add_temp[3]_carry__0 
       (.CI(\Sum4_add_temp[3]_carry_n_0 ),
        .CO({\Sum4_add_temp[3]_carry__0_n_0 ,\Sum4_add_temp[3]_carry__0_n_1 ,\Sum4_add_temp[3]_carry__0_n_2 ,\Sum4_add_temp[3]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[3] [7:4]),
        .O(\Sum4_out1[3] [6:3]),
        .S({\Sum4_add_temp[3]_carry__0_i_1_n_0 ,\Sum4_add_temp[3]_carry__0_i_2_n_0 ,\Sum4_add_temp[3]_carry__0_i_3_n_0 ,\Sum4_add_temp[3]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__0_i_1 
       (.I0(\Sum6_add_temp[3] [7]),
        .I1(\Gain6_out1[3] [6]),
        .O(\Sum4_add_temp[3]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__0_i_2 
       (.I0(\Sum6_add_temp[3] [6]),
        .I1(\Gain6_out1[3] [5]),
        .O(\Sum4_add_temp[3]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__0_i_3 
       (.I0(\Sum6_add_temp[3] [5]),
        .I1(\Gain6_out1[3] [4]),
        .O(\Sum4_add_temp[3]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__0_i_4 
       (.I0(\Sum6_add_temp[3] [4]),
        .I1(\Gain6_out1[3] [3]),
        .O(\Sum4_add_temp[3]_carry__0_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[3]_carry__1 
       (.CI(\Sum4_add_temp[3]_carry__0_n_0 ),
        .CO({\Sum4_add_temp[3]_carry__1_n_0 ,\Sum4_add_temp[3]_carry__1_n_1 ,\Sum4_add_temp[3]_carry__1_n_2 ,\Sum4_add_temp[3]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_temp[3] [11:8]),
        .O(\Sum4_out1[3] [10:7]),
        .S({\Sum4_add_temp[3]_carry__1_i_1_n_0 ,\Sum4_add_temp[3]_carry__1_i_2_n_0 ,\Sum4_add_temp[3]_carry__1_i_3_n_0 ,\Sum4_add_temp[3]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__1_i_1 
       (.I0(\Sum6_add_temp[3] [11]),
        .I1(\Gain6_out1[3] [10]),
        .O(\Sum4_add_temp[3]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__1_i_2 
       (.I0(\Sum6_add_temp[3] [10]),
        .I1(\Gain6_out1[3] [9]),
        .O(\Sum4_add_temp[3]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__1_i_3 
       (.I0(\Sum6_add_temp[3] [9]),
        .I1(\Gain6_out1[3] [8]),
        .O(\Sum4_add_temp[3]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__1_i_4 
       (.I0(\Sum6_add_temp[3] [8]),
        .I1(\Gain6_out1[3] [7]),
        .O(\Sum4_add_temp[3]_carry__1_i_4_n_0 ));
  CARRY4 \Sum4_add_temp[3]_carry__2 
       (.CI(\Sum4_add_temp[3]_carry__1_n_0 ),
        .CO({\Sum4_add_temp[3]_carry__2_n_0 ,\Sum4_add_temp[3]_carry__2_n_1 ,\Sum4_add_temp[3]_carry__2_n_2 ,\Sum4_add_temp[3]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Gain6_out1[3] [13],\Sum4_add_temp[3]_carry__2_i_1_n_0 ,\Sum6_add_temp[3] [13:12]}),
        .O(\Sum4_out1[3] [14:11]),
        .S({\Sum4_add_temp[3]_carry__2_i_2_n_0 ,\Sum4_add_temp[3]_carry__2_i_3_n_0 ,\Sum4_add_temp[3]_carry__2_i_4_n_0 ,\Sum4_add_temp[3]_carry__2_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \Sum4_add_temp[3]_carry__2_i_1 
       (.I0(\Gain6_out1[3] [13]),
        .O(\Sum4_add_temp[3]_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[3]_carry__2_i_2 
       (.I0(\Gain6_out1[3] [13]),
        .I1(\Gain6_out1[3] [14]),
        .O(\Sum4_add_temp[3]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__2_i_3 
       (.I0(\Gain6_out1[3] [13]),
        .I1(\Sum6_add_temp[3] [14]),
        .O(\Sum4_add_temp[3]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__2_i_4 
       (.I0(\Sum6_add_temp[3] [13]),
        .I1(\Gain6_out1[3] [12]),
        .O(\Sum4_add_temp[3]_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry__2_i_5 
       (.I0(\Sum6_add_temp[3] [12]),
        .I1(\Gain6_out1[3] [11]),
        .O(\Sum4_add_temp[3]_carry__2_i_5_n_0 ));
  CARRY4 \Sum4_add_temp[3]_carry__3 
       (.CI(\Sum4_add_temp[3]_carry__2_n_0 ),
        .CO(\NLW_Sum4_add_temp[3]_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Sum4_add_temp[3]_carry__3_O_UNCONNECTED [3:1],\Sum4_out1[3] [15]}),
        .S({1'b0,1'b0,1'b0,\Sum4_add_temp[3]_carry__3_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum4_add_temp[3]_carry__3_i_1 
       (.I0(\Gain6_out1[3] [14]),
        .I1(\Gain6_out1[3] [15]),
        .O(\Sum4_add_temp[3]_carry__3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry_i_1 
       (.I0(\Sum6_add_temp[3] [3]),
        .I1(\Gain6_out1[3] [2]),
        .O(\Sum4_add_temp[3]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry_i_2 
       (.I0(\Sum6_add_temp[3] [2]),
        .I1(\Gain6_out1[3] [1]),
        .O(\Sum4_add_temp[3]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum4_add_temp[3]_carry_i_3 
       (.I0(\Sum6_add_temp[3] [1]),
        .I1(\Gain6_out1[3] [0]),
        .O(\Sum4_add_temp[3]_carry_i_3_n_0 ));
  CARRY4 \Sum6_add_temp[0]_carry 
       (.CI(1'b0),
        .CO({\Sum6_add_temp[0]_carry_n_0 ,\Sum6_add_temp[0]_carry_n_1 ,\Sum6_add_temp[0]_carry_n_2 ,\Sum6_add_temp[0]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[0] [3:0]),
        .O(\Sum6_add_temp[0] [3:0]),
        .S({\Sum6_add_temp[0]_carry_i_1_n_0 ,\Sum6_add_temp[0]_carry_i_2_n_0 ,\Sum6_add_temp[0]_carry_i_3_n_0 ,\Sum6_add_temp[0]_carry_i_4_n_0 }));
  CARRY4 \Sum6_add_temp[0]_carry__0 
       (.CI(\Sum6_add_temp[0]_carry_n_0 ),
        .CO({\Sum6_add_temp[0]_carry__0_n_0 ,\Sum6_add_temp[0]_carry__0_n_1 ,\Sum6_add_temp[0]_carry__0_n_2 ,\Sum6_add_temp[0]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[0] [7:4]),
        .O(\Sum6_add_temp[0] [7:4]),
        .S({\Sum6_add_temp[0]_carry__0_i_1_n_0 ,\Sum6_add_temp[0]_carry__0_i_2_n_0 ,\Sum6_add_temp[0]_carry__0_i_3_n_0 ,\Sum6_add_temp[0]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__0_i_1 
       (.I0(\Sum6_add_cast[0] [7]),
        .I1(\Gain8_out1[0] [7]),
        .O(\Sum6_add_temp[0]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__0_i_2 
       (.I0(\Sum6_add_cast[0] [6]),
        .I1(\Gain8_out1[0] [6]),
        .O(\Sum6_add_temp[0]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__0_i_3 
       (.I0(\Sum6_add_cast[0] [5]),
        .I1(\Gain8_out1[0] [5]),
        .O(\Sum6_add_temp[0]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__0_i_4 
       (.I0(\Sum6_add_cast[0] [4]),
        .I1(\Gain8_out1[0] [4]),
        .O(\Sum6_add_temp[0]_carry__0_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[0]_carry__1 
       (.CI(\Sum6_add_temp[0]_carry__0_n_0 ),
        .CO({\Sum6_add_temp[0]_carry__1_n_0 ,\Sum6_add_temp[0]_carry__1_n_1 ,\Sum6_add_temp[0]_carry__1_n_2 ,\Sum6_add_temp[0]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Gain8_out1[0] [10:8],\Sum6_add_temp[0]_carry__1_i_1_n_0 }),
        .O(\Sum6_add_temp[0] [11:8]),
        .S({\Sum6_add_temp[0]_carry__1_i_2_n_0 ,\Sum6_add_temp[0]_carry__1_i_3_n_0 ,\Sum6_add_temp[0]_carry__1_i_4_n_0 ,\Sum6_add_temp[0]_carry__1_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \Sum6_add_temp[0]_carry__1_i_1 
       (.I0(\Gain8_out1[0] [8]),
        .O(\Sum6_add_temp[0]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__1_i_2 
       (.I0(\Gain8_out1[0] [10]),
        .I1(Gain8_0_0_carry__1_n_0),
        .O(\Sum6_add_temp[0]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum6_add_temp[0]_carry__1_i_3 
       (.I0(\Gain8_out1[0] [9]),
        .I1(\Gain8_out1[0] [10]),
        .O(\Sum6_add_temp[0]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum6_add_temp[0]_carry__1_i_4 
       (.I0(\Gain8_out1[0] [8]),
        .I1(\Gain8_out1[0] [9]),
        .O(\Sum6_add_temp[0]_carry__1_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry__1_i_5 
       (.I0(\Gain8_out1[0] [8]),
        .I1(\Sum6_add_cast[0] [8]),
        .O(\Sum6_add_temp[0]_carry__1_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry_i_1 
       (.I0(\Sum6_add_cast[0] [3]),
        .I1(\Gain8_out1[0] [3]),
        .O(\Sum6_add_temp[0]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry_i_2 
       (.I0(\Sum6_add_cast[0] [2]),
        .I1(\Gain8_out1[0] [2]),
        .O(\Sum6_add_temp[0]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry_i_3 
       (.I0(\Sum6_add_cast[0] [1]),
        .I1(\Gain8_out1[0] [1]),
        .O(\Sum6_add_temp[0]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[0]_carry_i_4 
       (.I0(\Sum6_add_cast[0] [0]),
        .I1(\Gain8_out1[0] [0]),
        .O(\Sum6_add_temp[0]_carry_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[1]_carry 
       (.CI(1'b0),
        .CO({\Sum6_add_temp[1]_carry_n_0 ,\Sum6_add_temp[1]_carry_n_1 ,\Sum6_add_temp[1]_carry_n_2 ,\Sum6_add_temp[1]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[1] [3:0]),
        .O(\Sum6_add_temp[1] [3:0]),
        .S({\Sum6_add_temp[1]_carry_i_1_n_0 ,\Sum6_add_temp[1]_carry_i_2_n_0 ,\Sum6_add_temp[1]_carry_i_3_n_0 ,\Sum6_add_temp[1]_carry_i_4_n_0 }));
  CARRY4 \Sum6_add_temp[1]_carry__0 
       (.CI(\Sum6_add_temp[1]_carry_n_0 ),
        .CO({\Sum6_add_temp[1]_carry__0_n_0 ,\Sum6_add_temp[1]_carry__0_n_1 ,\Sum6_add_temp[1]_carry__0_n_2 ,\Sum6_add_temp[1]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[1] [7:4]),
        .O(\Sum6_add_temp[1] [7:4]),
        .S({\Sum6_add_temp[1]_carry__0_i_1_n_0 ,\Sum6_add_temp[1]_carry__0_i_2_n_0 ,\Sum6_add_temp[1]_carry__0_i_3_n_0 ,\Sum6_add_temp[1]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__0_i_1 
       (.I0(\Sum6_add_cast[1] [7]),
        .I1(\Gain8_out1[1] [7]),
        .O(\Sum6_add_temp[1]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__0_i_2 
       (.I0(\Sum6_add_cast[1] [6]),
        .I1(\Gain8_out1[1] [6]),
        .O(\Sum6_add_temp[1]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__0_i_3 
       (.I0(\Sum6_add_cast[1] [5]),
        .I1(\Gain8_out1[1] [5]),
        .O(\Sum6_add_temp[1]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__0_i_4 
       (.I0(\Sum6_add_cast[1] [4]),
        .I1(\Gain8_out1[1] [4]),
        .O(\Sum6_add_temp[1]_carry__0_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[1]_carry__1 
       (.CI(\Sum6_add_temp[1]_carry__0_n_0 ),
        .CO({\Sum6_add_temp[1]_carry__1_n_0 ,\Sum6_add_temp[1]_carry__1_n_1 ,\Sum6_add_temp[1]_carry__1_n_2 ,\Sum6_add_temp[1]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[1] [11:8]),
        .O(\Sum6_add_temp[1] [11:8]),
        .S({\Sum6_add_temp[1]_carry__1_i_1_n_0 ,\Sum6_add_temp[1]_carry__1_i_2_n_0 ,\Sum6_add_temp[1]_carry__1_i_3_n_0 ,\Sum6_add_temp[1]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__1_i_1 
       (.I0(\Sum6_add_cast[1] [11]),
        .I1(\Gain8_out1[1] [11]),
        .O(\Sum6_add_temp[1]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__1_i_2 
       (.I0(\Sum6_add_cast[1] [10]),
        .I1(\Gain8_out1[1] [10]),
        .O(\Sum6_add_temp[1]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__1_i_3 
       (.I0(\Sum6_add_cast[1] [9]),
        .I1(\Gain8_out1[1] [9]),
        .O(\Sum6_add_temp[1]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__1_i_4 
       (.I0(\Sum6_add_cast[1] [8]),
        .I1(\Gain8_out1[1] [8]),
        .O(\Sum6_add_temp[1]_carry__1_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[1]_carry__2 
       (.CI(\Sum6_add_temp[1]_carry__1_n_0 ),
        .CO({\NLW_Sum6_add_temp[1]_carry__2_CO_UNCONNECTED [3:2],\Sum6_add_temp[1]_carry__2_n_2 ,\Sum6_add_temp[1]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Sum6_add_cast[1] [13:12]}),
        .O({\NLW_Sum6_add_temp[1]_carry__2_O_UNCONNECTED [3],\Sum6_add_temp[1] [14:12]}),
        .S({1'b0,\Sum6_add_temp[1]_carry__2_i_1_n_0 ,\Sum6_add_temp[1]_carry__2_i_2_n_0 ,\Sum6_add_temp[1]_carry__2_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__2_i_1 
       (.I0(\Sum6_add_cast[1] [14]),
        .I1(\Gain8_out1[1] [14]),
        .O(\Sum6_add_temp[1]_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__2_i_2 
       (.I0(\Sum6_add_cast[1] [13]),
        .I1(\Gain8_out1[1] [13]),
        .O(\Sum6_add_temp[1]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry__2_i_3 
       (.I0(\Sum6_add_cast[1] [12]),
        .I1(\Gain8_out1[1] [12]),
        .O(\Sum6_add_temp[1]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry_i_1 
       (.I0(\Sum6_add_cast[1] [3]),
        .I1(\Gain8_out1[1] [3]),
        .O(\Sum6_add_temp[1]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry_i_2 
       (.I0(\Sum6_add_cast[1] [2]),
        .I1(\Gain8_out1[1] [2]),
        .O(\Sum6_add_temp[1]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry_i_3 
       (.I0(\Sum6_add_cast[1] [1]),
        .I1(\Gain8_out1[1] [1]),
        .O(\Sum6_add_temp[1]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[1]_carry_i_4 
       (.I0(\Sum6_add_cast[1] [0]),
        .I1(\Gain8_out1[1] [0]),
        .O(\Sum6_add_temp[1]_carry_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[2]_carry 
       (.CI(1'b0),
        .CO({\Sum6_add_temp[2]_carry_n_0 ,\Sum6_add_temp[2]_carry_n_1 ,\Sum6_add_temp[2]_carry_n_2 ,\Sum6_add_temp[2]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[2] [3:0]),
        .O(\Sum6_add_temp[2] [3:0]),
        .S({\Sum6_add_temp[2]_carry_i_1_n_0 ,\Sum6_add_temp[2]_carry_i_2_n_0 ,\Sum6_add_temp[2]_carry_i_3_n_0 ,\Sum6_add_temp[2]_carry_i_4_n_0 }));
  CARRY4 \Sum6_add_temp[2]_carry__0 
       (.CI(\Sum6_add_temp[2]_carry_n_0 ),
        .CO({\Sum6_add_temp[2]_carry__0_n_0 ,\Sum6_add_temp[2]_carry__0_n_1 ,\Sum6_add_temp[2]_carry__0_n_2 ,\Sum6_add_temp[2]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[2] [7:4]),
        .O(\Sum6_add_temp[2] [7:4]),
        .S({\Sum6_add_temp[2]_carry__0_i_1_n_0 ,\Sum6_add_temp[2]_carry__0_i_2_n_0 ,\Sum6_add_temp[2]_carry__0_i_3_n_0 ,\Sum6_add_temp[2]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__0_i_1 
       (.I0(\Sum6_add_cast[2] [7]),
        .I1(\Gain8_out1[2] [7]),
        .O(\Sum6_add_temp[2]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__0_i_2 
       (.I0(\Sum6_add_cast[2] [6]),
        .I1(\Gain8_out1[2] [6]),
        .O(\Sum6_add_temp[2]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__0_i_3 
       (.I0(\Sum6_add_cast[2] [5]),
        .I1(\Gain8_out1[2] [5]),
        .O(\Sum6_add_temp[2]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__0_i_4 
       (.I0(\Sum6_add_cast[2] [4]),
        .I1(\Gain8_out1[2] [4]),
        .O(\Sum6_add_temp[2]_carry__0_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[2]_carry__1 
       (.CI(\Sum6_add_temp[2]_carry__0_n_0 ),
        .CO({\Sum6_add_temp[2]_carry__1_n_0 ,\Sum6_add_temp[2]_carry__1_n_1 ,\Sum6_add_temp[2]_carry__1_n_2 ,\Sum6_add_temp[2]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Gain8_out1[2] [10:9],\Sum6_add_temp[2]_carry__1_i_1_n_0 ,\Sum6_add_cast[2] [8]}),
        .O(\Sum6_add_temp[2] [11:8]),
        .S({\Sum6_add_temp[2]_carry__1_i_2_n_0 ,\Sum6_add_temp[2]_carry__1_i_3_n_0 ,\Sum6_add_temp[2]_carry__1_i_4_n_0 ,\Sum6_add_temp[2]_carry__1_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \Sum6_add_temp[2]_carry__1_i_1 
       (.I0(\Gain8_out1[2] [9]),
        .O(\Sum6_add_temp[2]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__1_i_2 
       (.I0(\Gain8_out1[2] [10]),
        .I1(Gain8_2_0_carry__1_n_0),
        .O(\Sum6_add_temp[2]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Sum6_add_temp[2]_carry__1_i_3 
       (.I0(\Gain8_out1[2] [9]),
        .I1(\Gain8_out1[2] [10]),
        .O(\Sum6_add_temp[2]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__1_i_4 
       (.I0(\Gain8_out1[2] [9]),
        .I1(\Sum6_add_cast[2] [9]),
        .O(\Sum6_add_temp[2]_carry__1_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry__1_i_5 
       (.I0(\Sum6_add_cast[2] [8]),
        .I1(\Gain8_out1[2] [8]),
        .O(\Sum6_add_temp[2]_carry__1_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry_i_1 
       (.I0(\Sum6_add_cast[2] [3]),
        .I1(\Gain8_out1[2] [3]),
        .O(\Sum6_add_temp[2]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry_i_2 
       (.I0(\Sum6_add_cast[2] [2]),
        .I1(\Gain8_out1[2] [2]),
        .O(\Sum6_add_temp[2]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry_i_3 
       (.I0(\Sum6_add_cast[2] [1]),
        .I1(\Gain8_out1[2] [1]),
        .O(\Sum6_add_temp[2]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[2]_carry_i_4 
       (.I0(\Sum6_add_cast[2] [0]),
        .I1(\Gain8_out1[2] [0]),
        .O(\Sum6_add_temp[2]_carry_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[3]_carry 
       (.CI(1'b0),
        .CO({\Sum6_add_temp[3]_carry_n_0 ,\Sum6_add_temp[3]_carry_n_1 ,\Sum6_add_temp[3]_carry_n_2 ,\Sum6_add_temp[3]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[3] [3:0]),
        .O(\Sum6_add_temp[3] [3:0]),
        .S({\Sum6_add_temp[3]_carry_i_1_n_0 ,\Sum6_add_temp[3]_carry_i_2_n_0 ,\Sum6_add_temp[3]_carry_i_3_n_0 ,\Sum6_add_temp[3]_carry_i_4_n_0 }));
  CARRY4 \Sum6_add_temp[3]_carry__0 
       (.CI(\Sum6_add_temp[3]_carry_n_0 ),
        .CO({\Sum6_add_temp[3]_carry__0_n_0 ,\Sum6_add_temp[3]_carry__0_n_1 ,\Sum6_add_temp[3]_carry__0_n_2 ,\Sum6_add_temp[3]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[3] [7:4]),
        .O(\Sum6_add_temp[3] [7:4]),
        .S({\Sum6_add_temp[3]_carry__0_i_1_n_0 ,\Sum6_add_temp[3]_carry__0_i_2_n_0 ,\Sum6_add_temp[3]_carry__0_i_3_n_0 ,\Sum6_add_temp[3]_carry__0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__0_i_1 
       (.I0(\Sum6_add_cast[3] [7]),
        .I1(\Gain8_out1[3] [7]),
        .O(\Sum6_add_temp[3]_carry__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__0_i_2 
       (.I0(\Sum6_add_cast[3] [6]),
        .I1(\Gain8_out1[3] [6]),
        .O(\Sum6_add_temp[3]_carry__0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__0_i_3 
       (.I0(\Sum6_add_cast[3] [5]),
        .I1(\Gain8_out1[3] [5]),
        .O(\Sum6_add_temp[3]_carry__0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__0_i_4 
       (.I0(\Sum6_add_cast[3] [4]),
        .I1(\Gain8_out1[3] [4]),
        .O(\Sum6_add_temp[3]_carry__0_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[3]_carry__1 
       (.CI(\Sum6_add_temp[3]_carry__0_n_0 ),
        .CO({\Sum6_add_temp[3]_carry__1_n_0 ,\Sum6_add_temp[3]_carry__1_n_1 ,\Sum6_add_temp[3]_carry__1_n_2 ,\Sum6_add_temp[3]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Sum6_add_cast[3] [11:8]),
        .O(\Sum6_add_temp[3] [11:8]),
        .S({\Sum6_add_temp[3]_carry__1_i_1_n_0 ,\Sum6_add_temp[3]_carry__1_i_2_n_0 ,\Sum6_add_temp[3]_carry__1_i_3_n_0 ,\Sum6_add_temp[3]_carry__1_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__1_i_1 
       (.I0(\Sum6_add_cast[3] [11]),
        .I1(\Gain8_out1[3] [11]),
        .O(\Sum6_add_temp[3]_carry__1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__1_i_2 
       (.I0(\Sum6_add_cast[3] [10]),
        .I1(\Gain8_out1[3] [10]),
        .O(\Sum6_add_temp[3]_carry__1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__1_i_3 
       (.I0(\Sum6_add_cast[3] [9]),
        .I1(\Gain8_out1[3] [9]),
        .O(\Sum6_add_temp[3]_carry__1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__1_i_4 
       (.I0(\Sum6_add_cast[3] [8]),
        .I1(\Gain8_out1[3] [8]),
        .O(\Sum6_add_temp[3]_carry__1_i_4_n_0 ));
  CARRY4 \Sum6_add_temp[3]_carry__2 
       (.CI(\Sum6_add_temp[3]_carry__1_n_0 ),
        .CO({\NLW_Sum6_add_temp[3]_carry__2_CO_UNCONNECTED [3:2],\Sum6_add_temp[3]_carry__2_n_2 ,\Sum6_add_temp[3]_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Sum6_add_cast[3] [13:12]}),
        .O({\NLW_Sum6_add_temp[3]_carry__2_O_UNCONNECTED [3],\Sum6_add_temp[3] [14:12]}),
        .S({1'b0,\Sum6_add_temp[3]_carry__2_i_1_n_0 ,\Sum6_add_temp[3]_carry__2_i_2_n_0 ,\Sum6_add_temp[3]_carry__2_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__2_i_1 
       (.I0(\Sum6_add_cast[3] [14]),
        .I1(\Gain8_out1[3] [14]),
        .O(\Sum6_add_temp[3]_carry__2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__2_i_2 
       (.I0(\Sum6_add_cast[3] [13]),
        .I1(\Gain8_out1[3] [13]),
        .O(\Sum6_add_temp[3]_carry__2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry__2_i_3 
       (.I0(\Sum6_add_cast[3] [12]),
        .I1(\Gain8_out1[3] [12]),
        .O(\Sum6_add_temp[3]_carry__2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry_i_1 
       (.I0(\Sum6_add_cast[3] [3]),
        .I1(\Gain8_out1[3] [3]),
        .O(\Sum6_add_temp[3]_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry_i_2 
       (.I0(\Sum6_add_cast[3] [2]),
        .I1(\Gain8_out1[3] [2]),
        .O(\Sum6_add_temp[3]_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry_i_3 
       (.I0(\Sum6_add_cast[3] [1]),
        .I1(\Gain8_out1[3] [1]),
        .O(\Sum6_add_temp[3]_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Sum6_add_temp[3]_carry_i_4 
       (.I0(\Sum6_add_cast[3] [0]),
        .I1(\Gain8_out1[3] [0]),
        .O(\Sum6_add_temp[3]_carry_i_4_n_0 ));
  CARRY4 Sum_sub_temp_carry
       (.CI(1'b0),
        .CO({Sum_sub_temp_carry_n_0,Sum_sub_temp_carry_n_1,Sum_sub_temp_carry_n_2,Sum_sub_temp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(angle[3:0]),
        .O(NLW_Sum_sub_temp_carry_O_UNCONNECTED[3:0]),
        .S({Sum_sub_temp_carry_i_1_n_0,Sum_sub_temp_carry_i_2_n_0,Sum_sub_temp_carry_i_3_n_0,Sum_sub_temp_carry_i_4_n_0}));
  CARRY4 Sum_sub_temp_carry__0
       (.CI(Sum_sub_temp_carry_n_0),
        .CO({Sum_sub_temp_carry__0_n_0,Sum_sub_temp_carry__0_n_1,Sum_sub_temp_carry__0_n_2,Sum_sub_temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(angle[7:4]),
        .O(NLW_Sum_sub_temp_carry__0_O_UNCONNECTED[3:0]),
        .S({Sum_sub_temp_carry__0_i_1_n_0,Sum_sub_temp_carry__0_i_2_n_0,Sum_sub_temp_carry__0_i_3_n_0,Sum_sub_temp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__0_i_1
       (.I0(angle[7]),
        .I1(desired_angle[7]),
        .O(Sum_sub_temp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__0_i_2
       (.I0(angle[6]),
        .I1(desired_angle[6]),
        .O(Sum_sub_temp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__0_i_3
       (.I0(angle[5]),
        .I1(desired_angle[5]),
        .O(Sum_sub_temp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__0_i_4
       (.I0(angle[4]),
        .I1(desired_angle[4]),
        .O(Sum_sub_temp_carry__0_i_4_n_0));
  CARRY4 Sum_sub_temp_carry__1
       (.CI(Sum_sub_temp_carry__0_n_0),
        .CO({Sum_sub_temp_carry__1_n_0,Sum_sub_temp_carry__1_n_1,Sum_sub_temp_carry__1_n_2,Sum_sub_temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(angle[11:8]),
        .O({Sum_sub_temp[11:10],NLW_Sum_sub_temp_carry__1_O_UNCONNECTED[1:0]}),
        .S({Sum_sub_temp_carry__1_i_1_n_0,Sum_sub_temp_carry__1_i_2_n_0,Sum_sub_temp_carry__1_i_3_n_0,Sum_sub_temp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__1_i_1
       (.I0(angle[11]),
        .I1(desired_angle[11]),
        .O(Sum_sub_temp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__1_i_2
       (.I0(angle[10]),
        .I1(desired_angle[10]),
        .O(Sum_sub_temp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__1_i_3
       (.I0(angle[9]),
        .I1(desired_angle[9]),
        .O(Sum_sub_temp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__1_i_4
       (.I0(angle[8]),
        .I1(desired_angle[8]),
        .O(Sum_sub_temp_carry__1_i_4_n_0));
  CARRY4 Sum_sub_temp_carry__2
       (.CI(Sum_sub_temp_carry__1_n_0),
        .CO({NLW_Sum_sub_temp_carry__2_CO_UNCONNECTED[3:2],Sum_sub_temp_carry__2_n_2,Sum_sub_temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,angle[13:12]}),
        .O({NLW_Sum_sub_temp_carry__2_O_UNCONNECTED[3],Sum_sub_temp[14:12]}),
        .S({1'b0,Sum_sub_temp_carry__2_i_1_n_0,Sum_sub_temp_carry__2_i_2_n_0,Sum_sub_temp_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__2_i_1
       (.I0(angle[14]),
        .I1(desired_angle[14]),
        .O(Sum_sub_temp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__2_i_2
       (.I0(angle[13]),
        .I1(desired_angle[13]),
        .O(Sum_sub_temp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry__2_i_3
       (.I0(angle[12]),
        .I1(desired_angle[12]),
        .O(Sum_sub_temp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry_i_1
       (.I0(angle[3]),
        .I1(desired_angle[3]),
        .O(Sum_sub_temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry_i_2
       (.I0(angle[2]),
        .I1(desired_angle[2]),
        .O(Sum_sub_temp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry_i_3
       (.I0(angle[1]),
        .I1(desired_angle[1]),
        .O(Sum_sub_temp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Sum_sub_temp_carry_i_4
       (.I0(angle[0]),
        .I1(desired_angle[0]),
        .O(Sum_sub_temp_carry_i_4_n_0));
  FDCE \Unit_Delay2_out1_reg[0][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [0]),
        .Q(\Unit_Delay2_out1_reg[0] [0]));
  FDCE \Unit_Delay2_out1_reg[0][10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [10]),
        .Q(\Unit_Delay2_out1_reg[0] [10]));
  FDCE \Unit_Delay2_out1_reg[0][11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [11]),
        .Q(\Unit_Delay2_out1_reg[0] [11]));
  FDCE \Unit_Delay2_out1_reg[0][12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [12]),
        .Q(\Unit_Delay2_out1_reg[0] [12]));
  FDCE \Unit_Delay2_out1_reg[0][13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [13]),
        .Q(\Unit_Delay2_out1_reg[0] [13]));
  FDCE \Unit_Delay2_out1_reg[0][14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [14]),
        .Q(\Unit_Delay2_out1_reg[0] [14]));
  FDCE \Unit_Delay2_out1_reg[0][15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [15]),
        .Q(\Unit_Delay2_out1_reg[0] [15]));
  FDCE \Unit_Delay2_out1_reg[0][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [1]),
        .Q(\Unit_Delay2_out1_reg[0] [1]));
  FDCE \Unit_Delay2_out1_reg[0][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [2]),
        .Q(\Unit_Delay2_out1_reg[0] [2]));
  FDCE \Unit_Delay2_out1_reg[0][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [3]),
        .Q(\Unit_Delay2_out1_reg[0] [3]));
  FDCE \Unit_Delay2_out1_reg[0][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [4]),
        .Q(\Unit_Delay2_out1_reg[0] [4]));
  FDCE \Unit_Delay2_out1_reg[0][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [5]),
        .Q(\Unit_Delay2_out1_reg[0] [5]));
  FDCE \Unit_Delay2_out1_reg[0][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [6]),
        .Q(\Unit_Delay2_out1_reg[0] [6]));
  FDCE \Unit_Delay2_out1_reg[0][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [7]),
        .Q(\Unit_Delay2_out1_reg[0] [7]));
  FDCE \Unit_Delay2_out1_reg[0][8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [8]),
        .Q(\Unit_Delay2_out1_reg[0] [8]));
  FDCE \Unit_Delay2_out1_reg[0][9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[0] [9]),
        .Q(\Unit_Delay2_out1_reg[0] [9]));
  FDCE \Unit_Delay2_out1_reg[1][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [0]),
        .Q(\Unit_Delay2_out1_reg[1] [0]));
  FDCE \Unit_Delay2_out1_reg[1][10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [10]),
        .Q(\Unit_Delay2_out1_reg[1] [10]));
  FDCE \Unit_Delay2_out1_reg[1][11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [11]),
        .Q(\Unit_Delay2_out1_reg[1] [11]));
  FDCE \Unit_Delay2_out1_reg[1][12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [12]),
        .Q(\Unit_Delay2_out1_reg[1] [12]));
  FDCE \Unit_Delay2_out1_reg[1][13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [13]),
        .Q(\Unit_Delay2_out1_reg[1] [13]));
  FDCE \Unit_Delay2_out1_reg[1][14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [14]),
        .Q(\Unit_Delay2_out1_reg[1] [14]));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep__0 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep__1 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep__2 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep__3 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[1][15]" *) 
  FDCE \Unit_Delay2_out1_reg[1][15]_rep__4 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [15]),
        .Q(\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ));
  FDCE \Unit_Delay2_out1_reg[1][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [1]),
        .Q(\Unit_Delay2_out1_reg[1] [1]));
  FDCE \Unit_Delay2_out1_reg[1][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [2]),
        .Q(\Unit_Delay2_out1_reg[1] [2]));
  FDCE \Unit_Delay2_out1_reg[1][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [3]),
        .Q(\Unit_Delay2_out1_reg[1] [3]));
  FDCE \Unit_Delay2_out1_reg[1][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [4]),
        .Q(\Unit_Delay2_out1_reg[1] [4]));
  FDCE \Unit_Delay2_out1_reg[1][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [5]),
        .Q(\Unit_Delay2_out1_reg[1] [5]));
  FDCE \Unit_Delay2_out1_reg[1][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [6]),
        .Q(\Unit_Delay2_out1_reg[1] [6]));
  FDCE \Unit_Delay2_out1_reg[1][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [7]),
        .Q(\Unit_Delay2_out1_reg[1] [7]));
  FDCE \Unit_Delay2_out1_reg[1][8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [8]),
        .Q(\Unit_Delay2_out1_reg[1] [8]));
  FDCE \Unit_Delay2_out1_reg[1][9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[1] [9]),
        .Q(\Unit_Delay2_out1_reg[1] [9]));
  FDCE \Unit_Delay2_out1_reg[2][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [0]),
        .Q(\Unit_Delay2_out1_reg[2] [0]));
  FDCE \Unit_Delay2_out1_reg[2][10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [10]),
        .Q(\Unit_Delay2_out1_reg[2] [10]));
  FDCE \Unit_Delay2_out1_reg[2][11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [11]),
        .Q(\Unit_Delay2_out1_reg[2] [11]));
  FDCE \Unit_Delay2_out1_reg[2][12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [12]),
        .Q(\Unit_Delay2_out1_reg[2] [12]));
  FDCE \Unit_Delay2_out1_reg[2][13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [13]),
        .Q(\Unit_Delay2_out1_reg[2] [13]));
  FDCE \Unit_Delay2_out1_reg[2][14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [14]),
        .Q(\Unit_Delay2_out1_reg[2] [14]));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2] [15]));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15]_rep 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2][15]_rep_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15]_rep__0 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15]_rep__1 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15]_rep__2 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[2][15]" *) 
  FDCE \Unit_Delay2_out1_reg[2][15]_rep__3 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [15]),
        .Q(\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ));
  FDCE \Unit_Delay2_out1_reg[2][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [1]),
        .Q(\Unit_Delay2_out1_reg[2] [1]));
  FDCE \Unit_Delay2_out1_reg[2][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [2]),
        .Q(\Unit_Delay2_out1_reg[2] [2]));
  FDCE \Unit_Delay2_out1_reg[2][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [3]),
        .Q(\Unit_Delay2_out1_reg[2] [3]));
  FDCE \Unit_Delay2_out1_reg[2][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [4]),
        .Q(\Unit_Delay2_out1_reg[2] [4]));
  FDCE \Unit_Delay2_out1_reg[2][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [5]),
        .Q(\Unit_Delay2_out1_reg[2] [5]));
  FDCE \Unit_Delay2_out1_reg[2][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [6]),
        .Q(\Unit_Delay2_out1_reg[2] [6]));
  FDCE \Unit_Delay2_out1_reg[2][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [7]),
        .Q(\Unit_Delay2_out1_reg[2] [7]));
  FDCE \Unit_Delay2_out1_reg[2][8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [8]),
        .Q(\Unit_Delay2_out1_reg[2] [8]));
  FDCE \Unit_Delay2_out1_reg[2][9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[2] [9]),
        .Q(\Unit_Delay2_out1_reg[2] [9]));
  FDCE \Unit_Delay2_out1_reg[3][0] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [0]),
        .Q(\Unit_Delay2_out1_reg[3] [0]));
  FDCE \Unit_Delay2_out1_reg[3][10] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [10]),
        .Q(\Unit_Delay2_out1_reg[3] [10]));
  FDCE \Unit_Delay2_out1_reg[3][11] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [11]),
        .Q(\Unit_Delay2_out1_reg[3] [11]));
  FDCE \Unit_Delay2_out1_reg[3][12] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [12]),
        .Q(\Unit_Delay2_out1_reg[3] [12]));
  FDCE \Unit_Delay2_out1_reg[3][13] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [13]),
        .Q(\Unit_Delay2_out1_reg[3] [13]));
  FDCE \Unit_Delay2_out1_reg[3][14] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [14]),
        .Q(\Unit_Delay2_out1_reg[3] [14]));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3] [15]));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15]_rep 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3][15]_rep_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15]_rep__0 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15]_rep__1 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15]_rep__2 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ));
  (* ORIG_CELL_NAME = "Unit_Delay2_out1_reg[3][15]" *) 
  FDCE \Unit_Delay2_out1_reg[3][15]_rep__3 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [15]),
        .Q(\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ));
  FDCE \Unit_Delay2_out1_reg[3][1] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [1]),
        .Q(\Unit_Delay2_out1_reg[3] [1]));
  FDCE \Unit_Delay2_out1_reg[3][2] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [2]),
        .Q(\Unit_Delay2_out1_reg[3] [2]));
  FDCE \Unit_Delay2_out1_reg[3][3] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [3]),
        .Q(\Unit_Delay2_out1_reg[3] [3]));
  FDCE \Unit_Delay2_out1_reg[3][4] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [4]),
        .Q(\Unit_Delay2_out1_reg[3] [4]));
  FDCE \Unit_Delay2_out1_reg[3][5] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [5]),
        .Q(\Unit_Delay2_out1_reg[3] [5]));
  FDCE \Unit_Delay2_out1_reg[3][6] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [6]),
        .Q(\Unit_Delay2_out1_reg[3] [6]));
  FDCE \Unit_Delay2_out1_reg[3][7] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [7]),
        .Q(\Unit_Delay2_out1_reg[3] [7]));
  FDCE \Unit_Delay2_out1_reg[3][8] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [8]),
        .Q(\Unit_Delay2_out1_reg[3] [8]));
  FDCE \Unit_Delay2_out1_reg[3][9] 
       (.C(IPCORE_CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\Sum4_out1[3] [9]),
        .Q(\Unit_Delay2_out1_reg[3] [9]));
  CARRY4 dtc_out_62_carry
       (.CI(1'b0),
        .CO({dtc_out_62_carry_n_0,dtc_out_62_carry_n_1,dtc_out_62_carry_n_2,dtc_out_62_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_dtc_out_62_carry_O_UNCONNECTED[3:0]),
        .S({dtc_out_62_carry_i_1_n_0,dtc_out_62_carry_i_2_n_0,dtc_out_62_carry_i_3_n_0,dtc_out_62_carry_i_4_n_0}));
  CARRY4 dtc_out_62_carry__0
       (.CI(dtc_out_62_carry_n_0),
        .CO({NLW_dtc_out_62_carry__0_CO_UNCONNECTED[3:1],dtc_out_62}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_dtc_out_62_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,dtc_out_62_carry__0_i_1_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    dtc_out_62_carry__0_i_1
       (.I0(A[14]),
        .I1(A[13]),
        .I2(A[12]),
        .O(dtc_out_62_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    dtc_out_62_carry_i_1
       (.I0(A[11]),
        .I1(A[10]),
        .I2(A[9]),
        .O(dtc_out_62_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    dtc_out_62_carry_i_2
       (.I0(A[8]),
        .I1(A[7]),
        .I2(A[6]),
        .O(dtc_out_62_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    dtc_out_62_carry_i_3
       (.I0(A[5]),
        .I1(A[4]),
        .I2(A[3]),
        .O(dtc_out_62_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    dtc_out_62_carry_i_4
       (.I0(A[2]),
        .I1(A[1]),
        .I2(A[0]),
        .O(dtc_out_62_carry_i_4_n_0));
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
    mul_Gain6_dotp_1_mul_temp
       (.A({\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_1_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_1_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_1_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_1_mul_temp_P_UNCONNECTED[47:24],tmp_Gain6_dotp_10,mul_Gain6_dotp_1_mul_temp_n_83,mul_Gain6_dotp_1_mul_temp_n_84,mul_Gain6_dotp_1_mul_temp_n_85,mul_Gain6_dotp_1_mul_temp_n_86,mul_Gain6_dotp_1_mul_temp_n_87,mul_Gain6_dotp_1_mul_temp_n_88,mul_Gain6_dotp_1_mul_temp_n_89,mul_Gain6_dotp_1_mul_temp_n_90,mul_Gain6_dotp_1_mul_temp_n_91,mul_Gain6_dotp_1_mul_temp_n_92,mul_Gain6_dotp_1_mul_temp_n_93,mul_Gain6_dotp_1_mul_temp_n_94,mul_Gain6_dotp_1_mul_temp_n_95,mul_Gain6_dotp_1_mul_temp_n_96,mul_Gain6_dotp_1_mul_temp_n_97,mul_Gain6_dotp_1_mul_temp_n_98,mul_Gain6_dotp_1_mul_temp_n_99,mul_Gain6_dotp_1_mul_temp_n_100,mul_Gain6_dotp_1_mul_temp_n_101,mul_Gain6_dotp_1_mul_temp_n_102,mul_Gain6_dotp_1_mul_temp_n_103,mul_Gain6_dotp_1_mul_temp_n_104,mul_Gain6_dotp_1_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_1_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_1_mul_temp_2
       (.A({\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__4_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_1_mul_temp_2_P_UNCONNECTED[47:31],mul_Gain6_dotp_1_mul_temp_2_n_75,tmp_Gain6_dotp_1_2,mul_Gain6_dotp_1_mul_temp_2_n_92,mul_Gain6_dotp_1_mul_temp_2_n_93,mul_Gain6_dotp_1_mul_temp_2_n_94,mul_Gain6_dotp_1_mul_temp_2_n_95,mul_Gain6_dotp_1_mul_temp_2_n_96,mul_Gain6_dotp_1_mul_temp_2_n_97,mul_Gain6_dotp_1_mul_temp_2_n_98,mul_Gain6_dotp_1_mul_temp_2_n_99,mul_Gain6_dotp_1_mul_temp_2_n_100,mul_Gain6_dotp_1_mul_temp_2_n_101,mul_Gain6_dotp_1_mul_temp_2_n_102,mul_Gain6_dotp_1_mul_temp_2_n_103,mul_Gain6_dotp_1_mul_temp_2_n_104,mul_Gain6_dotp_1_mul_temp_2_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_1_mul_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_1_mul_temp_3
       (.A({\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_3_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_1_mul_temp_3_P_UNCONNECTED[47:25],tmp_Gain6_dotp_1_3,mul_Gain6_dotp_1_mul_temp_3_n_92,mul_Gain6_dotp_1_mul_temp_3_n_93,mul_Gain6_dotp_1_mul_temp_3_n_94,mul_Gain6_dotp_1_mul_temp_3_n_95,mul_Gain6_dotp_1_mul_temp_3_n_96,mul_Gain6_dotp_1_mul_temp_3_n_97,mul_Gain6_dotp_1_mul_temp_3_n_98,mul_Gain6_dotp_1_mul_temp_3_n_99,mul_Gain6_dotp_1_mul_temp_3_n_100,mul_Gain6_dotp_1_mul_temp_3_n_101,mul_Gain6_dotp_1_mul_temp_3_n_102,mul_Gain6_dotp_1_mul_temp_3_n_103,mul_Gain6_dotp_1_mul_temp_3_n_104,mul_Gain6_dotp_1_mul_temp_3_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_1_mul_temp_3_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_1_mul_temp_3_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_2_mul_temp
       (.A({\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep_n_0 ,\Unit_Delay2_out1_reg[2] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_2_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_2_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_2_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_2_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_2_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_2_mul_temp_P_UNCONNECTED[47:30],tmp_Gain6_dotp_2,mul_Gain6_dotp_2_mul_temp_n_92,mul_Gain6_dotp_2_mul_temp_n_93,mul_Gain6_dotp_2_mul_temp_n_94,mul_Gain6_dotp_2_mul_temp_n_95,mul_Gain6_dotp_2_mul_temp_n_96,mul_Gain6_dotp_2_mul_temp_n_97,mul_Gain6_dotp_2_mul_temp_n_98,mul_Gain6_dotp_2_mul_temp_n_99,mul_Gain6_dotp_2_mul_temp_n_100,mul_Gain6_dotp_2_mul_temp_n_101,mul_Gain6_dotp_2_mul_temp_n_102,mul_Gain6_dotp_2_mul_temp_n_103,mul_Gain6_dotp_2_mul_temp_n_104,mul_Gain6_dotp_2_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_2_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_2_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_2_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_2_mul_temp_1
       (.A({\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_2_mul_temp_1_P_UNCONNECTED[47:32],mul_Gain6_dotp_2_mul_temp_1_n_74,mul_Gain6_dotp_2_mul_temp_1_n_75,tmp_Gain6_dotp_2_1,mul_Gain6_dotp_2_mul_temp_1_n_92,mul_Gain6_dotp_2_mul_temp_1_n_93,mul_Gain6_dotp_2_mul_temp_1_n_94,mul_Gain6_dotp_2_mul_temp_1_n_95,mul_Gain6_dotp_2_mul_temp_1_n_96,mul_Gain6_dotp_2_mul_temp_1_n_97,mul_Gain6_dotp_2_mul_temp_1_n_98,mul_Gain6_dotp_2_mul_temp_1_n_99,mul_Gain6_dotp_2_mul_temp_1_n_100,mul_Gain6_dotp_2_mul_temp_1_n_101,mul_Gain6_dotp_2_mul_temp_1_n_102,mul_Gain6_dotp_2_mul_temp_1_n_103,mul_Gain6_dotp_2_mul_temp_1_n_104,mul_Gain6_dotp_2_mul_temp_1_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_2_mul_temp_1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_1_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_2_mul_temp_2
       (.A({\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[2] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_2_mul_temp_2_P_UNCONNECTED[47:26],tmp_Gain6_dotp_2_2,mul_Gain6_dotp_2_mul_temp_2_n_92,mul_Gain6_dotp_2_mul_temp_2_n_93,mul_Gain6_dotp_2_mul_temp_2_n_94,mul_Gain6_dotp_2_mul_temp_2_n_95,mul_Gain6_dotp_2_mul_temp_2_n_96,mul_Gain6_dotp_2_mul_temp_2_n_97,mul_Gain6_dotp_2_mul_temp_2_n_98,mul_Gain6_dotp_2_mul_temp_2_n_99,mul_Gain6_dotp_2_mul_temp_2_n_100,mul_Gain6_dotp_2_mul_temp_2_n_101,mul_Gain6_dotp_2_mul_temp_2_n_102,mul_Gain6_dotp_2_mul_temp_2_n_103,mul_Gain6_dotp_2_mul_temp_2_n_104,mul_Gain6_dotp_2_mul_temp_2_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_2_mul_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_2_mul_temp_2_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_3_mul_temp
       (.A({\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__1_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__0_n_0 ,\Unit_Delay2_out1_reg[3] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_3_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_3_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_3_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_3_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_3_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_3_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_3_mul_temp_P_UNCONNECTED[47:32],mul_Gain6_dotp_3_mul_temp_n_74,mul_Gain6_dotp_3_mul_temp_n_75,tmp_Gain6_dotp_3,mul_Gain6_dotp_3_mul_temp_n_92,mul_Gain6_dotp_3_mul_temp_n_93,mul_Gain6_dotp_3_mul_temp_n_94,mul_Gain6_dotp_3_mul_temp_n_95,mul_Gain6_dotp_3_mul_temp_n_96,mul_Gain6_dotp_3_mul_temp_n_97,mul_Gain6_dotp_3_mul_temp_n_98,mul_Gain6_dotp_3_mul_temp_n_99,mul_Gain6_dotp_3_mul_temp_n_100,mul_Gain6_dotp_3_mul_temp_n_101,mul_Gain6_dotp_3_mul_temp_n_102,mul_Gain6_dotp_3_mul_temp_n_103,mul_Gain6_dotp_3_mul_temp_n_104,mul_Gain6_dotp_3_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_3_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_3_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_3_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_3_mul_temp_UNDERFLOW_UNCONNECTED));
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
    mul_Gain6_dotp_3_mul_temp_1
       (.A({\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__3_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3][15]_rep__2_n_0 ,\Unit_Delay2_out1_reg[3] [14:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain6_dotp_3_mul_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain6_dotp_3_mul_temp_1_P_UNCONNECTED[47:25],tmp_Gain6_dotp_3_1,mul_Gain6_dotp_3_mul_temp_1_n_92,mul_Gain6_dotp_3_mul_temp_1_n_93,mul_Gain6_dotp_3_mul_temp_1_n_94,mul_Gain6_dotp_3_mul_temp_1_n_95,mul_Gain6_dotp_3_mul_temp_1_n_96,mul_Gain6_dotp_3_mul_temp_1_n_97,mul_Gain6_dotp_3_mul_temp_1_n_98,mul_Gain6_dotp_3_mul_temp_1_n_99,mul_Gain6_dotp_3_mul_temp_1_n_100,mul_Gain6_dotp_3_mul_temp_1_n_101,mul_Gain6_dotp_3_mul_temp_1_n_102,mul_Gain6_dotp_3_mul_temp_1_n_103,mul_Gain6_dotp_3_mul_temp_1_n_104,mul_Gain6_dotp_3_mul_temp_1_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain6_dotp_3_mul_temp_1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain6_dotp_3_mul_temp_1_UNDERFLOW_UNCONNECTED));
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
    mul_Gain8_dotp_0_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\Sum5_sub_cast[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_0_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_0_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_0_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_0_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_0_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_0_mul_temp_P_UNCONNECTED[47:25],tmp_Gain8_dotp_0,mul_Gain8_dotp_0_mul_temp_n_91,mul_Gain8_dotp_0_mul_temp_n_92,mul_Gain8_dotp_0_mul_temp_n_93,mul_Gain8_dotp_0_mul_temp_n_94,mul_Gain8_dotp_0_mul_temp_n_95,mul_Gain8_dotp_0_mul_temp_n_96,mul_Gain8_dotp_0_mul_temp_n_97,mul_Gain8_dotp_0_mul_temp_n_98,mul_Gain8_dotp_0_mul_temp_n_99,mul_Gain8_dotp_0_mul_temp_n_100,mul_Gain8_dotp_0_mul_temp_n_101,mul_Gain8_dotp_0_mul_temp_n_102,mul_Gain8_dotp_0_mul_temp_n_103,mul_Gain8_dotp_0_mul_temp_n_104,mul_Gain8_dotp_0_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_0_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_0_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_0_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_UNDERFLOW_UNCONNECTED));
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
    mul_Gain8_dotp_0_mul_temp_2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\Sum5_sub_cast[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_0_mul_temp_2_P_UNCONNECTED[47:32],mul_Gain8_dotp_0_mul_temp_2_n_74,mul_Gain8_dotp_0_mul_temp_2_n_75,tmp_Gain8_dotp_0_2,mul_Gain8_dotp_0_mul_temp_2_n_91,mul_Gain8_dotp_0_mul_temp_2_n_92,mul_Gain8_dotp_0_mul_temp_2_n_93,mul_Gain8_dotp_0_mul_temp_2_n_94,mul_Gain8_dotp_0_mul_temp_2_n_95,mul_Gain8_dotp_0_mul_temp_2_n_96,mul_Gain8_dotp_0_mul_temp_2_n_97,mul_Gain8_dotp_0_mul_temp_2_n_98,mul_Gain8_dotp_0_mul_temp_2_n_99,mul_Gain8_dotp_0_mul_temp_2_n_100,mul_Gain8_dotp_0_mul_temp_2_n_101,mul_Gain8_dotp_0_mul_temp_2_n_102,mul_Gain8_dotp_0_mul_temp_2_n_103,mul_Gain8_dotp_0_mul_temp_2_n_104,mul_Gain8_dotp_0_mul_temp_2_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_0_mul_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_2_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    mul_Gain8_dotp_0_mul_temp_2_i_1
       (.I0(Gain2_mul_temp__3[63]),
        .I1(Gain2_mul_temp__3[62]),
        .O(\Sum5_sub_cast[0] [15]));
  LUT3 #(
    .INIT(8'h04)) 
    mul_Gain8_dotp_0_mul_temp_2_i_2
       (.I0(Gain2_mul_temp__3[63]),
        .I1(Gain2_mul_temp__3[61]),
        .I2(Gain2_mul_temp__3[62]),
        .O(\Sum5_sub_cast[0] [14]));
  LUT3 #(
    .INIT(8'h04)) 
    mul_Gain8_dotp_0_mul_temp_2_i_3
       (.I0(Gain2_mul_temp__3[63]),
        .I1(Gain2_mul_temp__3[60]),
        .I2(Gain2_mul_temp__3[62]),
        .O(\Sum5_sub_cast[0] [13]));
  LUT3 #(
    .INIT(8'h04)) 
    mul_Gain8_dotp_0_mul_temp_2_i_4
       (.I0(Gain2_mul_temp__3[63]),
        .I1(Gain2_mul_temp__3[59]),
        .I2(Gain2_mul_temp__3[62]),
        .O(\Sum5_sub_cast[0] [12]));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    mul_Gain8_dotp_0_mul_temp_2_i_5
       (.I0(Gain2_mul_temp__3[59]),
        .I1(Gain2_mul_temp__3[60]),
        .I2(Gain2_mul_temp__3[61]),
        .I3(Gain2_mul_temp__3[62]),
        .I4(Gain2_mul_temp__3[63]),
        .O(\Sum5_sub_cast[0] [11]));
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
    mul_Gain8_dotp_0_mul_temp_3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\Sum5_sub_cast[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_3_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_0_mul_temp_3_P_UNCONNECTED[47:26],tmp_Gain8_dotp_0_3,mul_Gain8_dotp_0_mul_temp_3_n_91,mul_Gain8_dotp_0_mul_temp_3_n_92,mul_Gain8_dotp_0_mul_temp_3_n_93,mul_Gain8_dotp_0_mul_temp_3_n_94,mul_Gain8_dotp_0_mul_temp_3_n_95,mul_Gain8_dotp_0_mul_temp_3_n_96,mul_Gain8_dotp_0_mul_temp_3_n_97,mul_Gain8_dotp_0_mul_temp_3_n_98,mul_Gain8_dotp_0_mul_temp_3_n_99,mul_Gain8_dotp_0_mul_temp_3_n_100,mul_Gain8_dotp_0_mul_temp_3_n_101,mul_Gain8_dotp_0_mul_temp_3_n_102,mul_Gain8_dotp_0_mul_temp_3_n_103,mul_Gain8_dotp_0_mul_temp_3_n_104,mul_Gain8_dotp_0_mul_temp_3_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_0_mul_temp_3_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_0_mul_temp_3_UNDERFLOW_UNCONNECTED));
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
    mul_Gain8_dotp_1_mul_temp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Sum_sub_temp}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_1_mul_temp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_1_mul_temp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_1_mul_temp_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_1_mul_temp_P_UNCONNECTED[47:32],mul_Gain8_dotp_1_mul_temp_n_74,mul_Gain8_dotp_1_mul_temp_n_75,tmp_Gain8_dotp_1,mul_Gain8_dotp_1_mul_temp_n_91,mul_Gain8_dotp_1_mul_temp_n_92,mul_Gain8_dotp_1_mul_temp_n_93,mul_Gain8_dotp_1_mul_temp_n_94,mul_Gain8_dotp_1_mul_temp_n_95,mul_Gain8_dotp_1_mul_temp_n_96,mul_Gain8_dotp_1_mul_temp_n_97,mul_Gain8_dotp_1_mul_temp_n_98,mul_Gain8_dotp_1_mul_temp_n_99,mul_Gain8_dotp_1_mul_temp_n_100,mul_Gain8_dotp_1_mul_temp_n_101,mul_Gain8_dotp_1_mul_temp_n_102,mul_Gain8_dotp_1_mul_temp_n_103,mul_Gain8_dotp_1_mul_temp_n_104,mul_Gain8_dotp_1_mul_temp_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_1_mul_temp_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED));
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
    mul_Gain8_dotp_1_mul_temp_1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Sum_sub_temp}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_1_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_1_mul_temp_1_P_UNCONNECTED[47:26],tmp_Gain8_dotp_1_1,mul_Gain8_dotp_1_mul_temp_1_n_91,mul_Gain8_dotp_1_mul_temp_1_n_92,mul_Gain8_dotp_1_mul_temp_1_n_93,mul_Gain8_dotp_1_mul_temp_1_n_94,mul_Gain8_dotp_1_mul_temp_1_n_95,mul_Gain8_dotp_1_mul_temp_1_n_96,mul_Gain8_dotp_1_mul_temp_1_n_97,mul_Gain8_dotp_1_mul_temp_1_n_98,mul_Gain8_dotp_1_mul_temp_1_n_99,mul_Gain8_dotp_1_mul_temp_1_n_100,mul_Gain8_dotp_1_mul_temp_1_n_101,mul_Gain8_dotp_1_mul_temp_1_n_102,mul_Gain8_dotp_1_mul_temp_1_n_103,mul_Gain8_dotp_1_mul_temp_1_n_104,mul_Gain8_dotp_1_mul_temp_1_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_1_mul_temp_1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_1_UNDERFLOW_UNCONNECTED));
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
    mul_Gain8_dotp_1_mul_temp_2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Sum_sub_temp}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_Gain8_dotp_1_mul_temp_2_P_UNCONNECTED[47:25],tmp_Gain8_dotp_1_2,mul_Gain8_dotp_1_mul_temp_2_n_91,mul_Gain8_dotp_1_mul_temp_2_n_92,mul_Gain8_dotp_1_mul_temp_2_n_93,mul_Gain8_dotp_1_mul_temp_2_n_94,mul_Gain8_dotp_1_mul_temp_2_n_95,mul_Gain8_dotp_1_mul_temp_2_n_96,mul_Gain8_dotp_1_mul_temp_2_n_97,mul_Gain8_dotp_1_mul_temp_2_n_98,mul_Gain8_dotp_1_mul_temp_2_n_99,mul_Gain8_dotp_1_mul_temp_2_n_100,mul_Gain8_dotp_1_mul_temp_2_n_101,mul_Gain8_dotp_1_mul_temp_2_n_102,mul_Gain8_dotp_1_mul_temp_2_n_103,mul_Gain8_dotp_1_mul_temp_2_n_104,mul_Gain8_dotp_1_mul_temp_2_n_105}),
        .PATTERNBDETECT(NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_Gain8_dotp_1_mul_temp_2_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_Gain8_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED));
  CARRY4 \pwm[10]_INST_0 
       (.CI(\pwm[6]_INST_0_n_0 ),
        .CO({pwm[15],\pwm[10]_INST_0_n_1 ,\pwm[10]_INST_0_n_2 ,\pwm[10]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({Multiply_out1[15],1'b0,1'b0,Multiply_out1[12]}),
        .O(pwm[13:10]),
        .S({\pwm[10]_INST_0_i_1_n_0 ,Multiply_out1[14:13],\pwm[10]_INST_0_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[10]_INST_0_i_1 
       (.I0(Multiply_out1[15]),
        .O(\pwm[10]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[10]_INST_0_i_2 
       (.I0(Multiply_out1[12]),
        .O(\pwm[10]_INST_0_i_2_n_0 ));
  CARRY4 \pwm[14]_INST_0 
       (.CI(pwm[15]),
        .CO(\NLW_pwm[14]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pwm[14]_INST_0_O_UNCONNECTED [3:1],pwm[14]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \pwm[2]_INST_0 
       (.CI(1'b0),
        .CO({\pwm[2]_INST_0_n_0 ,\pwm[2]_INST_0_n_1 ,\pwm[2]_INST_0_n_2 ,\pwm[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({Multiply_out1[7],1'b0,Multiply_out1[5],1'b0}),
        .O(pwm[5:2]),
        .S({\pwm[2]_INST_0_i_1_n_0 ,Multiply_out1[6],\pwm[2]_INST_0_i_2_n_0 ,Multiply_out1[4]}));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[2]_INST_0_i_1 
       (.I0(Multiply_out1[7]),
        .O(\pwm[2]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[2]_INST_0_i_2 
       (.I0(Multiply_out1[5]),
        .O(\pwm[2]_INST_0_i_2_n_0 ));
  CARRY4 \pwm[6]_INST_0 
       (.CI(\pwm[2]_INST_0_n_0 ),
        .CO({\pwm[6]_INST_0_n_0 ,\pwm[6]_INST_0_n_1 ,\pwm[6]_INST_0_n_2 ,\pwm[6]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({Multiply_out1[11],1'b0,1'b0,Multiply_out1[8]}),
        .O(pwm[9:6]),
        .S({\pwm[6]_INST_0_i_1_n_0 ,Multiply_out1[10:9],\pwm[6]_INST_0_i_2_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[6]_INST_0_i_1 
       (.I0(Multiply_out1[11]),
        .O(\pwm[6]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm[6]_INST_0_i_2 
       (.I0(Multiply_out1[8]),
        .O(\pwm[6]_INST_0_i_2_n_0 ));
  CARRY4 sum_Gain6_dotp_2_3__0_carry
       (.CI(1'b0),
        .CO({sum_Gain6_dotp_2_3__0_carry_n_0,sum_Gain6_dotp_2_3__0_carry_n_1,sum_Gain6_dotp_2_3__0_carry_n_2,sum_Gain6_dotp_2_3__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sum_Gain6_dotp_2_3__0_carry_i_1_n_0,sum_Gain6_dotp_2_3__0_carry_i_2_n_0,sum_Gain6_dotp_2_3__0_carry_i_3_n_0,1'b0}),
        .O(sum_Gain6_dotp_2_3[3:0]),
        .S({sum_Gain6_dotp_2_3__0_carry_i_4_n_0,sum_Gain6_dotp_2_3__0_carry_i_5_n_0,sum_Gain6_dotp_2_3__0_carry_i_6_n_0,sum_Gain6_dotp_2_3__0_carry_i_7_n_0}));
  CARRY4 sum_Gain6_dotp_2_3__0_carry__0
       (.CI(sum_Gain6_dotp_2_3__0_carry_n_0),
        .CO({sum_Gain6_dotp_2_3__0_carry__0_n_0,sum_Gain6_dotp_2_3__0_carry__0_n_1,sum_Gain6_dotp_2_3__0_carry__0_n_2,sum_Gain6_dotp_2_3__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0}),
        .O(sum_Gain6_dotp_2_3[7:4]),
        .S({sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0,sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_1
       (.I0(\Unit_Delay2_out1_reg[0] [5]),
        .I1(tmp_Gain6_dotp_1_3[5]),
        .I2(\Unit_Delay2_out1_reg[0] [6]),
        .I3(tmp_Gain6_dotp_1_3[6]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_2
       (.I0(\Unit_Delay2_out1_reg[0] [4]),
        .I1(tmp_Gain6_dotp_1_3[4]),
        .I2(\Unit_Delay2_out1_reg[0] [5]),
        .I3(tmp_Gain6_dotp_1_3[5]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_3
       (.I0(\Unit_Delay2_out1_reg[0] [3]),
        .I1(tmp_Gain6_dotp_1_3[3]),
        .I2(\Unit_Delay2_out1_reg[0] [4]),
        .I3(tmp_Gain6_dotp_1_3[4]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_4
       (.I0(\Unit_Delay2_out1_reg[0] [2]),
        .I1(tmp_Gain6_dotp_1_3[2]),
        .I2(\Unit_Delay2_out1_reg[0] [3]),
        .I3(tmp_Gain6_dotp_1_3[3]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_5
       (.I0(tmp_Gain6_dotp_1_3[5]),
        .I1(\Unit_Delay2_out1_reg[0] [5]),
        .I2(tmp_Gain6_dotp_1_3[7]),
        .I3(\Unit_Delay2_out1_reg[0] [7]),
        .I4(tmp_Gain6_dotp_1_3[6]),
        .I5(\Unit_Delay2_out1_reg[0] [6]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_6
       (.I0(tmp_Gain6_dotp_1_3[4]),
        .I1(\Unit_Delay2_out1_reg[0] [4]),
        .I2(tmp_Gain6_dotp_1_3[6]),
        .I3(\Unit_Delay2_out1_reg[0] [6]),
        .I4(tmp_Gain6_dotp_1_3[5]),
        .I5(\Unit_Delay2_out1_reg[0] [5]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_7
       (.I0(tmp_Gain6_dotp_1_3[3]),
        .I1(\Unit_Delay2_out1_reg[0] [3]),
        .I2(tmp_Gain6_dotp_1_3[5]),
        .I3(\Unit_Delay2_out1_reg[0] [5]),
        .I4(tmp_Gain6_dotp_1_3[4]),
        .I5(\Unit_Delay2_out1_reg[0] [4]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__0_i_8
       (.I0(tmp_Gain6_dotp_1_3[2]),
        .I1(\Unit_Delay2_out1_reg[0] [2]),
        .I2(tmp_Gain6_dotp_1_3[4]),
        .I3(\Unit_Delay2_out1_reg[0] [4]),
        .I4(tmp_Gain6_dotp_1_3[3]),
        .I5(\Unit_Delay2_out1_reg[0] [3]),
        .O(sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0));
  CARRY4 sum_Gain6_dotp_2_3__0_carry__1
       (.CI(sum_Gain6_dotp_2_3__0_carry__0_n_0),
        .CO({sum_Gain6_dotp_2_3__0_carry__1_n_0,sum_Gain6_dotp_2_3__0_carry__1_n_1,sum_Gain6_dotp_2_3__0_carry__1_n_2,sum_Gain6_dotp_2_3__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0}),
        .O(sum_Gain6_dotp_2_3[11:8]),
        .S({sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0,sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_1
       (.I0(tmp_Gain6_dotp_1_3[10]),
        .I1(\Unit_Delay2_out1_reg[0] [10]),
        .I2(\Unit_Delay2_out1_reg[0] [9]),
        .I3(tmp_Gain6_dotp_1_3[9]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_2
       (.I0(\Unit_Delay2_out1_reg[0] [8]),
        .I1(tmp_Gain6_dotp_1_3[8]),
        .I2(\Unit_Delay2_out1_reg[0] [9]),
        .I3(tmp_Gain6_dotp_1_3[9]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_3
       (.I0(\Unit_Delay2_out1_reg[0] [7]),
        .I1(tmp_Gain6_dotp_1_3[7]),
        .I2(\Unit_Delay2_out1_reg[0] [8]),
        .I3(tmp_Gain6_dotp_1_3[8]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_4
       (.I0(\Unit_Delay2_out1_reg[0] [6]),
        .I1(tmp_Gain6_dotp_1_3[6]),
        .I2(\Unit_Delay2_out1_reg[0] [7]),
        .I3(tmp_Gain6_dotp_1_3[7]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_5
       (.I0(tmp_Gain6_dotp_1_3[9]),
        .I1(\Unit_Delay2_out1_reg[0] [9]),
        .I2(\Unit_Delay2_out1_reg[0] [10]),
        .I3(tmp_Gain6_dotp_1_3[10]),
        .I4(\Unit_Delay2_out1_reg[0] [11]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_6
       (.I0(tmp_Gain6_dotp_1_3[8]),
        .I1(\Unit_Delay2_out1_reg[0] [8]),
        .I2(tmp_Gain6_dotp_1_3[10]),
        .I3(\Unit_Delay2_out1_reg[0] [10]),
        .I4(tmp_Gain6_dotp_1_3[9]),
        .I5(\Unit_Delay2_out1_reg[0] [9]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_7
       (.I0(tmp_Gain6_dotp_1_3[7]),
        .I1(\Unit_Delay2_out1_reg[0] [7]),
        .I2(tmp_Gain6_dotp_1_3[9]),
        .I3(\Unit_Delay2_out1_reg[0] [9]),
        .I4(tmp_Gain6_dotp_1_3[8]),
        .I5(\Unit_Delay2_out1_reg[0] [8]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    sum_Gain6_dotp_2_3__0_carry__1_i_8
       (.I0(tmp_Gain6_dotp_1_3[6]),
        .I1(\Unit_Delay2_out1_reg[0] [6]),
        .I2(tmp_Gain6_dotp_1_3[8]),
        .I3(\Unit_Delay2_out1_reg[0] [8]),
        .I4(tmp_Gain6_dotp_1_3[7]),
        .I5(\Unit_Delay2_out1_reg[0] [7]),
        .O(sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0));
  CARRY4 sum_Gain6_dotp_2_3__0_carry__2
       (.CI(sum_Gain6_dotp_2_3__0_carry__1_n_0),
        .CO({NLW_sum_Gain6_dotp_2_3__0_carry__2_CO_UNCONNECTED[3],sum_Gain6_dotp_2_3__0_carry__2_n_1,sum_Gain6_dotp_2_3__0_carry__2_n_2,sum_Gain6_dotp_2_3__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\Unit_Delay2_out1_reg[0] [13:11]}),
        .O(sum_Gain6_dotp_2_3[15:12]),
        .S({sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0,sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0,sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0,sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sum_Gain6_dotp_2_3__0_carry__2_i_1
       (.I0(\Unit_Delay2_out1_reg[0] [14]),
        .I1(\Unit_Delay2_out1_reg[0] [15]),
        .O(sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_Gain6_dotp_2_3__0_carry__2_i_2
       (.I0(\Unit_Delay2_out1_reg[0] [13]),
        .I1(\Unit_Delay2_out1_reg[0] [14]),
        .O(sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_Gain6_dotp_2_3__0_carry__2_i_3
       (.I0(\Unit_Delay2_out1_reg[0] [12]),
        .I1(\Unit_Delay2_out1_reg[0] [13]),
        .O(sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sum_Gain6_dotp_2_3__0_carry__2_i_4
       (.I0(\Unit_Delay2_out1_reg[0] [11]),
        .I1(\Unit_Delay2_out1_reg[0] [12]),
        .O(sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    sum_Gain6_dotp_2_3__0_carry_i_1
       (.I0(\Unit_Delay2_out1_reg[0] [2]),
        .I1(tmp_Gain6_dotp_1_3[2]),
        .I2(\Unit_Delay2_out1_reg[2] [15]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    sum_Gain6_dotp_2_3__0_carry_i_2
       (.I0(\Unit_Delay2_out1_reg[2] [15]),
        .I1(tmp_Gain6_dotp_1_3[2]),
        .I2(\Unit_Delay2_out1_reg[0] [2]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    sum_Gain6_dotp_2_3__0_carry_i_3
       (.I0(\Unit_Delay2_out1_reg[0] [0]),
        .I1(tmp_Gain6_dotp_1_3[0]),
        .I2(\Unit_Delay2_out1_reg[2] [13]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    sum_Gain6_dotp_2_3__0_carry_i_4
       (.I0(\Unit_Delay2_out1_reg[2] [15]),
        .I1(tmp_Gain6_dotp_1_3[3]),
        .I2(\Unit_Delay2_out1_reg[0] [3]),
        .I3(tmp_Gain6_dotp_1_3[2]),
        .I4(\Unit_Delay2_out1_reg[0] [2]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    sum_Gain6_dotp_2_3__0_carry_i_5
       (.I0(\Unit_Delay2_out1_reg[2] [15]),
        .I1(tmp_Gain6_dotp_1_3[2]),
        .I2(\Unit_Delay2_out1_reg[0] [2]),
        .I3(\Unit_Delay2_out1_reg[2] [14]),
        .I4(tmp_Gain6_dotp_1_3[1]),
        .I5(\Unit_Delay2_out1_reg[0] [1]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    sum_Gain6_dotp_2_3__0_carry_i_6
       (.I0(sum_Gain6_dotp_2_3__0_carry_i_3_n_0),
        .I1(tmp_Gain6_dotp_1_3[1]),
        .I2(\Unit_Delay2_out1_reg[0] [1]),
        .I3(\Unit_Delay2_out1_reg[2] [14]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    sum_Gain6_dotp_2_3__0_carry_i_7
       (.I0(\Unit_Delay2_out1_reg[0] [0]),
        .I1(tmp_Gain6_dotp_1_3[0]),
        .I2(\Unit_Delay2_out1_reg[2] [13]),
        .O(sum_Gain6_dotp_2_3__0_carry_i_7_n_0));
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
