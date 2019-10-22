-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Oct 21 12:44:31 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_transferf_ip_0_0_sim_netlist.vhdl
-- Design      : Block_design_transferf_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync is
  signal reset_in : STD_LOGIC;
  signal reset_pipe : STD_LOGIC;
begin
reset_out_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_pipe,
      PRE => reset_in,
      Q => reset_out
    );
reset_pipe_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => IPCORE_RESETN,
      O => reset_in
    );
reset_pipe_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => '0',
      PRE => reset_in,
      Q => reset_pipe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller is
  port (
    \pwm_out[0]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Integral_Gain_mul_temp_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_out_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Integral_Gain_mul_temp_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Integral_Gain_mul_temp_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Integral_Gain_mul_temp_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Integral_Gain_mul_temp_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Integral_Gain_mul_temp_5 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \In1[4]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    des_x : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Proportional_Gain_mul_temp_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Proportional_Gain_mul_temp_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Proportional_Gain_mul_temp_2 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller is
  signal A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Derivative_Gain_mul_temp_n_100 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_101 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_102 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_103 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_104 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_105 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_74 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_75 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_92 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_93 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_94 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_95 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_96 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_97 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_98 : STD_LOGIC;
  signal Derivative_Gain_mul_temp_n_99 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_100 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_101 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_102 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_103 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_104 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_105 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_74 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_75 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_92 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_93 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_94 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_95 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_96 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_97 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_98 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_99 : STD_LOGIC;
  signal \Filter_x_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_5__0_n_0\ : STD_LOGIC;
  signal Filter_x_reg_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Filter_x_reg_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \^integral_gain_mul_temp_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Integral_Gain_mul_temp_n_100 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_101 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_102 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_103 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_104 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_105 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_74 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_75 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_92 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_93 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_94 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_95 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_96 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_97 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_98 : STD_LOGIC;
  signal Integral_Gain_mul_temp_n_99 : STD_LOGIC;
  signal \Integrator_x_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal Integrator_x_reg_reg : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \Integrator_x_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Integrator_x_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \Integrator_x_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Integrator_x_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \Integrator_x_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \Integrator_x_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_100 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_101 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_102 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_103 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_104 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_105 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_74 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_75 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_76 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_77 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_78 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_79 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_80 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_81 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_82 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_83 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_84 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_85 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_86 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_87 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_88 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_89 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_90 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_91 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_92 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_93 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_94 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_95 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_96 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_97 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_98 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_99 : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_i_9_n_0\ : STD_LOGIC;
  signal Sum2_sub_temp_carry_i_10_n_0 : STD_LOGIC;
  signal Sum2_sub_temp_carry_i_11_n_0 : STD_LOGIC;
  signal Sum2_sub_temp_carry_i_8_n_0 : STD_LOGIC;
  signal Sum2_sub_temp_carry_i_9_n_0 : STD_LOGIC;
  signal SumD_sub_cast : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal SumD_sub_temp : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal \SumD_sub_temp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_n_1\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_n_2\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__0_n_3\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_n_1\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_n_2\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__1_n_3\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_n_0\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_n_1\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_n_2\ : STD_LOGIC;
  signal \SumD_sub_temp_carry__2_n_3\ : STD_LOGIC;
  signal SumD_sub_temp_carry_i_1_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_i_2_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_i_3_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_i_4_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_i_5_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_n_0 : STD_LOGIC;
  signal SumD_sub_temp_carry_n_1 : STD_LOGIC;
  signal SumD_sub_temp_carry_n_2 : STD_LOGIC;
  signal SumD_sub_temp_carry_n_3 : STD_LOGIC;
  signal Sum_add_cast_2 : STD_LOGIC_VECTOR ( 20 downto 5 );
  signal Sum_add_temp_1 : STD_LOGIC_VECTOR ( 24 downto 19 );
  signal \Sum_add_temp_1__2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__0_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__1_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__2_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__3_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_1__2_carry_n_3\ : STD_LOGIC;
  signal \^gain_mul_temp_1\ : STD_LOGIC_VECTOR ( 30 to 30 );
  signal gain_mul_temp_1_n_100 : STD_LOGIC;
  signal gain_mul_temp_1_n_101 : STD_LOGIC;
  signal gain_mul_temp_1_n_102 : STD_LOGIC;
  signal gain_mul_temp_1_n_103 : STD_LOGIC;
  signal gain_mul_temp_1_n_104 : STD_LOGIC;
  signal gain_mul_temp_1_n_105 : STD_LOGIC;
  signal gain_mul_temp_1_n_76 : STD_LOGIC;
  signal gain_mul_temp_1_n_77 : STD_LOGIC;
  signal gain_mul_temp_1_n_78 : STD_LOGIC;
  signal gain_mul_temp_1_n_79 : STD_LOGIC;
  signal gain_mul_temp_1_n_80 : STD_LOGIC;
  signal gain_mul_temp_1_n_81 : STD_LOGIC;
  signal gain_mul_temp_1_n_82 : STD_LOGIC;
  signal gain_mul_temp_1_n_83 : STD_LOGIC;
  signal gain_mul_temp_1_n_84 : STD_LOGIC;
  signal gain_mul_temp_1_n_85 : STD_LOGIC;
  signal gain_mul_temp_1_n_86 : STD_LOGIC;
  signal gain_mul_temp_1_n_87 : STD_LOGIC;
  signal gain_mul_temp_1_n_88 : STD_LOGIC;
  signal gain_mul_temp_1_n_89 : STD_LOGIC;
  signal gain_mul_temp_1_n_90 : STD_LOGIC;
  signal gain_mul_temp_1_n_91 : STD_LOGIC;
  signal gain_mul_temp_1_n_92 : STD_LOGIC;
  signal gain_mul_temp_1_n_93 : STD_LOGIC;
  signal gain_mul_temp_1_n_94 : STD_LOGIC;
  signal gain_mul_temp_1_n_95 : STD_LOGIC;
  signal gain_mul_temp_1_n_96 : STD_LOGIC;
  signal gain_mul_temp_1_n_97 : STD_LOGIC;
  signal gain_mul_temp_1_n_98 : STD_LOGIC;
  signal gain_mul_temp_1_n_99 : STD_LOGIC;
  signal gain_mul_temp_n_100 : STD_LOGIC;
  signal gain_mul_temp_n_101 : STD_LOGIC;
  signal gain_mul_temp_n_102 : STD_LOGIC;
  signal gain_mul_temp_n_103 : STD_LOGIC;
  signal gain_mul_temp_n_104 : STD_LOGIC;
  signal gain_mul_temp_n_105 : STD_LOGIC;
  signal gain_mul_temp_n_76 : STD_LOGIC;
  signal gain_mul_temp_n_77 : STD_LOGIC;
  signal gain_mul_temp_n_78 : STD_LOGIC;
  signal gain_mul_temp_n_79 : STD_LOGIC;
  signal gain_mul_temp_n_80 : STD_LOGIC;
  signal gain_mul_temp_n_81 : STD_LOGIC;
  signal gain_mul_temp_n_82 : STD_LOGIC;
  signal gain_mul_temp_n_83 : STD_LOGIC;
  signal gain_mul_temp_n_84 : STD_LOGIC;
  signal gain_mul_temp_n_85 : STD_LOGIC;
  signal gain_mul_temp_n_86 : STD_LOGIC;
  signal gain_mul_temp_n_87 : STD_LOGIC;
  signal gain_mul_temp_n_88 : STD_LOGIC;
  signal gain_mul_temp_n_89 : STD_LOGIC;
  signal gain_mul_temp_n_90 : STD_LOGIC;
  signal gain_mul_temp_n_91 : STD_LOGIC;
  signal gain_mul_temp_n_92 : STD_LOGIC;
  signal gain_mul_temp_n_93 : STD_LOGIC;
  signal gain_mul_temp_n_94 : STD_LOGIC;
  signal gain_mul_temp_n_95 : STD_LOGIC;
  signal gain_mul_temp_n_96 : STD_LOGIC;
  signal gain_mul_temp_n_97 : STD_LOGIC;
  signal gain_mul_temp_n_98 : STD_LOGIC;
  signal gain_mul_temp_n_99 : STD_LOGIC;
  signal in0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^pwm_out[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pwm_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[10]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm_out[10]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm_out[10]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm_out[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out[14]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm_out[14]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm_out[14]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Derivative_Gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Derivative_Gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Derivative_Gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Derivative_Gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Derivative_Gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Filter_x_reg_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Integral_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Integral_Gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Integral_Gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Integral_Gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Integral_Gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Integral_Gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Integrator_x_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_SumD_sub_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_SumD_sub_temp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SumD_sub_temp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum_add_temp_1__2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum_add_temp_1__2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum_add_temp_1__2_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum_add_temp_1__2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gain_mul_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_gain_mul_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_gain_mul_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gain_mul_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_gain_mul_temp_1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_pwm_out[14]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_out[14]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_out[2]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Derivative_Gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Filter_Coefficient_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Integral_Gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Proportional_Gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Sum2_sub_temp_carry__0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sum2_sub_temp_carry__0_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum2_sub_temp_carry__0_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum2_sub_temp_carry__0_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Sum2_sub_temp_carry_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Sum2_sub_temp_carry_i_9 : label is "soft_lutpair1";
  attribute HLUTNM : string;
  attribute HLUTNM of \Sum_add_temp_1__2_carry__0_i_1\ : label is "lutpair0";
  attribute HLUTNM of \Sum_add_temp_1__2_carry__0_i_3\ : label is "lutpair1";
  attribute HLUTNM of \Sum_add_temp_1__2_carry__0_i_4\ : label is "lutpair0";
  attribute HLUTNM of \Sum_add_temp_1__2_carry__1_i_4\ : label is "lutpair1";
  attribute METHODOLOGY_DRC_VIOS of gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of gain_mul_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  DI(2 downto 0) <= \^di\(2 downto 0);
  Integral_Gain_mul_temp_2(3 downto 0) <= \^integral_gain_mul_temp_2\(3 downto 0);
  \pwm_out[0]\(9 downto 0) <= \^pwm_out[0]\(9 downto 0);
Derivative_Gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \In1[4]\(15),
      A(28) => \In1[4]\(15),
      A(27) => \In1[4]\(15),
      A(26) => \In1[4]\(15),
      A(25) => \In1[4]\(15),
      A(24) => \In1[4]\(15),
      A(23) => \In1[4]\(15),
      A(22) => \In1[4]\(15),
      A(21) => \In1[4]\(15),
      A(20) => \In1[4]\(15),
      A(19) => \In1[4]\(15),
      A(18) => \In1[4]\(15),
      A(17) => \In1[4]\(15),
      A(16) => \In1[4]\(15),
      A(15 downto 0) => \In1[4]\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Derivative_Gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111000001100000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Derivative_Gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Derivative_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Derivative_Gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Derivative_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Derivative_Gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Derivative_Gain_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Derivative_Gain_mul_temp_n_74,
      P(30) => Derivative_Gain_mul_temp_n_75,
      P(29 downto 14) => SumD_sub_cast(16 downto 1),
      P(13) => Derivative_Gain_mul_temp_n_92,
      P(12) => Derivative_Gain_mul_temp_n_93,
      P(11) => Derivative_Gain_mul_temp_n_94,
      P(10) => Derivative_Gain_mul_temp_n_95,
      P(9) => Derivative_Gain_mul_temp_n_96,
      P(8) => Derivative_Gain_mul_temp_n_97,
      P(7) => Derivative_Gain_mul_temp_n_98,
      P(6) => Derivative_Gain_mul_temp_n_99,
      P(5) => Derivative_Gain_mul_temp_n_100,
      P(4) => Derivative_Gain_mul_temp_n_101,
      P(3) => Derivative_Gain_mul_temp_n_102,
      P(2) => Derivative_Gain_mul_temp_n_103,
      P(1) => Derivative_Gain_mul_temp_n_104,
      P(0) => Derivative_Gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_Derivative_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Derivative_Gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Derivative_Gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Derivative_Gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
Filter_Coefficient_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => SumD_sub_temp(17),
      A(28) => SumD_sub_temp(17),
      A(27) => SumD_sub_temp(17),
      A(26) => SumD_sub_temp(17),
      A(25) => SumD_sub_temp(17),
      A(24) => SumD_sub_temp(17),
      A(23) => SumD_sub_temp(17),
      A(22) => SumD_sub_temp(17),
      A(21) => SumD_sub_temp(17),
      A(20) => SumD_sub_temp(17),
      A(19) => SumD_sub_temp(17),
      A(18) => SumD_sub_temp(17),
      A(17) => SumD_sub_temp(17),
      A(16) => SumD_sub_temp(17),
      A(15 downto 0) => SumD_sub_temp(17 downto 2),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000101000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Filter_Coefficient_mul_temp_n_74,
      P(30) => Filter_Coefficient_mul_temp_n_75,
      P(29 downto 14) => Sum_add_cast_2(20 downto 5),
      P(13) => Filter_Coefficient_mul_temp_n_92,
      P(12) => Filter_Coefficient_mul_temp_n_93,
      P(11) => Filter_Coefficient_mul_temp_n_94,
      P(10) => Filter_Coefficient_mul_temp_n_95,
      P(9) => Filter_Coefficient_mul_temp_n_96,
      P(8) => Filter_Coefficient_mul_temp_n_97,
      P(7) => Filter_Coefficient_mul_temp_n_98,
      P(6) => Filter_Coefficient_mul_temp_n_99,
      P(5) => Filter_Coefficient_mul_temp_n_100,
      P(4) => Filter_Coefficient_mul_temp_n_101,
      P(3) => Filter_Coefficient_mul_temp_n_102,
      P(2) => Filter_Coefficient_mul_temp_n_103,
      P(1) => Filter_Coefficient_mul_temp_n_104,
      P(0) => Filter_Coefficient_mul_temp_n_105,
      PATTERNBDETECT => NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED
    );
\Filter_x_reg[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(3),
      O => \Filter_x_reg[0]_i_2__0_n_0\
    );
\Filter_x_reg[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(2),
      O => \Filter_x_reg[0]_i_3__0_n_0\
    );
\Filter_x_reg[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(1),
      O => \Filter_x_reg[0]_i_4__0_n_0\
    );
\Filter_x_reg[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(0),
      O => \Filter_x_reg[0]_i_5__0_n_0\
    );
\Filter_x_reg[12]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(15),
      O => \Filter_x_reg[12]_i_2__0_n_0\
    );
\Filter_x_reg[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(14),
      O => \Filter_x_reg[12]_i_3__0_n_0\
    );
\Filter_x_reg[12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(13),
      O => \Filter_x_reg[12]_i_4__0_n_0\
    );
\Filter_x_reg[12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(12),
      O => \Filter_x_reg[12]_i_5__0_n_0\
    );
\Filter_x_reg[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(7),
      O => \Filter_x_reg[4]_i_2__0_n_0\
    );
\Filter_x_reg[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(6),
      O => \Filter_x_reg[4]_i_3__0_n_0\
    );
\Filter_x_reg[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(5),
      O => \Filter_x_reg[4]_i_4__0_n_0\
    );
\Filter_x_reg[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(4),
      O => \Filter_x_reg[4]_i_5__0_n_0\
    );
\Filter_x_reg[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(11),
      O => \Filter_x_reg[8]_i_2__0_n_0\
    );
\Filter_x_reg[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(10),
      O => \Filter_x_reg[8]_i_3__0_n_0\
    );
\Filter_x_reg[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(9),
      O => \Filter_x_reg[8]_i_4__0_n_0\
    );
\Filter_x_reg[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp_1\(30),
      I1 => Filter_x_reg_reg(8),
      O => \Filter_x_reg[8]_i_5__0_n_0\
    );
\Filter_x_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1__0_n_7\,
      Q => Filter_x_reg_reg(0)
    );
\Filter_x_reg_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Filter_x_reg_reg[0]_i_1__0_n_0\,
      CO(2) => \Filter_x_reg_reg[0]_i_1__0_n_1\,
      CO(1) => \Filter_x_reg_reg[0]_i_1__0_n_2\,
      CO(0) => \Filter_x_reg_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp_1\(30),
      DI(2) => \^gain_mul_temp_1\(30),
      DI(1) => \^gain_mul_temp_1\(30),
      DI(0) => \^gain_mul_temp_1\(30),
      O(3) => \Filter_x_reg_reg[0]_i_1__0_n_4\,
      O(2) => \Filter_x_reg_reg[0]_i_1__0_n_5\,
      O(1) => \Filter_x_reg_reg[0]_i_1__0_n_6\,
      O(0) => \Filter_x_reg_reg[0]_i_1__0_n_7\,
      S(3) => \Filter_x_reg[0]_i_2__0_n_0\,
      S(2) => \Filter_x_reg[0]_i_3__0_n_0\,
      S(1) => \Filter_x_reg[0]_i_4__0_n_0\,
      S(0) => \Filter_x_reg[0]_i_5__0_n_0\
    );
\Filter_x_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1__0_n_5\,
      Q => Filter_x_reg_reg(10)
    );
\Filter_x_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1__0_n_4\,
      Q => Filter_x_reg_reg(11)
    );
\Filter_x_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1__0_n_7\,
      Q => Filter_x_reg_reg(12)
    );
\Filter_x_reg_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_Filter_x_reg_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \Filter_x_reg_reg[12]_i_1__0_n_1\,
      CO(1) => \Filter_x_reg_reg[12]_i_1__0_n_2\,
      CO(0) => \Filter_x_reg_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^gain_mul_temp_1\(30),
      DI(1) => \^gain_mul_temp_1\(30),
      DI(0) => \^gain_mul_temp_1\(30),
      O(3) => \Filter_x_reg_reg[12]_i_1__0_n_4\,
      O(2) => \Filter_x_reg_reg[12]_i_1__0_n_5\,
      O(1) => \Filter_x_reg_reg[12]_i_1__0_n_6\,
      O(0) => \Filter_x_reg_reg[12]_i_1__0_n_7\,
      S(3) => \Filter_x_reg[12]_i_2__0_n_0\,
      S(2) => \Filter_x_reg[12]_i_3__0_n_0\,
      S(1) => \Filter_x_reg[12]_i_4__0_n_0\,
      S(0) => \Filter_x_reg[12]_i_5__0_n_0\
    );
\Filter_x_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1__0_n_6\,
      Q => Filter_x_reg_reg(13)
    );
\Filter_x_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1__0_n_5\,
      Q => Filter_x_reg_reg(14)
    );
\Filter_x_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1__0_n_4\,
      Q => Filter_x_reg_reg(15)
    );
\Filter_x_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1__0_n_6\,
      Q => Filter_x_reg_reg(1)
    );
\Filter_x_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1__0_n_5\,
      Q => Filter_x_reg_reg(2)
    );
\Filter_x_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1__0_n_4\,
      Q => Filter_x_reg_reg(3)
    );
\Filter_x_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1__0_n_7\,
      Q => Filter_x_reg_reg(4)
    );
\Filter_x_reg_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[0]_i_1__0_n_0\,
      CO(3) => \Filter_x_reg_reg[4]_i_1__0_n_0\,
      CO(2) => \Filter_x_reg_reg[4]_i_1__0_n_1\,
      CO(1) => \Filter_x_reg_reg[4]_i_1__0_n_2\,
      CO(0) => \Filter_x_reg_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp_1\(30),
      DI(2) => \^gain_mul_temp_1\(30),
      DI(1) => \^gain_mul_temp_1\(30),
      DI(0) => \^gain_mul_temp_1\(30),
      O(3) => \Filter_x_reg_reg[4]_i_1__0_n_4\,
      O(2) => \Filter_x_reg_reg[4]_i_1__0_n_5\,
      O(1) => \Filter_x_reg_reg[4]_i_1__0_n_6\,
      O(0) => \Filter_x_reg_reg[4]_i_1__0_n_7\,
      S(3) => \Filter_x_reg[4]_i_2__0_n_0\,
      S(2) => \Filter_x_reg[4]_i_3__0_n_0\,
      S(1) => \Filter_x_reg[4]_i_4__0_n_0\,
      S(0) => \Filter_x_reg[4]_i_5__0_n_0\
    );
\Filter_x_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1__0_n_6\,
      Q => Filter_x_reg_reg(5)
    );
\Filter_x_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1__0_n_5\,
      Q => Filter_x_reg_reg(6)
    );
\Filter_x_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1__0_n_4\,
      Q => Filter_x_reg_reg(7)
    );
\Filter_x_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1__0_n_7\,
      Q => Filter_x_reg_reg(8)
    );
\Filter_x_reg_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[4]_i_1__0_n_0\,
      CO(3) => \Filter_x_reg_reg[8]_i_1__0_n_0\,
      CO(2) => \Filter_x_reg_reg[8]_i_1__0_n_1\,
      CO(1) => \Filter_x_reg_reg[8]_i_1__0_n_2\,
      CO(0) => \Filter_x_reg_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp_1\(30),
      DI(2) => \^gain_mul_temp_1\(30),
      DI(1) => \^gain_mul_temp_1\(30),
      DI(0) => \^gain_mul_temp_1\(30),
      O(3) => \Filter_x_reg_reg[8]_i_1__0_n_4\,
      O(2) => \Filter_x_reg_reg[8]_i_1__0_n_5\,
      O(1) => \Filter_x_reg_reg[8]_i_1__0_n_6\,
      O(0) => \Filter_x_reg_reg[8]_i_1__0_n_7\,
      S(3) => \Filter_x_reg[8]_i_2__0_n_0\,
      S(2) => \Filter_x_reg[8]_i_3__0_n_0\,
      S(1) => \Filter_x_reg[8]_i_4__0_n_0\,
      S(0) => \Filter_x_reg[8]_i_5__0_n_0\
    );
\Filter_x_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1__0_n_6\,
      Q => Filter_x_reg_reg(9)
    );
Integral_Gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \In1[4]\(15),
      A(28) => \In1[4]\(15),
      A(27) => \In1[4]\(15),
      A(26) => \In1[4]\(15),
      A(25) => \In1[4]\(15),
      A(24) => \In1[4]\(15),
      A(23) => \In1[4]\(15),
      A(22) => \In1[4]\(15),
      A(21) => \In1[4]\(15),
      A(20) => \In1[4]\(15),
      A(19) => \In1[4]\(15),
      A(18) => \In1[4]\(15),
      A(17) => \In1[4]\(15),
      A(16) => \In1[4]\(15),
      A(15 downto 0) => \In1[4]\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Integral_Gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000110010000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Integral_Gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Integral_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Integral_Gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Integral_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Integral_Gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Integral_Gain_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Integral_Gain_mul_temp_n_74,
      P(30) => Integral_Gain_mul_temp_n_75,
      P(29 downto 14) => A(15 downto 0),
      P(13) => Integral_Gain_mul_temp_n_92,
      P(12) => Integral_Gain_mul_temp_n_93,
      P(11) => Integral_Gain_mul_temp_n_94,
      P(10) => Integral_Gain_mul_temp_n_95,
      P(9) => Integral_Gain_mul_temp_n_96,
      P(8) => Integral_Gain_mul_temp_n_97,
      P(7) => Integral_Gain_mul_temp_n_98,
      P(6) => Integral_Gain_mul_temp_n_99,
      P(5) => Integral_Gain_mul_temp_n_100,
      P(4) => Integral_Gain_mul_temp_n_101,
      P(3) => Integral_Gain_mul_temp_n_102,
      P(2) => Integral_Gain_mul_temp_n_103,
      P(1) => Integral_Gain_mul_temp_n_104,
      P(0) => Integral_Gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_Integral_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Integral_Gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Integral_Gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Integral_Gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
\Integrator_x_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \Integrator_x_reg_reg_n_0_[3]\,
      O => \Integrator_x_reg[0]_i_2_n_0\
    );
\Integrator_x_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \Integrator_x_reg_reg_n_0_[2]\,
      O => \Integrator_x_reg[0]_i_3_n_0\
    );
\Integrator_x_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \Integrator_x_reg_reg_n_0_[1]\,
      O => \Integrator_x_reg[0]_i_4_n_0\
    );
\Integrator_x_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => \Integrator_x_reg_reg_n_0_[0]\,
      O => \Integrator_x_reg[0]_i_5_n_0\
    );
\Integrator_x_reg[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(15),
      O => \Integrator_x_reg[12]_i_2_n_0\
    );
\Integrator_x_reg[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(14),
      O => \Integrator_x_reg[12]_i_3_n_0\
    );
\Integrator_x_reg[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(13),
      O => \Integrator_x_reg[12]_i_4_n_0\
    );
\Integrator_x_reg[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(12),
      O => \Integrator_x_reg[12]_i_5_n_0\
    );
\Integrator_x_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(7),
      O => \Integrator_x_reg[4]_i_2_n_0\
    );
\Integrator_x_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(6),
      O => \Integrator_x_reg[4]_i_3_n_0\
    );
\Integrator_x_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(5),
      O => \Integrator_x_reg[4]_i_4_n_0\
    );
\Integrator_x_reg[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(4),
      O => \Integrator_x_reg[4]_i_5_n_0\
    );
\Integrator_x_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(11),
      O => \Integrator_x_reg[8]_i_2_n_0\
    );
\Integrator_x_reg[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(10),
      O => \Integrator_x_reg[8]_i_3_n_0\
    );
\Integrator_x_reg[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(9),
      O => \Integrator_x_reg[8]_i_4_n_0\
    );
\Integrator_x_reg[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in0,
      I1 => Integrator_x_reg_reg(8),
      O => \Integrator_x_reg[8]_i_5_n_0\
    );
\Integrator_x_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[0]_i_1_n_7\,
      Q => \Integrator_x_reg_reg_n_0_[0]\
    );
\Integrator_x_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Integrator_x_reg_reg[0]_i_1_n_0\,
      CO(2) => \Integrator_x_reg_reg[0]_i_1_n_1\,
      CO(1) => \Integrator_x_reg_reg[0]_i_1_n_2\,
      CO(0) => \Integrator_x_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => in0,
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \Integrator_x_reg_reg[0]_i_1_n_4\,
      O(2) => \Integrator_x_reg_reg[0]_i_1_n_5\,
      O(1) => \Integrator_x_reg_reg[0]_i_1_n_6\,
      O(0) => \Integrator_x_reg_reg[0]_i_1_n_7\,
      S(3) => \Integrator_x_reg[0]_i_2_n_0\,
      S(2) => \Integrator_x_reg[0]_i_3_n_0\,
      S(1) => \Integrator_x_reg[0]_i_4_n_0\,
      S(0) => \Integrator_x_reg[0]_i_5_n_0\
    );
\Integrator_x_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[8]_i_1_n_5\,
      Q => Integrator_x_reg_reg(10)
    );
\Integrator_x_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[8]_i_1_n_4\,
      Q => Integrator_x_reg_reg(11)
    );
\Integrator_x_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[12]_i_1_n_7\,
      Q => Integrator_x_reg_reg(12)
    );
\Integrator_x_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Integrator_x_reg_reg[8]_i_1_n_0\,
      CO(3) => \NLW_Integrator_x_reg_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Integrator_x_reg_reg[12]_i_1_n_1\,
      CO(1) => \Integrator_x_reg_reg[12]_i_1_n_2\,
      CO(0) => \Integrator_x_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \Integrator_x_reg_reg[12]_i_1_n_4\,
      O(2) => \Integrator_x_reg_reg[12]_i_1_n_5\,
      O(1) => \Integrator_x_reg_reg[12]_i_1_n_6\,
      O(0) => \Integrator_x_reg_reg[12]_i_1_n_7\,
      S(3) => \Integrator_x_reg[12]_i_2_n_0\,
      S(2) => \Integrator_x_reg[12]_i_3_n_0\,
      S(1) => \Integrator_x_reg[12]_i_4_n_0\,
      S(0) => \Integrator_x_reg[12]_i_5_n_0\
    );
\Integrator_x_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[12]_i_1_n_6\,
      Q => Integrator_x_reg_reg(13)
    );
\Integrator_x_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[12]_i_1_n_5\,
      Q => Integrator_x_reg_reg(14)
    );
\Integrator_x_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[12]_i_1_n_4\,
      Q => Integrator_x_reg_reg(15)
    );
\Integrator_x_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[0]_i_1_n_6\,
      Q => \Integrator_x_reg_reg_n_0_[1]\
    );
\Integrator_x_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[0]_i_1_n_5\,
      Q => \Integrator_x_reg_reg_n_0_[2]\
    );
\Integrator_x_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[0]_i_1_n_4\,
      Q => \Integrator_x_reg_reg_n_0_[3]\
    );
\Integrator_x_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[4]_i_1_n_7\,
      Q => Integrator_x_reg_reg(4)
    );
\Integrator_x_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Integrator_x_reg_reg[0]_i_1_n_0\,
      CO(3) => \Integrator_x_reg_reg[4]_i_1_n_0\,
      CO(2) => \Integrator_x_reg_reg[4]_i_1_n_1\,
      CO(1) => \Integrator_x_reg_reg[4]_i_1_n_2\,
      CO(0) => \Integrator_x_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => in0,
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \Integrator_x_reg_reg[4]_i_1_n_4\,
      O(2) => \Integrator_x_reg_reg[4]_i_1_n_5\,
      O(1) => \Integrator_x_reg_reg[4]_i_1_n_6\,
      O(0) => \Integrator_x_reg_reg[4]_i_1_n_7\,
      S(3) => \Integrator_x_reg[4]_i_2_n_0\,
      S(2) => \Integrator_x_reg[4]_i_3_n_0\,
      S(1) => \Integrator_x_reg[4]_i_4_n_0\,
      S(0) => \Integrator_x_reg[4]_i_5_n_0\
    );
\Integrator_x_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[4]_i_1_n_6\,
      Q => Integrator_x_reg_reg(5)
    );
\Integrator_x_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[4]_i_1_n_5\,
      Q => Integrator_x_reg_reg(6)
    );
\Integrator_x_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[4]_i_1_n_4\,
      Q => Integrator_x_reg_reg(7)
    );
\Integrator_x_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[8]_i_1_n_7\,
      Q => Integrator_x_reg_reg(8)
    );
\Integrator_x_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Integrator_x_reg_reg[4]_i_1_n_0\,
      CO(3) => \Integrator_x_reg_reg[8]_i_1_n_0\,
      CO(2) => \Integrator_x_reg_reg[8]_i_1_n_1\,
      CO(1) => \Integrator_x_reg_reg[8]_i_1_n_2\,
      CO(0) => \Integrator_x_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => in0,
      DI(2) => in0,
      DI(1) => in0,
      DI(0) => in0,
      O(3) => \Integrator_x_reg_reg[8]_i_1_n_4\,
      O(2) => \Integrator_x_reg_reg[8]_i_1_n_5\,
      O(1) => \Integrator_x_reg_reg[8]_i_1_n_6\,
      O(0) => \Integrator_x_reg_reg[8]_i_1_n_7\,
      S(3) => \Integrator_x_reg[8]_i_2_n_0\,
      S(2) => \Integrator_x_reg[8]_i_3_n_0\,
      S(1) => \Integrator_x_reg[8]_i_4_n_0\,
      S(0) => \Integrator_x_reg[8]_i_5_n_0\
    );
\Integrator_x_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Integrator_x_reg_reg[8]_i_1_n_6\,
      Q => Integrator_x_reg_reg(9)
    );
Proportional_Gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \In1[4]\(15),
      A(28) => \In1[4]\(15),
      A(27) => \In1[4]\(15),
      A(26) => \In1[4]\(15),
      A(25) => \In1[4]\(15),
      A(24) => \In1[4]\(15),
      A(23) => \In1[4]\(15),
      A(22) => \In1[4]\(15),
      A(21) => \In1[4]\(15),
      A(20) => \In1[4]\(15),
      A(19) => \In1[4]\(15),
      A(18) => \In1[4]\(15),
      A(17) => \In1[4]\(15),
      A(16) => \In1[4]\(15),
      A(15 downto 0) => \In1[4]\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000101011111100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Proportional_Gain_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Proportional_Gain_mul_temp_n_74,
      P(30) => Proportional_Gain_mul_temp_n_75,
      P(29) => Proportional_Gain_mul_temp_n_76,
      P(28) => Proportional_Gain_mul_temp_n_77,
      P(27) => Proportional_Gain_mul_temp_n_78,
      P(26) => Proportional_Gain_mul_temp_n_79,
      P(25) => Proportional_Gain_mul_temp_n_80,
      P(24) => Proportional_Gain_mul_temp_n_81,
      P(23) => Proportional_Gain_mul_temp_n_82,
      P(22) => Proportional_Gain_mul_temp_n_83,
      P(21) => Proportional_Gain_mul_temp_n_84,
      P(20) => Proportional_Gain_mul_temp_n_85,
      P(19) => Proportional_Gain_mul_temp_n_86,
      P(18) => Proportional_Gain_mul_temp_n_87,
      P(17) => Proportional_Gain_mul_temp_n_88,
      P(16) => Proportional_Gain_mul_temp_n_89,
      P(15) => Proportional_Gain_mul_temp_n_90,
      P(14) => Proportional_Gain_mul_temp_n_91,
      P(13) => Proportional_Gain_mul_temp_n_92,
      P(12) => Proportional_Gain_mul_temp_n_93,
      P(11) => Proportional_Gain_mul_temp_n_94,
      P(10) => Proportional_Gain_mul_temp_n_95,
      P(9) => Proportional_Gain_mul_temp_n_96,
      P(8) => Proportional_Gain_mul_temp_n_97,
      P(7) => Proportional_Gain_mul_temp_n_98,
      P(6) => Proportional_Gain_mul_temp_n_99,
      P(5) => Proportional_Gain_mul_temp_n_100,
      P(4) => Proportional_Gain_mul_temp_n_101,
      P(3) => Proportional_Gain_mul_temp_n_102,
      P(2) => Proportional_Gain_mul_temp_n_103,
      P(1) => Proportional_Gain_mul_temp_n_104,
      P(0) => Proportional_Gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
\Sum2_sub_temp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => Sum2_sub_temp_carry_i_9_n_0,
      I1 => Sum2_sub_temp_carry_i_11_n_0,
      I2 => In1(6),
      I3 => des_x(6),
      O => \^integral_gain_mul_temp_2\(3)
    );
\Sum2_sub_temp_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => In1(8),
      I1 => In1(7),
      I2 => In1(10),
      I3 => In1(9),
      O => \Sum2_sub_temp_carry__0_i_10_n_0\
    );
\Sum2_sub_temp_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => In1(14),
      I1 => In1(15),
      O => \Sum2_sub_temp_carry__0_i_11_n_0\
    );
\Sum2_sub_temp_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000100FF"
    )
        port map (
      I0 => In1(13),
      I1 => In1(12),
      I2 => In1(11),
      I3 => In1(15),
      I4 => In1(14),
      O => \Sum2_sub_temp_carry__0_i_12_n_0\
    );
\Sum2_sub_temp_carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF570303"
    )
        port map (
      I0 => In1(6),
      I1 => In1(14),
      I2 => In1(15),
      I3 => \Sum2_sub_temp_carry__0_i_10_n_0\,
      I4 => \Sum2_sub_temp_carry__0_i_9_n_0\,
      O => \Sum2_sub_temp_carry__0_i_13_n_0\
    );
\Sum2_sub_temp_carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5FDF5"
    )
        port map (
      I0 => In1(4),
      I1 => In1(5),
      I2 => Sum2_sub_temp_carry_i_9_n_0,
      I3 => Sum2_sub_temp_carry_i_11_n_0,
      I4 => In1(6),
      O => p_0_in(5)
    );
\Sum2_sub_temp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000444440404444"
    )
        port map (
      I0 => In1(5),
      I1 => des_x(5),
      I2 => \Sum2_sub_temp_carry__0_i_9_n_0\,
      I3 => \Sum2_sub_temp_carry__0_i_10_n_0\,
      I4 => \Sum2_sub_temp_carry__0_i_11_n_0\,
      I5 => In1(6),
      O => \^integral_gain_mul_temp_2\(2)
    );
\Sum2_sub_temp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8FFFF00000000"
    )
        port map (
      I0 => In1(6),
      I1 => Sum2_sub_temp_carry_i_11_n_0,
      I2 => Sum2_sub_temp_carry_i_9_n_0,
      I3 => In1(5),
      I4 => In1(4),
      I5 => des_x(4),
      O => \^integral_gain_mul_temp_2\(1)
    );
\Sum2_sub_temp_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(3),
      I1 => des_x(3),
      I2 => Sum2_sub_temp_carry_i_8_n_0,
      O => \^integral_gain_mul_temp_2\(0)
    );
\Sum2_sub_temp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => \^integral_gain_mul_temp_2\(3),
      I1 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      I2 => In1(7),
      I3 => des_x(7),
      O => Integral_Gain_mul_temp_1(3)
    );
\Sum2_sub_temp_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA65559"
    )
        port map (
      I0 => \^integral_gain_mul_temp_2\(2),
      I1 => In1(6),
      I2 => Sum2_sub_temp_carry_i_11_n_0,
      I3 => Sum2_sub_temp_carry_i_9_n_0,
      I4 => des_x(6),
      O => Integral_Gain_mul_temp_1(2)
    );
\Sum2_sub_temp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => \^integral_gain_mul_temp_2\(1),
      I1 => \Sum2_sub_temp_carry__0_i_13_n_0\,
      I2 => In1(5),
      I3 => des_x(5),
      O => Integral_Gain_mul_temp_1(1)
    );
\Sum2_sub_temp_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => Sum2_sub_temp_carry_i_8_n_0,
      I1 => des_x(3),
      I2 => In1(3),
      I3 => p_0_in(5),
      I4 => des_x(4),
      O => Integral_Gain_mul_temp_1(0)
    );
\Sum2_sub_temp_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => In1(11),
      I1 => In1(12),
      I2 => In1(13),
      I3 => In1(15),
      O => \Sum2_sub_temp_carry__0_i_9_n_0\
    );
\Sum2_sub_temp_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(10),
      I1 => des_x(10),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      O => Integral_Gain_mul_temp_4(3)
    );
\Sum2_sub_temp_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(9),
      I1 => des_x(9),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      O => Integral_Gain_mul_temp_4(2)
    );
\Sum2_sub_temp_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(8),
      I1 => des_x(8),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      O => Integral_Gain_mul_temp_4(1)
    );
\Sum2_sub_temp_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(7),
      I1 => des_x(7),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      O => Integral_Gain_mul_temp_4(0)
    );
\Sum2_sub_temp_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F70808F708F7F7"
    )
        port map (
      I0 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      I1 => des_x(10),
      I2 => In1(10),
      I3 => \Sum2_sub_temp_carry__0_i_11_n_0\,
      I4 => In1(11),
      I5 => des_x(11),
      O => Integral_Gain_mul_temp_3(3)
    );
\Sum2_sub_temp_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2F20D0"
    )
        port map (
      I0 => des_x(9),
      I1 => In1(9),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      I3 => In1(10),
      I4 => des_x(10),
      O => Integral_Gain_mul_temp_3(2)
    );
\Sum2_sub_temp_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2F20D0"
    )
        port map (
      I0 => des_x(8),
      I1 => In1(8),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      I3 => In1(9),
      I4 => des_x(9),
      O => Integral_Gain_mul_temp_3(1)
    );
\Sum2_sub_temp_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2F20D0"
    )
        port map (
      I0 => des_x(7),
      I1 => In1(7),
      I2 => \Sum2_sub_temp_carry__0_i_12_n_0\,
      I3 => In1(8),
      I4 => des_x(8),
      O => Integral_Gain_mul_temp_3(0)
    );
\Sum2_sub_temp_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => In1(13),
      I1 => In1(14),
      I2 => In1(15),
      I3 => des_x(13),
      O => Integral_Gain_mul_temp_5(2)
    );
\Sum2_sub_temp_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => In1(12),
      I1 => In1(14),
      I2 => In1(15),
      I3 => des_x(12),
      O => Integral_Gain_mul_temp_5(1)
    );
\Sum2_sub_temp_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => In1(11),
      I1 => In1(14),
      I2 => In1(15),
      I3 => des_x(11),
      O => Integral_Gain_mul_temp_5(0)
    );
\Sum2_sub_temp_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => In1(15),
      I1 => In1(14),
      I2 => des_x(14),
      O => S(3)
    );
\Sum2_sub_temp_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5552AAAD"
    )
        port map (
      I0 => des_x(13),
      I1 => In1(13),
      I2 => In1(14),
      I3 => In1(15),
      I4 => des_x(14),
      O => S(2)
    );
\Sum2_sub_temp_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAADAAA25552555D"
    )
        port map (
      I0 => des_x(12),
      I1 => In1(12),
      I2 => In1(15),
      I3 => In1(14),
      I4 => In1(13),
      I5 => des_x(13),
      O => S(1)
    );
\Sum2_sub_temp_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAADAAA25552555D"
    )
        port map (
      I0 => des_x(11),
      I1 => In1(11),
      I2 => In1(15),
      I3 => In1(14),
      I4 => In1(12),
      I5 => des_x(12),
      O => S(0)
    );
Sum2_sub_temp_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(2),
      I1 => des_x(2),
      I2 => Sum2_sub_temp_carry_i_8_n_0,
      O => \^di\(2)
    );
Sum2_sub_temp_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008000"
    )
        port map (
      I0 => In1(3),
      I1 => In1(1),
      I2 => In1(2),
      I3 => In1(5),
      I4 => In1(4),
      O => Sum2_sub_temp_carry_i_10_n_0
    );
Sum2_sub_temp_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => In1(14),
      I1 => In1(9),
      I2 => In1(10),
      I3 => In1(7),
      I4 => In1(8),
      O => Sum2_sub_temp_carry_i_11_n_0
    );
Sum2_sub_temp_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => In1(1),
      I1 => des_x(1),
      I2 => Sum2_sub_temp_carry_i_8_n_0,
      O => \^di\(1)
    );
Sum2_sub_temp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFAFFFAFF"
    )
        port map (
      I0 => des_x(0),
      I1 => In1(6),
      I2 => Sum2_sub_temp_carry_i_9_n_0,
      I3 => In1(0),
      I4 => Sum2_sub_temp_carry_i_10_n_0,
      I5 => Sum2_sub_temp_carry_i_11_n_0,
      O => \^di\(0)
    );
Sum2_sub_temp_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2F20D0"
    )
        port map (
      I0 => des_x(2),
      I1 => In1(2),
      I2 => Sum2_sub_temp_carry_i_8_n_0,
      I3 => In1(3),
      I4 => des_x(3),
      O => Integral_Gain_mul_temp_0(3)
    );
Sum2_sub_temp_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF2F20D0"
    )
        port map (
      I0 => des_x(1),
      I1 => In1(1),
      I2 => Sum2_sub_temp_carry_i_8_n_0,
      I3 => In1(2),
      I4 => des_x(2),
      O => Integral_Gain_mul_temp_0(2)
    );
Sum2_sub_temp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => \^di\(0),
      I1 => Sum2_sub_temp_carry_i_8_n_0,
      I2 => In1(1),
      I3 => des_x(1),
      O => Integral_Gain_mul_temp_0(1)
    );
Sum2_sub_temp_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAF8F00005070"
    )
        port map (
      I0 => Sum2_sub_temp_carry_i_11_n_0,
      I1 => Sum2_sub_temp_carry_i_10_n_0,
      I2 => In1(0),
      I3 => In1(6),
      I4 => Sum2_sub_temp_carry_i_9_n_0,
      I5 => des_x(0),
      O => Integral_Gain_mul_temp_0(0)
    );
Sum2_sub_temp_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF07FF00FF00FF"
    )
        port map (
      I0 => In1(5),
      I1 => In1(4),
      I2 => In1(6),
      I3 => \Sum2_sub_temp_carry__0_i_11_n_0\,
      I4 => \Sum2_sub_temp_carry__0_i_10_n_0\,
      I5 => \Sum2_sub_temp_carry__0_i_9_n_0\,
      O => Sum2_sub_temp_carry_i_8_n_0
    );
Sum2_sub_temp_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => In1(14),
      I1 => In1(13),
      I2 => In1(12),
      I3 => In1(11),
      I4 => In1(15),
      O => Sum2_sub_temp_carry_i_9_n_0
    );
SumD_sub_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SumD_sub_temp_carry_n_0,
      CO(2) => SumD_sub_temp_carry_n_1,
      CO(1) => SumD_sub_temp_carry_n_2,
      CO(0) => SumD_sub_temp_carry_n_3,
      CYINIT => SumD_sub_temp_carry_i_1_n_0,
      DI(3 downto 0) => SumD_sub_cast(4 downto 1),
      O(3 downto 1) => SumD_sub_temp(4 downto 2),
      O(0) => NLW_SumD_sub_temp_carry_O_UNCONNECTED(0),
      S(3) => SumD_sub_temp_carry_i_2_n_0,
      S(2) => SumD_sub_temp_carry_i_3_n_0,
      S(1) => SumD_sub_temp_carry_i_4_n_0,
      S(0) => SumD_sub_temp_carry_i_5_n_0
    );
\SumD_sub_temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SumD_sub_temp_carry_n_0,
      CO(3) => \SumD_sub_temp_carry__0_n_0\,
      CO(2) => \SumD_sub_temp_carry__0_n_1\,
      CO(1) => \SumD_sub_temp_carry__0_n_2\,
      CO(0) => \SumD_sub_temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SumD_sub_cast(8 downto 5),
      O(3 downto 0) => SumD_sub_temp(8 downto 5),
      S(3) => \SumD_sub_temp_carry__0_i_1_n_0\,
      S(2) => \SumD_sub_temp_carry__0_i_2_n_0\,
      S(1) => \SumD_sub_temp_carry__0_i_3_n_0\,
      S(0) => \SumD_sub_temp_carry__0_i_4_n_0\
    );
\SumD_sub_temp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(8),
      I1 => Filter_x_reg_reg(8),
      O => \SumD_sub_temp_carry__0_i_1_n_0\
    );
\SumD_sub_temp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(7),
      I1 => Filter_x_reg_reg(7),
      O => \SumD_sub_temp_carry__0_i_2_n_0\
    );
\SumD_sub_temp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(6),
      I1 => Filter_x_reg_reg(6),
      O => \SumD_sub_temp_carry__0_i_3_n_0\
    );
\SumD_sub_temp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(5),
      I1 => Filter_x_reg_reg(5),
      O => \SumD_sub_temp_carry__0_i_4_n_0\
    );
\SumD_sub_temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SumD_sub_temp_carry__0_n_0\,
      CO(3) => \SumD_sub_temp_carry__1_n_0\,
      CO(2) => \SumD_sub_temp_carry__1_n_1\,
      CO(1) => \SumD_sub_temp_carry__1_n_2\,
      CO(0) => \SumD_sub_temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SumD_sub_cast(12 downto 9),
      O(3 downto 0) => SumD_sub_temp(12 downto 9),
      S(3) => \SumD_sub_temp_carry__1_i_1_n_0\,
      S(2) => \SumD_sub_temp_carry__1_i_2_n_0\,
      S(1) => \SumD_sub_temp_carry__1_i_3_n_0\,
      S(0) => \SumD_sub_temp_carry__1_i_4_n_0\
    );
\SumD_sub_temp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(12),
      I1 => Filter_x_reg_reg(12),
      O => \SumD_sub_temp_carry__1_i_1_n_0\
    );
\SumD_sub_temp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(11),
      I1 => Filter_x_reg_reg(11),
      O => \SumD_sub_temp_carry__1_i_2_n_0\
    );
\SumD_sub_temp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(10),
      I1 => Filter_x_reg_reg(10),
      O => \SumD_sub_temp_carry__1_i_3_n_0\
    );
\SumD_sub_temp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(9),
      I1 => Filter_x_reg_reg(9),
      O => \SumD_sub_temp_carry__1_i_4_n_0\
    );
\SumD_sub_temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SumD_sub_temp_carry__1_n_0\,
      CO(3) => \SumD_sub_temp_carry__2_n_0\,
      CO(2) => \SumD_sub_temp_carry__2_n_1\,
      CO(1) => \SumD_sub_temp_carry__2_n_2\,
      CO(0) => \SumD_sub_temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SumD_sub_cast(16 downto 13),
      O(3 downto 0) => SumD_sub_temp(16 downto 13),
      S(3) => \SumD_sub_temp_carry__2_i_1_n_0\,
      S(2) => \SumD_sub_temp_carry__2_i_2_n_0\,
      S(1) => \SumD_sub_temp_carry__2_i_3_n_0\,
      S(0) => \SumD_sub_temp_carry__2_i_4_n_0\
    );
\SumD_sub_temp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SumD_sub_cast(16),
      O => \SumD_sub_temp_carry__2_i_1_n_0\
    );
\SumD_sub_temp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(15),
      I1 => Filter_x_reg_reg(15),
      O => \SumD_sub_temp_carry__2_i_2_n_0\
    );
\SumD_sub_temp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(14),
      I1 => Filter_x_reg_reg(14),
      O => \SumD_sub_temp_carry__2_i_3_n_0\
    );
\SumD_sub_temp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(13),
      I1 => Filter_x_reg_reg(13),
      O => \SumD_sub_temp_carry__2_i_4_n_0\
    );
\SumD_sub_temp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \SumD_sub_temp_carry__2_n_0\,
      CO(3 downto 0) => \NLW_SumD_sub_temp_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_SumD_sub_temp_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => SumD_sub_temp(17),
      S(3 downto 0) => B"0001"
    );
SumD_sub_temp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(0),
      O => SumD_sub_temp_carry_i_1_n_0
    );
SumD_sub_temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(4),
      I1 => Filter_x_reg_reg(4),
      O => SumD_sub_temp_carry_i_2_n_0
    );
SumD_sub_temp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(3),
      I1 => Filter_x_reg_reg(3),
      O => SumD_sub_temp_carry_i_3_n_0
    );
SumD_sub_temp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(2),
      I1 => Filter_x_reg_reg(2),
      O => SumD_sub_temp_carry_i_4_n_0
    );
SumD_sub_temp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => SumD_sub_cast(1),
      I1 => Filter_x_reg_reg(1),
      O => SumD_sub_temp_carry_i_5_n_0
    );
\Sum_add_temp_1__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum_add_temp_1__2_carry_n_0\,
      CO(2) => \Sum_add_temp_1__2_carry_n_1\,
      CO(1) => \Sum_add_temp_1__2_carry_n_2\,
      CO(0) => \Sum_add_temp_1__2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => Sum_add_cast_2(7 downto 5),
      DI(0) => '0',
      O(3 downto 0) => \NLW_Sum_add_temp_1__2_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \Sum_add_temp_1__2_carry_i_1_n_0\,
      S(2) => \Sum_add_temp_1__2_carry_i_2_n_0\,
      S(1) => \Sum_add_temp_1__2_carry_i_3_n_0\,
      S(0) => Integrator_x_reg_reg(4)
    );
\Sum_add_temp_1__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_1__2_carry_n_0\,
      CO(3) => \Sum_add_temp_1__2_carry__0_n_0\,
      CO(2) => \Sum_add_temp_1__2_carry__0_n_1\,
      CO(1) => \Sum_add_temp_1__2_carry__0_n_2\,
      CO(0) => \Sum_add_temp_1__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_add_temp_1__2_carry__0_i_1_n_0\,
      DI(2) => \Sum_add_temp_1__2_carry__0_i_2_n_0\,
      DI(1) => Proportional_Gain_mul_temp_n_91,
      DI(0) => Sum_add_cast_2(8),
      O(3 downto 1) => \^pwm_out[0]\(2 downto 0),
      O(0) => \NLW_Sum_add_temp_1__2_carry__0_O_UNCONNECTED\(0),
      S(3) => \Sum_add_temp_1__2_carry__0_i_3_n_0\,
      S(2) => \Sum_add_temp_1__2_carry__0_i_4_n_0\,
      S(1) => \Sum_add_temp_1__2_carry__0_i_5_n_0\,
      S(0) => \Sum_add_temp_1__2_carry__0_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Integrator_x_reg_reg(10),
      I1 => Sum_add_cast_2(10),
      I2 => Proportional_Gain_mul_temp_n_90,
      O => \Sum_add_temp_1__2_carry__0_i_1_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_90,
      I1 => Integrator_x_reg_reg(10),
      I2 => Sum_add_cast_2(10),
      O => \Sum_add_temp_1__2_carry__0_i_2_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Integrator_x_reg_reg(11),
      I1 => Sum_add_cast_2(11),
      I2 => Proportional_Gain_mul_temp_n_89,
      I3 => \Sum_add_temp_1__2_carry__0_i_1_n_0\,
      O => \Sum_add_temp_1__2_carry__0_i_3_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => Integrator_x_reg_reg(10),
      I1 => Sum_add_cast_2(10),
      I2 => Proportional_Gain_mul_temp_n_90,
      I3 => Sum_add_cast_2(9),
      I4 => Integrator_x_reg_reg(9),
      O => \Sum_add_temp_1__2_carry__0_i_4_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Integrator_x_reg_reg(9),
      I1 => Sum_add_cast_2(9),
      I2 => Proportional_Gain_mul_temp_n_91,
      O => \Sum_add_temp_1__2_carry__0_i_5_n_0\
    );
\Sum_add_temp_1__2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast_2(8),
      I1 => Integrator_x_reg_reg(8),
      O => \Sum_add_temp_1__2_carry__0_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_1__2_carry__0_n_0\,
      CO(3) => \Sum_add_temp_1__2_carry__1_n_0\,
      CO(2) => \Sum_add_temp_1__2_carry__1_n_1\,
      CO(1) => \Sum_add_temp_1__2_carry__1_n_2\,
      CO(0) => \Sum_add_temp_1__2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_add_temp_1__2_carry__1_i_1_n_0\,
      DI(2) => \Sum_add_temp_1__2_carry__1_i_2_n_0\,
      DI(1) => \Sum_add_temp_1__2_carry__1_i_3_n_0\,
      DI(0) => \Sum_add_temp_1__2_carry__1_i_4_n_0\,
      O(3 downto 0) => \^pwm_out[0]\(6 downto 3),
      S(3) => \Sum_add_temp_1__2_carry__1_i_5_n_0\,
      S(2) => \Sum_add_temp_1__2_carry__1_i_6_n_0\,
      S(1) => \Sum_add_temp_1__2_carry__1_i_7_n_0\,
      S(0) => \Sum_add_temp_1__2_carry__1_i_8_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Integrator_x_reg_reg(15),
      I1 => Sum_add_cast_2(15),
      I2 => Proportional_Gain_mul_temp_n_85,
      O => \Sum_add_temp_1__2_carry__1_i_1_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Integrator_x_reg_reg(13),
      I1 => Sum_add_cast_2(13),
      I2 => Proportional_Gain_mul_temp_n_87,
      O => \Sum_add_temp_1__2_carry__1_i_2_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Integrator_x_reg_reg(12),
      I1 => Sum_add_cast_2(12),
      I2 => Proportional_Gain_mul_temp_n_88,
      O => \Sum_add_temp_1__2_carry__1_i_3_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Integrator_x_reg_reg(11),
      I1 => Sum_add_cast_2(11),
      I2 => Proportional_Gain_mul_temp_n_89,
      O => \Sum_add_temp_1__2_carry__1_i_4_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_85,
      I1 => Sum_add_cast_2(15),
      I2 => Integrator_x_reg_reg(15),
      I3 => Proportional_Gain_mul_temp_n_86,
      I4 => Sum_add_cast_2(14),
      I5 => Integrator_x_reg_reg(14),
      O => \Sum_add_temp_1__2_carry__1_i_5_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Sum_add_temp_1__2_carry__1_i_2_n_0\,
      I1 => Sum_add_cast_2(14),
      I2 => Integrator_x_reg_reg(14),
      I3 => Proportional_Gain_mul_temp_n_86,
      O => \Sum_add_temp_1__2_carry__1_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Integrator_x_reg_reg(13),
      I1 => Sum_add_cast_2(13),
      I2 => Proportional_Gain_mul_temp_n_87,
      I3 => \Sum_add_temp_1__2_carry__1_i_3_n_0\,
      O => \Sum_add_temp_1__2_carry__1_i_7_n_0\
    );
\Sum_add_temp_1__2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Integrator_x_reg_reg(12),
      I1 => Sum_add_cast_2(12),
      I2 => Proportional_Gain_mul_temp_n_88,
      I3 => \Sum_add_temp_1__2_carry__1_i_4_n_0\,
      O => \Sum_add_temp_1__2_carry__1_i_8_n_0\
    );
\Sum_add_temp_1__2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_1__2_carry__1_n_0\,
      CO(3) => \Sum_add_temp_1__2_carry__2_n_0\,
      CO(2) => \Sum_add_temp_1__2_carry__2_n_1\,
      CO(1) => \Sum_add_temp_1__2_carry__2_n_2\,
      CO(0) => \Sum_add_temp_1__2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_add_temp_1__2_carry__2_i_1_n_0\,
      DI(2) => \Sum_add_temp_1__2_carry__2_i_2_n_0\,
      DI(1) => \Sum_add_temp_1__2_carry__2_i_3_n_0\,
      DI(0) => \Sum_add_temp_1__2_carry__2_i_4_n_0\,
      O(3) => Sum_add_temp_1(19),
      O(2 downto 0) => \^pwm_out[0]\(9 downto 7),
      S(3) => \Sum_add_temp_1__2_carry__2_i_5_n_0\,
      S(2) => \Sum_add_temp_1__2_carry__2_i_6_n_0\,
      S(1) => \Sum_add_temp_1__2_carry__2_i_7_n_0\,
      S(0) => \Sum_add_temp_1__2_carry__2_i_8_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => Sum_add_cast_2(17),
      I1 => Proportional_Gain_mul_temp_n_83,
      I2 => Sum_add_cast_2(18),
      I3 => Proportional_Gain_mul_temp_n_82,
      O => \Sum_add_temp_1__2_carry__2_i_1_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => Sum_add_cast_2(16),
      I1 => Proportional_Gain_mul_temp_n_84,
      I2 => Sum_add_cast_2(17),
      I3 => Proportional_Gain_mul_temp_n_83,
      O => \Sum_add_temp_1__2_carry__2_i_2_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => Integrator_x_reg_reg(15),
      I1 => Sum_add_cast_2(15),
      I2 => Sum_add_cast_2(16),
      I3 => Proportional_Gain_mul_temp_n_84,
      O => \Sum_add_temp_1__2_carry__2_i_3_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_85,
      I1 => Integrator_x_reg_reg(15),
      I2 => Sum_add_cast_2(15),
      O => \Sum_add_temp_1__2_carry__2_i_4_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_83,
      I1 => Sum_add_cast_2(17),
      I2 => Proportional_Gain_mul_temp_n_81,
      I3 => Sum_add_cast_2(19),
      I4 => Proportional_Gain_mul_temp_n_82,
      I5 => Sum_add_cast_2(18),
      O => \Sum_add_temp_1__2_carry__2_i_5_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_84,
      I1 => Sum_add_cast_2(16),
      I2 => Proportional_Gain_mul_temp_n_82,
      I3 => Sum_add_cast_2(18),
      I4 => Proportional_Gain_mul_temp_n_83,
      I5 => Sum_add_cast_2(17),
      O => \Sum_add_temp_1__2_carry__2_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44B0FF00FF04BB4"
    )
        port map (
      I0 => Sum_add_cast_2(15),
      I1 => Integrator_x_reg_reg(15),
      I2 => Proportional_Gain_mul_temp_n_83,
      I3 => Sum_add_cast_2(17),
      I4 => Proportional_Gain_mul_temp_n_84,
      I5 => Sum_add_cast_2(16),
      O => \Sum_add_temp_1__2_carry__2_i_7_n_0\
    );
\Sum_add_temp_1__2_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69963C"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_85,
      I1 => Proportional_Gain_mul_temp_n_84,
      I2 => Sum_add_cast_2(16),
      I3 => Sum_add_cast_2(15),
      I4 => Integrator_x_reg_reg(15),
      O => \Sum_add_temp_1__2_carry__2_i_8_n_0\
    );
\Sum_add_temp_1__2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_1__2_carry__2_n_0\,
      CO(3) => \Sum_add_temp_1__2_carry__3_n_0\,
      CO(2) => \Sum_add_temp_1__2_carry__3_n_1\,
      CO(1) => \Sum_add_temp_1__2_carry__3_n_2\,
      CO(0) => \Sum_add_temp_1__2_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => Proportional_Gain_mul_temp_n_78,
      DI(2) => Proportional_Gain_mul_temp_n_79,
      DI(1) => \Sum_add_temp_1__2_carry__3_i_1_n_0\,
      DI(0) => \Sum_add_temp_1__2_carry__3_i_2_n_0\,
      O(3 downto 0) => Sum_add_temp_1(23 downto 20),
      S(3) => \Sum_add_temp_1__2_carry__3_i_3_n_0\,
      S(2) => \Sum_add_temp_1__2_carry__3_i_4_n_0\,
      S(1) => \Sum_add_temp_1__2_carry__3_i_5_n_0\,
      S(0) => \Sum_add_temp_1__2_carry__3_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD4"
    )
        port map (
      I0 => Sum_add_cast_2(20),
      I1 => Proportional_Gain_mul_temp_n_80,
      I2 => Sum_add_cast_2(19),
      I3 => Proportional_Gain_mul_temp_n_81,
      O => \Sum_add_temp_1__2_carry__3_i_1_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => Sum_add_cast_2(18),
      I1 => Proportional_Gain_mul_temp_n_82,
      I2 => Sum_add_cast_2(19),
      I3 => Proportional_Gain_mul_temp_n_81,
      O => \Sum_add_temp_1__2_carry__3_i_2_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_78,
      I1 => Proportional_Gain_mul_temp_n_77,
      O => \Sum_add_temp_1__2_carry__3_i_3_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_79,
      I1 => Proportional_Gain_mul_temp_n_78,
      O => \Sum_add_temp_1__2_carry__3_i_4_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_81,
      I1 => Sum_add_cast_2(19),
      I2 => Proportional_Gain_mul_temp_n_80,
      I3 => Sum_add_cast_2(20),
      I4 => Proportional_Gain_mul_temp_n_79,
      O => \Sum_add_temp_1__2_carry__3_i_5_n_0\
    );
\Sum_add_temp_1__2_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_82,
      I1 => Sum_add_cast_2(18),
      I2 => Proportional_Gain_mul_temp_n_80,
      I3 => Sum_add_cast_2(20),
      I4 => Proportional_Gain_mul_temp_n_81,
      I5 => Sum_add_cast_2(19),
      O => \Sum_add_temp_1__2_carry__3_i_6_n_0\
    );
\Sum_add_temp_1__2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_1__2_carry__3_n_0\,
      CO(3 downto 0) => \NLW_Sum_add_temp_1__2_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Sum_add_temp_1__2_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => Sum_add_temp_1(24),
      S(3 downto 1) => B"000",
      S(0) => \Sum_add_temp_1__2_carry__4_i_1_n_0\
    );
\Sum_add_temp_1__2_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Proportional_Gain_mul_temp_n_77,
      I1 => Proportional_Gain_mul_temp_n_76,
      O => \Sum_add_temp_1__2_carry__4_i_1_n_0\
    );
\Sum_add_temp_1__2_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast_2(7),
      I1 => Integrator_x_reg_reg(7),
      O => \Sum_add_temp_1__2_carry_i_1_n_0\
    );
\Sum_add_temp_1__2_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast_2(6),
      I1 => Integrator_x_reg_reg(6),
      O => \Sum_add_temp_1__2_carry_i_2_n_0\
    );
\Sum_add_temp_1__2_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast_2(5),
      I1 => Integrator_x_reg_reg(5),
      O => \Sum_add_temp_1__2_carry_i_3_n_0\
    );
gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000010101011110011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_gain_mul_temp_P_UNCONNECTED(47 downto 31),
      P(30) => in0,
      P(29) => gain_mul_temp_n_76,
      P(28) => gain_mul_temp_n_77,
      P(27) => gain_mul_temp_n_78,
      P(26) => gain_mul_temp_n_79,
      P(25) => gain_mul_temp_n_80,
      P(24) => gain_mul_temp_n_81,
      P(23) => gain_mul_temp_n_82,
      P(22) => gain_mul_temp_n_83,
      P(21) => gain_mul_temp_n_84,
      P(20) => gain_mul_temp_n_85,
      P(19) => gain_mul_temp_n_86,
      P(18) => gain_mul_temp_n_87,
      P(17) => gain_mul_temp_n_88,
      P(16) => gain_mul_temp_n_89,
      P(15) => gain_mul_temp_n_90,
      P(14) => gain_mul_temp_n_91,
      P(13) => gain_mul_temp_n_92,
      P(12) => gain_mul_temp_n_93,
      P(11) => gain_mul_temp_n_94,
      P(10) => gain_mul_temp_n_95,
      P(9) => gain_mul_temp_n_96,
      P(8) => gain_mul_temp_n_97,
      P(7) => gain_mul_temp_n_98,
      P(6) => gain_mul_temp_n_99,
      P(5) => gain_mul_temp_n_100,
      P(4) => gain_mul_temp_n_101,
      P(3) => gain_mul_temp_n_102,
      P(2) => gain_mul_temp_n_103,
      P(1) => gain_mul_temp_n_104,
      P(0) => gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
gain_mul_temp_1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Sum_add_cast_2(20),
      A(28) => Sum_add_cast_2(20),
      A(27) => Sum_add_cast_2(20),
      A(26) => Sum_add_cast_2(20),
      A(25) => Sum_add_cast_2(20),
      A(24) => Sum_add_cast_2(20),
      A(23) => Sum_add_cast_2(20),
      A(22) => Sum_add_cast_2(20),
      A(21) => Sum_add_cast_2(20),
      A(20) => Sum_add_cast_2(20),
      A(19) => Sum_add_cast_2(20),
      A(18) => Sum_add_cast_2(20),
      A(17) => Sum_add_cast_2(20),
      A(16) => Sum_add_cast_2(20),
      A(15 downto 0) => Sum_add_cast_2(20 downto 5),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_gain_mul_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000010101011110011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_gain_mul_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_gain_mul_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_gain_mul_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_gain_mul_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_gain_mul_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_gain_mul_temp_1_P_UNCONNECTED(47 downto 31),
      P(30) => \^gain_mul_temp_1\(30),
      P(29) => gain_mul_temp_1_n_76,
      P(28) => gain_mul_temp_1_n_77,
      P(27) => gain_mul_temp_1_n_78,
      P(26) => gain_mul_temp_1_n_79,
      P(25) => gain_mul_temp_1_n_80,
      P(24) => gain_mul_temp_1_n_81,
      P(23) => gain_mul_temp_1_n_82,
      P(22) => gain_mul_temp_1_n_83,
      P(21) => gain_mul_temp_1_n_84,
      P(20) => gain_mul_temp_1_n_85,
      P(19) => gain_mul_temp_1_n_86,
      P(18) => gain_mul_temp_1_n_87,
      P(17) => gain_mul_temp_1_n_88,
      P(16) => gain_mul_temp_1_n_89,
      P(15) => gain_mul_temp_1_n_90,
      P(14) => gain_mul_temp_1_n_91,
      P(13) => gain_mul_temp_1_n_92,
      P(12) => gain_mul_temp_1_n_93,
      P(11) => gain_mul_temp_1_n_94,
      P(10) => gain_mul_temp_1_n_95,
      P(9) => gain_mul_temp_1_n_96,
      P(8) => gain_mul_temp_1_n_97,
      P(7) => gain_mul_temp_1_n_98,
      P(6) => gain_mul_temp_1_n_99,
      P(5) => gain_mul_temp_1_n_100,
      P(4) => gain_mul_temp_1_n_101,
      P(3) => gain_mul_temp_1_n_102,
      P(2) => gain_mul_temp_1_n_103,
      P(1) => gain_mul_temp_1_n_104,
      P(0) => gain_mul_temp_1_n_105,
      PATTERNBDETECT => NLW_gain_mul_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_gain_mul_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_gain_mul_temp_1_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_gain_mul_temp_1_UNDERFLOW_UNCONNECTED
    );
\pwm_out[10]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out[6]_INST_0_i_1_n_0\,
      CO(3) => \pwm_out[10]_INST_0_i_1_n_0\,
      CO(2) => \pwm_out[10]_INST_0_i_1_n_1\,
      CO(1) => \pwm_out[10]_INST_0_i_1_n_2\,
      CO(0) => \pwm_out[10]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^pwm_out[0]\(9 downto 7),
      O(3 downto 0) => pwm_out_1(10 downto 7),
      S(3) => Sum_add_temp_1(19),
      S(2 downto 0) => Proportional_Gain_mul_temp_2(2 downto 0)
    );
\pwm_out[14]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out[14]_INST_0_i_2_n_0\,
      CO(3 downto 0) => \NLW_pwm_out[14]_INST_0_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pwm_out[14]_INST_0_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => pwm_out_1(15),
      S(3 downto 1) => B"000",
      S(0) => Sum_add_temp_1(24)
    );
\pwm_out[14]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out[10]_INST_0_i_1_n_0\,
      CO(3) => \pwm_out[14]_INST_0_i_2_n_0\,
      CO(2) => \pwm_out[14]_INST_0_i_2_n_1\,
      CO(1) => \pwm_out[14]_INST_0_i_2_n_2\,
      CO(0) => \pwm_out[14]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pwm_out_1(14 downto 11),
      S(3 downto 0) => Sum_add_temp_1(23 downto 20)
    );
\pwm_out[2]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_out[2]_INST_0_i_1_n_0\,
      CO(2) => \pwm_out[2]_INST_0_i_1_n_1\,
      CO(1) => \pwm_out[2]_INST_0_i_1_n_2\,
      CO(0) => \pwm_out[2]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^pwm_out[0]\(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => pwm_out_1(2 downto 0),
      O(0) => \NLW_pwm_out[2]_INST_0_i_1_O_UNCONNECTED\(0),
      S(3 downto 0) => Proportional_Gain_mul_temp_0(3 downto 0)
    );
\pwm_out[6]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_out[2]_INST_0_i_1_n_0\,
      CO(3) => \pwm_out[6]_INST_0_i_1_n_0\,
      CO(2) => \pwm_out[6]_INST_0_i_1_n_1\,
      CO(1) => \pwm_out[6]_INST_0_i_1_n_2\,
      CO(0) => \pwm_out[6]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^pwm_out[0]\(6 downto 3),
      O(3 downto 0) => pwm_out_1(6 downto 3),
      S(3 downto 0) => Proportional_Gain_mul_temp_1(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1 is
  port (
    Sum_out1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1 is
  signal Filter_Coefficient_mul_temp_n_100 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_101 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_102 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_103 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_104 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_105 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_74 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_75 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_76 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_77 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_78 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_79 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_80 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_81 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_82 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_98 : STD_LOGIC;
  signal Filter_Coefficient_mul_temp_n_99 : STD_LOGIC;
  signal \Filter_out1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_1\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_2\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_3\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_4\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_5\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_6\ : STD_LOGIC;
  signal \Filter_out1_carry__0_n_7\ : STD_LOGIC;
  signal \Filter_out1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_1\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_2\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_3\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_4\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_5\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_6\ : STD_LOGIC;
  signal \Filter_out1_carry__1_n_7\ : STD_LOGIC;
  signal \Filter_out1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_1\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_2\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_3\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_4\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_5\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_6\ : STD_LOGIC;
  signal \Filter_out1_carry__2_n_7\ : STD_LOGIC;
  signal Filter_out1_carry_i_1_n_0 : STD_LOGIC;
  signal Filter_out1_carry_i_2_n_0 : STD_LOGIC;
  signal Filter_out1_carry_i_3_n_0 : STD_LOGIC;
  signal Filter_out1_carry_n_0 : STD_LOGIC;
  signal Filter_out1_carry_n_1 : STD_LOGIC;
  signal Filter_out1_carry_n_2 : STD_LOGIC;
  signal Filter_out1_carry_n_3 : STD_LOGIC;
  signal Filter_out1_carry_n_4 : STD_LOGIC;
  signal Filter_out1_carry_n_5 : STD_LOGIC;
  signal Filter_out1_carry_n_6 : STD_LOGIC;
  signal Filter_out1_carry_n_7 : STD_LOGIC;
  signal \Filter_x_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \Filter_x_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal Filter_x_reg_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Filter_x_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Filter_x_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_100 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_101 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_102 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_103 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_104 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_105 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_74 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_91 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_92 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_93 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_94 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_95 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_96 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_97 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_98 : STD_LOGIC;
  signal Proportional_Gain_mul_temp_n_99 : STD_LOGIC;
  signal Sum_add_cast : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Sum_add_cast_1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \Sum_add_temp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_carry__0_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_carry__1_n_3\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_n_1\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_n_2\ : STD_LOGIC;
  signal \Sum_add_temp_carry__2_n_3\ : STD_LOGIC;
  signal Sum_add_temp_carry_i_1_n_0 : STD_LOGIC;
  signal Sum_add_temp_carry_i_2_n_0 : STD_LOGIC;
  signal Sum_add_temp_carry_i_3_n_0 : STD_LOGIC;
  signal Sum_add_temp_carry_n_0 : STD_LOGIC;
  signal Sum_add_temp_carry_n_1 : STD_LOGIC;
  signal Sum_add_temp_carry_n_2 : STD_LOGIC;
  signal Sum_add_temp_carry_n_3 : STD_LOGIC;
  signal \^gain_mul_temp\ : STD_LOGIC_VECTOR ( 30 to 30 );
  signal gain_mul_temp_n_100 : STD_LOGIC;
  signal gain_mul_temp_n_101 : STD_LOGIC;
  signal gain_mul_temp_n_102 : STD_LOGIC;
  signal gain_mul_temp_n_103 : STD_LOGIC;
  signal gain_mul_temp_n_104 : STD_LOGIC;
  signal gain_mul_temp_n_105 : STD_LOGIC;
  signal gain_mul_temp_n_76 : STD_LOGIC;
  signal gain_mul_temp_n_77 : STD_LOGIC;
  signal gain_mul_temp_n_78 : STD_LOGIC;
  signal gain_mul_temp_n_79 : STD_LOGIC;
  signal gain_mul_temp_n_80 : STD_LOGIC;
  signal gain_mul_temp_n_81 : STD_LOGIC;
  signal gain_mul_temp_n_82 : STD_LOGIC;
  signal gain_mul_temp_n_83 : STD_LOGIC;
  signal gain_mul_temp_n_84 : STD_LOGIC;
  signal gain_mul_temp_n_85 : STD_LOGIC;
  signal gain_mul_temp_n_86 : STD_LOGIC;
  signal gain_mul_temp_n_87 : STD_LOGIC;
  signal gain_mul_temp_n_88 : STD_LOGIC;
  signal gain_mul_temp_n_89 : STD_LOGIC;
  signal gain_mul_temp_n_90 : STD_LOGIC;
  signal gain_mul_temp_n_91 : STD_LOGIC;
  signal gain_mul_temp_n_92 : STD_LOGIC;
  signal gain_mul_temp_n_93 : STD_LOGIC;
  signal gain_mul_temp_n_94 : STD_LOGIC;
  signal gain_mul_temp_n_95 : STD_LOGIC;
  signal gain_mul_temp_n_96 : STD_LOGIC;
  signal gain_mul_temp_n_97 : STD_LOGIC;
  signal gain_mul_temp_n_98 : STD_LOGIC;
  signal gain_mul_temp_n_99 : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Filter_out1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Filter_x_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Proportional_Gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Sum_add_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum_add_temp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum_add_temp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Filter_Coefficient_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Proportional_Gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
begin
Filter_Coefficient_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \Filter_out1_carry__2_n_4\,
      A(28) => \Filter_out1_carry__2_n_4\,
      A(27) => \Filter_out1_carry__2_n_4\,
      A(26) => \Filter_out1_carry__2_n_4\,
      A(25) => \Filter_out1_carry__2_n_4\,
      A(24) => \Filter_out1_carry__2_n_4\,
      A(23) => \Filter_out1_carry__2_n_4\,
      A(22) => \Filter_out1_carry__2_n_4\,
      A(21) => \Filter_out1_carry__2_n_4\,
      A(20) => \Filter_out1_carry__2_n_4\,
      A(19) => \Filter_out1_carry__2_n_4\,
      A(18) => \Filter_out1_carry__2_n_4\,
      A(17) => \Filter_out1_carry__2_n_4\,
      A(16) => \Filter_out1_carry__2_n_4\,
      A(15) => \Filter_out1_carry__2_n_4\,
      A(14) => \Filter_out1_carry__2_n_5\,
      A(13) => \Filter_out1_carry__2_n_6\,
      A(12) => \Filter_out1_carry__2_n_7\,
      A(11) => \Filter_out1_carry__1_n_4\,
      A(10) => \Filter_out1_carry__1_n_5\,
      A(9) => \Filter_out1_carry__1_n_6\,
      A(8) => \Filter_out1_carry__1_n_7\,
      A(7) => \Filter_out1_carry__0_n_4\,
      A(6) => \Filter_out1_carry__0_n_5\,
      A(5) => \Filter_out1_carry__0_n_6\,
      A(4) => \Filter_out1_carry__0_n_7\,
      A(3) => Filter_out1_carry_n_4,
      A(2) => Filter_out1_carry_n_5,
      A(1) => Filter_out1_carry_n_6,
      A(0) => Filter_out1_carry_n_7,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Filter_Coefficient_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000110010000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Filter_Coefficient_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Filter_Coefficient_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Filter_Coefficient_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Filter_Coefficient_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Filter_Coefficient_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Filter_Coefficient_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Filter_Coefficient_mul_temp_n_74,
      P(30) => Filter_Coefficient_mul_temp_n_75,
      P(29) => Filter_Coefficient_mul_temp_n_76,
      P(28) => Filter_Coefficient_mul_temp_n_77,
      P(27) => Filter_Coefficient_mul_temp_n_78,
      P(26) => Filter_Coefficient_mul_temp_n_79,
      P(25) => Filter_Coefficient_mul_temp_n_80,
      P(24) => Filter_Coefficient_mul_temp_n_81,
      P(23) => Filter_Coefficient_mul_temp_n_82,
      P(22 downto 8) => Sum_add_cast_1(15 downto 1),
      P(7) => Filter_Coefficient_mul_temp_n_98,
      P(6) => Filter_Coefficient_mul_temp_n_99,
      P(5) => Filter_Coefficient_mul_temp_n_100,
      P(4) => Filter_Coefficient_mul_temp_n_101,
      P(3) => Filter_Coefficient_mul_temp_n_102,
      P(2) => Filter_Coefficient_mul_temp_n_103,
      P(1) => Filter_Coefficient_mul_temp_n_104,
      P(0) => Filter_Coefficient_mul_temp_n_105,
      PATTERNBDETECT => NLW_Filter_Coefficient_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Filter_Coefficient_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Filter_Coefficient_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Filter_Coefficient_mul_temp_UNDERFLOW_UNCONNECTED
    );
Filter_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Filter_out1_carry_n_0,
      CO(2) => Filter_out1_carry_n_1,
      CO(1) => Filter_out1_carry_n_2,
      CO(0) => Filter_out1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => Filter_out1_carry_n_4,
      O(2) => Filter_out1_carry_n_5,
      O(1) => Filter_out1_carry_n_6,
      O(0) => Filter_out1_carry_n_7,
      S(3) => Filter_out1_carry_i_1_n_0,
      S(2) => Filter_out1_carry_i_2_n_0,
      S(1) => Filter_out1_carry_i_3_n_0,
      S(0) => Filter_x_reg_reg(0)
    );
\Filter_out1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Filter_out1_carry_n_0,
      CO(3) => \Filter_out1_carry__0_n_0\,
      CO(2) => \Filter_out1_carry__0_n_1\,
      CO(1) => \Filter_out1_carry__0_n_2\,
      CO(0) => \Filter_out1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Filter_out1_carry__0_n_4\,
      O(2) => \Filter_out1_carry__0_n_5\,
      O(1) => \Filter_out1_carry__0_n_6\,
      O(0) => \Filter_out1_carry__0_n_7\,
      S(3) => \Filter_out1_carry__0_i_1_n_0\,
      S(2) => \Filter_out1_carry__0_i_2_n_0\,
      S(1) => \Filter_out1_carry__0_i_3_n_0\,
      S(0) => \Filter_out1_carry__0_i_4_n_0\
    );
\Filter_out1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(7),
      O => \Filter_out1_carry__0_i_1_n_0\
    );
\Filter_out1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(6),
      O => \Filter_out1_carry__0_i_2_n_0\
    );
\Filter_out1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(5),
      O => \Filter_out1_carry__0_i_3_n_0\
    );
\Filter_out1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(4),
      O => \Filter_out1_carry__0_i_4_n_0\
    );
\Filter_out1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_out1_carry__0_n_0\,
      CO(3) => \Filter_out1_carry__1_n_0\,
      CO(2) => \Filter_out1_carry__1_n_1\,
      CO(1) => \Filter_out1_carry__1_n_2\,
      CO(0) => \Filter_out1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Filter_out1_carry__1_n_4\,
      O(2) => \Filter_out1_carry__1_n_5\,
      O(1) => \Filter_out1_carry__1_n_6\,
      O(0) => \Filter_out1_carry__1_n_7\,
      S(3) => \Filter_out1_carry__1_i_1_n_0\,
      S(2) => \Filter_out1_carry__1_i_2_n_0\,
      S(1) => \Filter_out1_carry__1_i_3_n_0\,
      S(0) => \Filter_out1_carry__1_i_4_n_0\
    );
\Filter_out1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(11),
      O => \Filter_out1_carry__1_i_1_n_0\
    );
\Filter_out1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(10),
      O => \Filter_out1_carry__1_i_2_n_0\
    );
\Filter_out1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(9),
      O => \Filter_out1_carry__1_i_3_n_0\
    );
\Filter_out1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(8),
      O => \Filter_out1_carry__1_i_4_n_0\
    );
\Filter_out1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_out1_carry__1_n_0\,
      CO(3) => \NLW_Filter_out1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Filter_out1_carry__2_n_1\,
      CO(1) => \Filter_out1_carry__2_n_2\,
      CO(0) => \Filter_out1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Filter_out1_carry__2_n_4\,
      O(2) => \Filter_out1_carry__2_n_5\,
      O(1) => \Filter_out1_carry__2_n_6\,
      O(0) => \Filter_out1_carry__2_n_7\,
      S(3) => \Filter_out1_carry__2_i_1_n_0\,
      S(2) => \Filter_out1_carry__2_i_2_n_0\,
      S(1) => \Filter_out1_carry__2_i_3_n_0\,
      S(0) => \Filter_out1_carry__2_i_4_n_0\
    );
\Filter_out1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(15),
      O => \Filter_out1_carry__2_i_1_n_0\
    );
\Filter_out1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(14),
      O => \Filter_out1_carry__2_i_2_n_0\
    );
\Filter_out1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(13),
      O => \Filter_out1_carry__2_i_3_n_0\
    );
\Filter_out1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(12),
      O => \Filter_out1_carry__2_i_4_n_0\
    );
Filter_out1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(3),
      O => Filter_out1_carry_i_1_n_0
    );
Filter_out1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(2),
      O => Filter_out1_carry_i_2_n_0
    );
Filter_out1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Filter_x_reg_reg(1),
      O => Filter_out1_carry_i_3_n_0
    );
\Filter_x_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(3),
      O => \Filter_x_reg[0]_i_2_n_0\
    );
\Filter_x_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(2),
      O => \Filter_x_reg[0]_i_3_n_0\
    );
\Filter_x_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(1),
      O => \Filter_x_reg[0]_i_4_n_0\
    );
\Filter_x_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(0),
      O => \Filter_x_reg[0]_i_5_n_0\
    );
\Filter_x_reg[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(15),
      O => \Filter_x_reg[12]_i_2_n_0\
    );
\Filter_x_reg[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(14),
      O => \Filter_x_reg[12]_i_3_n_0\
    );
\Filter_x_reg[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(13),
      O => \Filter_x_reg[12]_i_4_n_0\
    );
\Filter_x_reg[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(12),
      O => \Filter_x_reg[12]_i_5_n_0\
    );
\Filter_x_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(7),
      O => \Filter_x_reg[4]_i_2_n_0\
    );
\Filter_x_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(6),
      O => \Filter_x_reg[4]_i_3_n_0\
    );
\Filter_x_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(5),
      O => \Filter_x_reg[4]_i_4_n_0\
    );
\Filter_x_reg[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(4),
      O => \Filter_x_reg[4]_i_5_n_0\
    );
\Filter_x_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(11),
      O => \Filter_x_reg[8]_i_2_n_0\
    );
\Filter_x_reg[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(10),
      O => \Filter_x_reg[8]_i_3_n_0\
    );
\Filter_x_reg[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(9),
      O => \Filter_x_reg[8]_i_4_n_0\
    );
\Filter_x_reg[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gain_mul_temp\(30),
      I1 => Filter_x_reg_reg(8),
      O => \Filter_x_reg[8]_i_5_n_0\
    );
\Filter_x_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1_n_7\,
      Q => Filter_x_reg_reg(0)
    );
\Filter_x_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Filter_x_reg_reg[0]_i_1_n_0\,
      CO(2) => \Filter_x_reg_reg[0]_i_1_n_1\,
      CO(1) => \Filter_x_reg_reg[0]_i_1_n_2\,
      CO(0) => \Filter_x_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp\(30),
      DI(2) => \^gain_mul_temp\(30),
      DI(1) => \^gain_mul_temp\(30),
      DI(0) => \^gain_mul_temp\(30),
      O(3) => \Filter_x_reg_reg[0]_i_1_n_4\,
      O(2) => \Filter_x_reg_reg[0]_i_1_n_5\,
      O(1) => \Filter_x_reg_reg[0]_i_1_n_6\,
      O(0) => \Filter_x_reg_reg[0]_i_1_n_7\,
      S(3) => \Filter_x_reg[0]_i_2_n_0\,
      S(2) => \Filter_x_reg[0]_i_3_n_0\,
      S(1) => \Filter_x_reg[0]_i_4_n_0\,
      S(0) => \Filter_x_reg[0]_i_5_n_0\
    );
\Filter_x_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1_n_5\,
      Q => Filter_x_reg_reg(10)
    );
\Filter_x_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1_n_4\,
      Q => Filter_x_reg_reg(11)
    );
\Filter_x_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1_n_7\,
      Q => Filter_x_reg_reg(12)
    );
\Filter_x_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[8]_i_1_n_0\,
      CO(3) => \NLW_Filter_x_reg_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Filter_x_reg_reg[12]_i_1_n_1\,
      CO(1) => \Filter_x_reg_reg[12]_i_1_n_2\,
      CO(0) => \Filter_x_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^gain_mul_temp\(30),
      DI(1) => \^gain_mul_temp\(30),
      DI(0) => \^gain_mul_temp\(30),
      O(3) => \Filter_x_reg_reg[12]_i_1_n_4\,
      O(2) => \Filter_x_reg_reg[12]_i_1_n_5\,
      O(1) => \Filter_x_reg_reg[12]_i_1_n_6\,
      O(0) => \Filter_x_reg_reg[12]_i_1_n_7\,
      S(3) => \Filter_x_reg[12]_i_2_n_0\,
      S(2) => \Filter_x_reg[12]_i_3_n_0\,
      S(1) => \Filter_x_reg[12]_i_4_n_0\,
      S(0) => \Filter_x_reg[12]_i_5_n_0\
    );
\Filter_x_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1_n_6\,
      Q => Filter_x_reg_reg(13)
    );
\Filter_x_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1_n_5\,
      Q => Filter_x_reg_reg(14)
    );
\Filter_x_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[12]_i_1_n_4\,
      Q => Filter_x_reg_reg(15)
    );
\Filter_x_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1_n_6\,
      Q => Filter_x_reg_reg(1)
    );
\Filter_x_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1_n_5\,
      Q => Filter_x_reg_reg(2)
    );
\Filter_x_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[0]_i_1_n_4\,
      Q => Filter_x_reg_reg(3)
    );
\Filter_x_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1_n_7\,
      Q => Filter_x_reg_reg(4)
    );
\Filter_x_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[0]_i_1_n_0\,
      CO(3) => \Filter_x_reg_reg[4]_i_1_n_0\,
      CO(2) => \Filter_x_reg_reg[4]_i_1_n_1\,
      CO(1) => \Filter_x_reg_reg[4]_i_1_n_2\,
      CO(0) => \Filter_x_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp\(30),
      DI(2) => \^gain_mul_temp\(30),
      DI(1) => \^gain_mul_temp\(30),
      DI(0) => \^gain_mul_temp\(30),
      O(3) => \Filter_x_reg_reg[4]_i_1_n_4\,
      O(2) => \Filter_x_reg_reg[4]_i_1_n_5\,
      O(1) => \Filter_x_reg_reg[4]_i_1_n_6\,
      O(0) => \Filter_x_reg_reg[4]_i_1_n_7\,
      S(3) => \Filter_x_reg[4]_i_2_n_0\,
      S(2) => \Filter_x_reg[4]_i_3_n_0\,
      S(1) => \Filter_x_reg[4]_i_4_n_0\,
      S(0) => \Filter_x_reg[4]_i_5_n_0\
    );
\Filter_x_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1_n_6\,
      Q => Filter_x_reg_reg(5)
    );
\Filter_x_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1_n_5\,
      Q => Filter_x_reg_reg(6)
    );
\Filter_x_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[4]_i_1_n_4\,
      Q => Filter_x_reg_reg(7)
    );
\Filter_x_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1_n_7\,
      Q => Filter_x_reg_reg(8)
    );
\Filter_x_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Filter_x_reg_reg[4]_i_1_n_0\,
      CO(3) => \Filter_x_reg_reg[8]_i_1_n_0\,
      CO(2) => \Filter_x_reg_reg[8]_i_1_n_1\,
      CO(1) => \Filter_x_reg_reg[8]_i_1_n_2\,
      CO(0) => \Filter_x_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \^gain_mul_temp\(30),
      DI(2) => \^gain_mul_temp\(30),
      DI(1) => \^gain_mul_temp\(30),
      DI(0) => \^gain_mul_temp\(30),
      O(3) => \Filter_x_reg_reg[8]_i_1_n_4\,
      O(2) => \Filter_x_reg_reg[8]_i_1_n_5\,
      O(1) => \Filter_x_reg_reg[8]_i_1_n_6\,
      O(0) => \Filter_x_reg_reg[8]_i_1_n_7\,
      S(3) => \Filter_x_reg[8]_i_2_n_0\,
      S(2) => \Filter_x_reg[8]_i_3_n_0\,
      S(1) => \Filter_x_reg[8]_i_4_n_0\,
      S(0) => \Filter_x_reg[8]_i_5_n_0\
    );
\Filter_x_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset_out,
      D => \Filter_x_reg_reg[8]_i_1_n_6\,
      Q => Filter_x_reg_reg(9)
    );
Proportional_Gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => In3(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Proportional_Gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001011101110000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Proportional_Gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Proportional_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Proportional_Gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_Proportional_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Proportional_Gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Proportional_Gain_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Proportional_Gain_mul_temp_n_74,
      P(30 downto 15) => Sum_add_cast(15 downto 0),
      P(14) => Proportional_Gain_mul_temp_n_91,
      P(13) => Proportional_Gain_mul_temp_n_92,
      P(12) => Proportional_Gain_mul_temp_n_93,
      P(11) => Proportional_Gain_mul_temp_n_94,
      P(10) => Proportional_Gain_mul_temp_n_95,
      P(9) => Proportional_Gain_mul_temp_n_96,
      P(8) => Proportional_Gain_mul_temp_n_97,
      P(7) => Proportional_Gain_mul_temp_n_98,
      P(6) => Proportional_Gain_mul_temp_n_99,
      P(5) => Proportional_Gain_mul_temp_n_100,
      P(4) => Proportional_Gain_mul_temp_n_101,
      P(3) => Proportional_Gain_mul_temp_n_102,
      P(2) => Proportional_Gain_mul_temp_n_103,
      P(1) => Proportional_Gain_mul_temp_n_104,
      P(0) => Proportional_Gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_Proportional_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Proportional_Gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Proportional_Gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_Proportional_Gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
Sum_add_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Sum_add_temp_carry_n_0,
      CO(2) => Sum_add_temp_carry_n_1,
      CO(1) => Sum_add_temp_carry_n_2,
      CO(0) => Sum_add_temp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => Sum_add_cast(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => NLW_Sum_add_temp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Sum_add_temp_carry_i_1_n_0,
      S(2) => Sum_add_temp_carry_i_2_n_0,
      S(1) => Sum_add_temp_carry_i_3_n_0,
      S(0) => Sum_add_cast(0)
    );
\Sum_add_temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Sum_add_temp_carry_n_0,
      CO(3) => \Sum_add_temp_carry__0_n_0\,
      CO(2) => \Sum_add_temp_carry__0_n_1\,
      CO(1) => \Sum_add_temp_carry__0_n_2\,
      CO(0) => \Sum_add_temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Sum_add_cast(7 downto 4),
      O(3 downto 1) => Sum_out1(2 downto 0),
      O(0) => \NLW_Sum_add_temp_carry__0_O_UNCONNECTED\(0),
      S(3) => \Sum_add_temp_carry__0_i_1_n_0\,
      S(2) => \Sum_add_temp_carry__0_i_2_n_0\,
      S(1) => \Sum_add_temp_carry__0_i_3_n_0\,
      S(0) => \Sum_add_temp_carry__0_i_4_n_0\
    );
\Sum_add_temp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(7),
      I1 => Sum_add_cast_1(7),
      O => \Sum_add_temp_carry__0_i_1_n_0\
    );
\Sum_add_temp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(6),
      I1 => Sum_add_cast_1(6),
      O => \Sum_add_temp_carry__0_i_2_n_0\
    );
\Sum_add_temp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(5),
      I1 => Sum_add_cast_1(5),
      O => \Sum_add_temp_carry__0_i_3_n_0\
    );
\Sum_add_temp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(4),
      I1 => Sum_add_cast_1(4),
      O => \Sum_add_temp_carry__0_i_4_n_0\
    );
\Sum_add_temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_carry__0_n_0\,
      CO(3) => \Sum_add_temp_carry__1_n_0\,
      CO(2) => \Sum_add_temp_carry__1_n_1\,
      CO(1) => \Sum_add_temp_carry__1_n_2\,
      CO(0) => \Sum_add_temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Sum_add_cast(11 downto 8),
      O(3 downto 0) => Sum_out1(6 downto 3),
      S(3) => \Sum_add_temp_carry__1_i_1_n_0\,
      S(2) => \Sum_add_temp_carry__1_i_2_n_0\,
      S(1) => \Sum_add_temp_carry__1_i_3_n_0\,
      S(0) => \Sum_add_temp_carry__1_i_4_n_0\
    );
\Sum_add_temp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(11),
      I1 => Sum_add_cast_1(11),
      O => \Sum_add_temp_carry__1_i_1_n_0\
    );
\Sum_add_temp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(10),
      I1 => Sum_add_cast_1(10),
      O => \Sum_add_temp_carry__1_i_2_n_0\
    );
\Sum_add_temp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(9),
      I1 => Sum_add_cast_1(9),
      O => \Sum_add_temp_carry__1_i_3_n_0\
    );
\Sum_add_temp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(8),
      I1 => Sum_add_cast_1(8),
      O => \Sum_add_temp_carry__1_i_4_n_0\
    );
\Sum_add_temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_add_temp_carry__1_n_0\,
      CO(3) => \NLW_Sum_add_temp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Sum_add_temp_carry__2_n_1\,
      CO(1) => \Sum_add_temp_carry__2_n_2\,
      CO(0) => \Sum_add_temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Sum_add_cast(14 downto 12),
      O(3 downto 0) => Sum_out1(10 downto 7),
      S(3) => \Sum_add_temp_carry__2_i_1_n_0\,
      S(2) => \Sum_add_temp_carry__2_i_2_n_0\,
      S(1) => \Sum_add_temp_carry__2_i_3_n_0\,
      S(0) => \Sum_add_temp_carry__2_i_4_n_0\
    );
\Sum_add_temp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(15),
      I1 => Sum_add_cast_1(15),
      O => \Sum_add_temp_carry__2_i_1_n_0\
    );
\Sum_add_temp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(14),
      I1 => Sum_add_cast_1(14),
      O => \Sum_add_temp_carry__2_i_2_n_0\
    );
\Sum_add_temp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(13),
      I1 => Sum_add_cast_1(13),
      O => \Sum_add_temp_carry__2_i_3_n_0\
    );
\Sum_add_temp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(12),
      I1 => Sum_add_cast_1(12),
      O => \Sum_add_temp_carry__2_i_4_n_0\
    );
Sum_add_temp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(3),
      I1 => Sum_add_cast_1(3),
      O => Sum_add_temp_carry_i_1_n_0
    );
Sum_add_temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(2),
      I1 => Sum_add_cast_1(2),
      O => Sum_add_temp_carry_i_2_n_0
    );
Sum_add_temp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_cast(1),
      I1 => Sum_add_cast_1(1),
      O => Sum_add_temp_carry_i_3_n_0
    );
gain_mul_temp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => Filter_Coefficient_mul_temp_n_82,
      A(28) => Filter_Coefficient_mul_temp_n_82,
      A(27) => Filter_Coefficient_mul_temp_n_82,
      A(26) => Filter_Coefficient_mul_temp_n_82,
      A(25) => Filter_Coefficient_mul_temp_n_82,
      A(24) => Filter_Coefficient_mul_temp_n_82,
      A(23) => Filter_Coefficient_mul_temp_n_82,
      A(22) => Filter_Coefficient_mul_temp_n_82,
      A(21) => Filter_Coefficient_mul_temp_n_82,
      A(20) => Filter_Coefficient_mul_temp_n_82,
      A(19) => Filter_Coefficient_mul_temp_n_82,
      A(18) => Filter_Coefficient_mul_temp_n_82,
      A(17) => Filter_Coefficient_mul_temp_n_82,
      A(16) => Filter_Coefficient_mul_temp_n_82,
      A(15) => Filter_Coefficient_mul_temp_n_82,
      A(14 downto 0) => Sum_add_cast_1(15 downto 1),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000010101011110011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_gain_mul_temp_P_UNCONNECTED(47 downto 31),
      P(30) => \^gain_mul_temp\(30),
      P(29) => gain_mul_temp_n_76,
      P(28) => gain_mul_temp_n_77,
      P(27) => gain_mul_temp_n_78,
      P(26) => gain_mul_temp_n_79,
      P(25) => gain_mul_temp_n_80,
      P(24) => gain_mul_temp_n_81,
      P(23) => gain_mul_temp_n_82,
      P(22) => gain_mul_temp_n_83,
      P(21) => gain_mul_temp_n_84,
      P(20) => gain_mul_temp_n_85,
      P(19) => gain_mul_temp_n_86,
      P(18) => gain_mul_temp_n_87,
      P(17) => gain_mul_temp_n_88,
      P(16) => gain_mul_temp_n_89,
      P(15) => gain_mul_temp_n_90,
      P(14) => gain_mul_temp_n_91,
      P(13) => gain_mul_temp_n_92,
      P(12) => gain_mul_temp_n_93,
      P(11) => gain_mul_temp_n_94,
      P(10) => gain_mul_temp_n_95,
      P(9) => gain_mul_temp_n_96,
      P(8) => gain_mul_temp_n_97,
      P(7) => gain_mul_temp_n_98,
      P(6) => gain_mul_temp_n_99,
      P(5) => gain_mul_temp_n_100,
      P(4) => gain_mul_temp_n_101,
      P(3) => gain_mul_temp_n_102,
      P(2) => gain_mul_temp_n_103,
      P(1) => gain_mul_temp_n_104,
      P(0) => gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem is
  port (
    pwm_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    des_x : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem is
  signal B : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Saturation1_out110_in : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_n_1\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_n_2\ : STD_LOGIC;
  signal \Saturation1_out11_carry__0_n_3\ : STD_LOGIC;
  signal Saturation1_out11_carry_i_1_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_2_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_3_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_4_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_5_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_6_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_i_7_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_n_0 : STD_LOGIC;
  signal Saturation1_out11_carry_n_1 : STD_LOGIC;
  signal Saturation1_out11_carry_n_2 : STD_LOGIC;
  signal Saturation1_out11_carry_n_3 : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_n_1\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_n_2\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__0_n_3\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__1_n_0\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__1_n_1\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__1_n_2\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__1_n_3\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__2_n_1\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__2_n_2\ : STD_LOGIC;
  signal \Sum2_sub_temp_carry__2_n_3\ : STD_LOGIC;
  signal Sum2_sub_temp_carry_n_0 : STD_LOGIC;
  signal Sum2_sub_temp_carry_n_1 : STD_LOGIC;
  signal Sum2_sub_temp_carry_n_2 : STD_LOGIC;
  signal Sum2_sub_temp_carry_n_3 : STD_LOGIC;
  signal Sum_add_temp_1 : STD_LOGIC_VECTOR ( 18 downto 9 );
  signal Sum_out1 : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \pwm_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_out[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal pwm_out_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal u_PID_Controller_n_10 : STD_LOGIC;
  signal u_PID_Controller_n_11 : STD_LOGIC;
  signal u_PID_Controller_n_12 : STD_LOGIC;
  signal u_PID_Controller_n_13 : STD_LOGIC;
  signal u_PID_Controller_n_14 : STD_LOGIC;
  signal u_PID_Controller_n_15 : STD_LOGIC;
  signal u_PID_Controller_n_16 : STD_LOGIC;
  signal u_PID_Controller_n_17 : STD_LOGIC;
  signal u_PID_Controller_n_34 : STD_LOGIC;
  signal u_PID_Controller_n_35 : STD_LOGIC;
  signal u_PID_Controller_n_36 : STD_LOGIC;
  signal u_PID_Controller_n_37 : STD_LOGIC;
  signal u_PID_Controller_n_38 : STD_LOGIC;
  signal u_PID_Controller_n_39 : STD_LOGIC;
  signal u_PID_Controller_n_40 : STD_LOGIC;
  signal u_PID_Controller_n_41 : STD_LOGIC;
  signal u_PID_Controller_n_42 : STD_LOGIC;
  signal u_PID_Controller_n_43 : STD_LOGIC;
  signal u_PID_Controller_n_44 : STD_LOGIC;
  signal u_PID_Controller_n_45 : STD_LOGIC;
  signal u_PID_Controller_n_46 : STD_LOGIC;
  signal u_PID_Controller_n_47 : STD_LOGIC;
  signal u_PID_Controller_n_48 : STD_LOGIC;
  signal u_PID_Controller_n_49 : STD_LOGIC;
  signal u_PID_Controller_n_50 : STD_LOGIC;
  signal u_PID_Controller_n_51 : STD_LOGIC;
  signal u_PID_Controller_n_52 : STD_LOGIC;
  signal u_PID_Controller_n_53 : STD_LOGIC;
  signal u_PID_Controller_n_54 : STD_LOGIC;
  signal u_PID_Controller_n_55 : STD_LOGIC;
  signal NLW_Saturation1_out11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Saturation1_out11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum2_sub_temp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm_out[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm_out[12]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_out[13]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_out[14]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_out[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pwm_out[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pwm_out[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_out[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_out[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_out[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_out[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_out[9]_INST_0\ : label is "soft_lutpair6";
begin
Saturation1_out11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Saturation1_out11_carry_n_0,
      CO(2) => Saturation1_out11_carry_n_1,
      CO(1) => Saturation1_out11_carry_n_2,
      CO(0) => Saturation1_out11_carry_n_3,
      CYINIT => '0',
      DI(3) => Saturation1_out11_carry_i_1_n_0,
      DI(2) => Saturation1_out11_carry_i_2_n_0,
      DI(1) => Saturation1_out11_carry_i_3_n_0,
      DI(0) => pwm_out_1(1),
      O(3 downto 0) => NLW_Saturation1_out11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Saturation1_out11_carry_i_4_n_0,
      S(2) => Saturation1_out11_carry_i_5_n_0,
      S(1) => Saturation1_out11_carry_i_6_n_0,
      S(0) => Saturation1_out11_carry_i_7_n_0
    );
\Saturation1_out11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Saturation1_out11_carry_n_0,
      CO(3) => Saturation1_out110_in,
      CO(2) => \Saturation1_out11_carry__0_n_1\,
      CO(1) => \Saturation1_out11_carry__0_n_2\,
      CO(0) => \Saturation1_out11_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Saturation1_out11_carry__0_i_1_n_0\,
      DI(2) => \Saturation1_out11_carry__0_i_2_n_0\,
      DI(1) => \Saturation1_out11_carry__0_i_3_n_0\,
      DI(0) => \Saturation1_out11_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_Saturation1_out11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Saturation1_out11_carry__0_i_5_n_0\,
      S(2) => \Saturation1_out11_carry__0_i_6_n_0\,
      S(1) => \Saturation1_out11_carry__0_i_7_n_0\,
      S(0) => \Saturation1_out11_carry__0_i_8_n_0\
    );
\Saturation1_out11_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_out_1(14),
      I1 => pwm_out_1(15),
      O => \Saturation1_out11_carry__0_i_1_n_0\
    );
\Saturation1_out11_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(12),
      I1 => pwm_out_1(13),
      O => \Saturation1_out11_carry__0_i_2_n_0\
    );
\Saturation1_out11_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(10),
      I1 => pwm_out_1(11),
      O => \Saturation1_out11_carry__0_i_3_n_0\
    );
\Saturation1_out11_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(8),
      I1 => pwm_out_1(9),
      O => \Saturation1_out11_carry__0_i_4_n_0\
    );
\Saturation1_out11_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(14),
      I1 => pwm_out_1(15),
      O => \Saturation1_out11_carry__0_i_5_n_0\
    );
\Saturation1_out11_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(12),
      I1 => pwm_out_1(13),
      O => \Saturation1_out11_carry__0_i_6_n_0\
    );
\Saturation1_out11_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(10),
      I1 => pwm_out_1(11),
      O => \Saturation1_out11_carry__0_i_7_n_0\
    );
\Saturation1_out11_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(8),
      I1 => pwm_out_1(9),
      O => \Saturation1_out11_carry__0_i_8_n_0\
    );
Saturation1_out11_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(6),
      I1 => pwm_out_1(7),
      O => Saturation1_out11_carry_i_1_n_0
    );
Saturation1_out11_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(4),
      I1 => pwm_out_1(5),
      O => Saturation1_out11_carry_i_2_n_0
    );
Saturation1_out11_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_out_1(2),
      I1 => pwm_out_1(3),
      O => Saturation1_out11_carry_i_3_n_0
    );
Saturation1_out11_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(6),
      I1 => pwm_out_1(7),
      O => Saturation1_out11_carry_i_4_n_0
    );
Saturation1_out11_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(4),
      I1 => pwm_out_1(5),
      O => Saturation1_out11_carry_i_5_n_0
    );
Saturation1_out11_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_out_1(2),
      I1 => pwm_out_1(3),
      O => Saturation1_out11_carry_i_6_n_0
    );
Saturation1_out11_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_out_1(0),
      I1 => pwm_out_1(1),
      O => Saturation1_out11_carry_i_7_n_0
    );
Sum2_sub_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Sum2_sub_temp_carry_n_0,
      CO(2) => Sum2_sub_temp_carry_n_1,
      CO(1) => Sum2_sub_temp_carry_n_2,
      CO(0) => Sum2_sub_temp_carry_n_3,
      CYINIT => '0',
      DI(3) => u_PID_Controller_n_34,
      DI(2) => u_PID_Controller_n_35,
      DI(1) => u_PID_Controller_n_36,
      DI(0) => '0',
      O(3 downto 0) => B(3 downto 0),
      S(3) => u_PID_Controller_n_14,
      S(2) => u_PID_Controller_n_15,
      S(1) => u_PID_Controller_n_16,
      S(0) => u_PID_Controller_n_17
    );
\Sum2_sub_temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Sum2_sub_temp_carry_n_0,
      CO(3) => \Sum2_sub_temp_carry__0_n_0\,
      CO(2) => \Sum2_sub_temp_carry__0_n_1\,
      CO(1) => \Sum2_sub_temp_carry__0_n_2\,
      CO(0) => \Sum2_sub_temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_PID_Controller_n_41,
      DI(2) => u_PID_Controller_n_42,
      DI(1) => u_PID_Controller_n_43,
      DI(0) => u_PID_Controller_n_44,
      O(3 downto 0) => B(7 downto 4),
      S(3) => u_PID_Controller_n_37,
      S(2) => u_PID_Controller_n_38,
      S(1) => u_PID_Controller_n_39,
      S(0) => u_PID_Controller_n_40
    );
\Sum2_sub_temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum2_sub_temp_carry__0_n_0\,
      CO(3) => \Sum2_sub_temp_carry__1_n_0\,
      CO(2) => \Sum2_sub_temp_carry__1_n_1\,
      CO(1) => \Sum2_sub_temp_carry__1_n_2\,
      CO(0) => \Sum2_sub_temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => u_PID_Controller_n_49,
      DI(2) => u_PID_Controller_n_50,
      DI(1) => u_PID_Controller_n_51,
      DI(0) => u_PID_Controller_n_52,
      O(3 downto 0) => B(11 downto 8),
      S(3) => u_PID_Controller_n_45,
      S(2) => u_PID_Controller_n_46,
      S(1) => u_PID_Controller_n_47,
      S(0) => u_PID_Controller_n_48
    );
\Sum2_sub_temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum2_sub_temp_carry__1_n_0\,
      CO(3) => \NLW_Sum2_sub_temp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Sum2_sub_temp_carry__2_n_1\,
      CO(1) => \Sum2_sub_temp_carry__2_n_2\,
      CO(0) => \Sum2_sub_temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => u_PID_Controller_n_53,
      DI(1) => u_PID_Controller_n_54,
      DI(0) => u_PID_Controller_n_55,
      O(3 downto 0) => B(15 downto 12),
      S(3) => u_PID_Controller_n_10,
      S(2) => u_PID_Controller_n_11,
      S(1) => u_PID_Controller_n_12,
      S(0) => u_PID_Controller_n_13
    );
\pwm_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Saturation1_out110_in,
      I1 => pwm_out_1(15),
      I2 => pwm_out_1(0),
      O => pwm_out(0)
    );
\pwm_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(10),
      I2 => Saturation1_out110_in,
      O => pwm_out(10)
    );
\pwm_out[10]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(18),
      I1 => Sum_out1(15),
      O => \pwm_out[10]_INST_0_i_2_n_0\
    );
\pwm_out[10]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(17),
      I1 => Sum_out1(14),
      O => \pwm_out[10]_INST_0_i_3_n_0\
    );
\pwm_out[10]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(16),
      I1 => Sum_out1(13),
      O => \pwm_out[10]_INST_0_i_4_n_0\
    );
\pwm_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(11),
      I2 => Saturation1_out110_in,
      O => pwm_out(11)
    );
\pwm_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(12),
      I2 => Saturation1_out110_in,
      O => pwm_out(12)
    );
\pwm_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(13),
      I2 => Saturation1_out110_in,
      O => pwm_out(13)
    );
\pwm_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(14),
      I2 => Saturation1_out110_in,
      O => pwm_out(14)
    );
\pwm_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(1),
      I2 => Saturation1_out110_in,
      O => pwm_out(1)
    );
\pwm_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(2),
      I2 => Saturation1_out110_in,
      O => pwm_out(2)
    );
\pwm_out[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(11),
      I1 => Sum_out1(8),
      O => \pwm_out[2]_INST_0_i_2_n_0\
    );
\pwm_out[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(10),
      I1 => Sum_out1(7),
      O => \pwm_out[2]_INST_0_i_3_n_0\
    );
\pwm_out[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(9),
      I1 => Sum_out1(6),
      O => \pwm_out[2]_INST_0_i_4_n_0\
    );
\pwm_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(3),
      I2 => Saturation1_out110_in,
      O => pwm_out(3)
    );
\pwm_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(4),
      I2 => Saturation1_out110_in,
      O => pwm_out(4)
    );
\pwm_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(5),
      I2 => Saturation1_out110_in,
      O => pwm_out(5)
    );
\pwm_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(6),
      I2 => Saturation1_out110_in,
      O => pwm_out(6)
    );
\pwm_out[6]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(15),
      I1 => Sum_out1(12),
      O => \pwm_out[6]_INST_0_i_2_n_0\
    );
\pwm_out[6]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(14),
      I1 => Sum_out1(11),
      O => \pwm_out[6]_INST_0_i_3_n_0\
    );
\pwm_out[6]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(13),
      I1 => Sum_out1(10),
      O => \pwm_out[6]_INST_0_i_4_n_0\
    );
\pwm_out[6]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Sum_add_temp_1(12),
      I1 => Sum_out1(9),
      O => \pwm_out[6]_INST_0_i_5_n_0\
    );
\pwm_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(7),
      I2 => Saturation1_out110_in,
      O => pwm_out(7)
    );
\pwm_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(8),
      I2 => Saturation1_out110_in,
      O => pwm_out(8)
    );
\pwm_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pwm_out_1(15),
      I1 => pwm_out_1(9),
      I2 => Saturation1_out110_in,
      O => pwm_out(9)
    );
u_PID_Controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller
     port map (
      DI(2) => u_PID_Controller_n_34,
      DI(1) => u_PID_Controller_n_35,
      DI(0) => u_PID_Controller_n_36,
      IPCORE_CLK => IPCORE_CLK,
      In1(15 downto 0) => In1(15 downto 0),
      \In1[4]\(15 downto 0) => B(15 downto 0),
      Integral_Gain_mul_temp_0(3) => u_PID_Controller_n_14,
      Integral_Gain_mul_temp_0(2) => u_PID_Controller_n_15,
      Integral_Gain_mul_temp_0(1) => u_PID_Controller_n_16,
      Integral_Gain_mul_temp_0(0) => u_PID_Controller_n_17,
      Integral_Gain_mul_temp_1(3) => u_PID_Controller_n_37,
      Integral_Gain_mul_temp_1(2) => u_PID_Controller_n_38,
      Integral_Gain_mul_temp_1(1) => u_PID_Controller_n_39,
      Integral_Gain_mul_temp_1(0) => u_PID_Controller_n_40,
      Integral_Gain_mul_temp_2(3) => u_PID_Controller_n_41,
      Integral_Gain_mul_temp_2(2) => u_PID_Controller_n_42,
      Integral_Gain_mul_temp_2(1) => u_PID_Controller_n_43,
      Integral_Gain_mul_temp_2(0) => u_PID_Controller_n_44,
      Integral_Gain_mul_temp_3(3) => u_PID_Controller_n_45,
      Integral_Gain_mul_temp_3(2) => u_PID_Controller_n_46,
      Integral_Gain_mul_temp_3(1) => u_PID_Controller_n_47,
      Integral_Gain_mul_temp_3(0) => u_PID_Controller_n_48,
      Integral_Gain_mul_temp_4(3) => u_PID_Controller_n_49,
      Integral_Gain_mul_temp_4(2) => u_PID_Controller_n_50,
      Integral_Gain_mul_temp_4(1) => u_PID_Controller_n_51,
      Integral_Gain_mul_temp_4(0) => u_PID_Controller_n_52,
      Integral_Gain_mul_temp_5(2) => u_PID_Controller_n_53,
      Integral_Gain_mul_temp_5(1) => u_PID_Controller_n_54,
      Integral_Gain_mul_temp_5(0) => u_PID_Controller_n_55,
      Proportional_Gain_mul_temp_0(3) => \pwm_out[2]_INST_0_i_2_n_0\,
      Proportional_Gain_mul_temp_0(2) => \pwm_out[2]_INST_0_i_3_n_0\,
      Proportional_Gain_mul_temp_0(1) => \pwm_out[2]_INST_0_i_4_n_0\,
      Proportional_Gain_mul_temp_0(0) => Sum_out1(5),
      Proportional_Gain_mul_temp_1(3) => \pwm_out[6]_INST_0_i_2_n_0\,
      Proportional_Gain_mul_temp_1(2) => \pwm_out[6]_INST_0_i_3_n_0\,
      Proportional_Gain_mul_temp_1(1) => \pwm_out[6]_INST_0_i_4_n_0\,
      Proportional_Gain_mul_temp_1(0) => \pwm_out[6]_INST_0_i_5_n_0\,
      Proportional_Gain_mul_temp_2(2) => \pwm_out[10]_INST_0_i_2_n_0\,
      Proportional_Gain_mul_temp_2(1) => \pwm_out[10]_INST_0_i_3_n_0\,
      Proportional_Gain_mul_temp_2(0) => \pwm_out[10]_INST_0_i_4_n_0\,
      S(3) => u_PID_Controller_n_10,
      S(2) => u_PID_Controller_n_11,
      S(1) => u_PID_Controller_n_12,
      S(0) => u_PID_Controller_n_13,
      des_x(14 downto 0) => des_x(14 downto 0),
      \pwm_out[0]\(9 downto 0) => Sum_add_temp_1(18 downto 9),
      pwm_out_1(15 downto 0) => pwm_out_1(15 downto 0),
      reset_out => reset_out
    );
u_PID_Controller1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_PID_Controller1
     port map (
      IPCORE_CLK => IPCORE_CLK,
      In3(15 downto 0) => In3(15 downto 0),
      Sum_out1(10 downto 0) => Sum_out1(15 downto 5),
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut is
  port (
    pwm_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    des_x : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut is
begin
u_transferf_ip_src_Subsystem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_src_Subsystem
     port map (
      IPCORE_CLK => IPCORE_CLK,
      In1(15 downto 0) => In1(15 downto 0),
      In3(15 downto 0) => In3(15 downto 0),
      des_x(14 downto 0) => des_x(14 downto 0),
      pwm_out(14 downto 0) => pwm_out(14 downto 0),
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip is
  port (
    pwm_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    des_x : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    In3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip is
  signal reset_out : STD_LOGIC;
begin
u_transferf_ip_dut_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_dut
     port map (
      IPCORE_CLK => IPCORE_CLK,
      In1(15 downto 0) => In1(15 downto 0),
      In3(15 downto 0) => In3(15 downto 0),
      des_x(14 downto 0) => des_x(14 downto 0),
      pwm_out(14 downto 0) => pwm_out(14 downto 0),
      reset_out => reset_out
    );
u_transferf_ip_reset_sync_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip_reset_sync
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      reset_out => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    des_x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_design_transferf_ip_0_0,transferf_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "transferf_ip,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^pwm_out\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_1_FCLK_CLK0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW";
begin
  pwm_out(15) <= \<const0>\;
  pwm_out(14 downto 0) <= \^pwm_out\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transferf_ip
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      In1(15 downto 0) => In1(15 downto 0),
      In3(15 downto 0) => In3(15 downto 0),
      des_x(14 downto 0) => des_x(15 downto 1),
      pwm_out(14 downto 0) => \^pwm_out\(14 downto 0)
    );
end STRUCTURE;
