-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Oct 25 13:09:19 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_de_lastig_ip_0_0_sim_netlist.vhdl
-- Design      : Block_design_de_lastig_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync is
  signal reset_in : STD_LOGIC;
  signal reset_pipe : STD_LOGIC;
begin
reset_out_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_pipe,
      PRE => reset_in,
      Q => AR(0)
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit is
  port (
    Output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Input3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Input1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit is
  signal Delay1_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay2_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay3_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Delay_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum_out1__1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__0_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__1_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry__2_n_3\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_i_8_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_0\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_1\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_2\ : STD_LOGIC;
  signal \Sum_out1__1_carry_n_3\ : STD_LOGIC;
  signal \NLW_Sum_out1__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__0_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__1_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__1_i_9\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__2_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Sum_out1__1_carry__2_i_8\ : label is "soft_lutpair3";
begin
\Delay1_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(0),
      Q => Delay1_out1(0)
    );
\Delay1_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(10),
      Q => Delay1_out1(10)
    );
\Delay1_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(11),
      Q => Delay1_out1(11)
    );
\Delay1_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(12),
      Q => Delay1_out1(12)
    );
\Delay1_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(13),
      Q => Delay1_out1(13)
    );
\Delay1_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(14),
      Q => Delay1_out1(14)
    );
\Delay1_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(15),
      Q => Delay1_out1(15)
    );
\Delay1_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(1),
      Q => Delay1_out1(1)
    );
\Delay1_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(2),
      Q => Delay1_out1(2)
    );
\Delay1_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(3),
      Q => Delay1_out1(3)
    );
\Delay1_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(4),
      Q => Delay1_out1(4)
    );
\Delay1_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(5),
      Q => Delay1_out1(5)
    );
\Delay1_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(6),
      Q => Delay1_out1(6)
    );
\Delay1_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(7),
      Q => Delay1_out1(7)
    );
\Delay1_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(8),
      Q => Delay1_out1(8)
    );
\Delay1_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input1(9),
      Q => Delay1_out1(9)
    );
\Delay2_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(0),
      Q => Delay2_out1(0)
    );
\Delay2_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(10),
      Q => Delay2_out1(10)
    );
\Delay2_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(11),
      Q => Delay2_out1(11)
    );
\Delay2_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(12),
      Q => Delay2_out1(12)
    );
\Delay2_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(13),
      Q => Delay2_out1(13)
    );
\Delay2_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(14),
      Q => Delay2_out1(14)
    );
\Delay2_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(15),
      Q => Delay2_out1(15)
    );
\Delay2_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(1),
      Q => Delay2_out1(1)
    );
\Delay2_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(2),
      Q => Delay2_out1(2)
    );
\Delay2_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(3),
      Q => Delay2_out1(3)
    );
\Delay2_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(4),
      Q => Delay2_out1(4)
    );
\Delay2_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(5),
      Q => Delay2_out1(5)
    );
\Delay2_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(6),
      Q => Delay2_out1(6)
    );
\Delay2_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(7),
      Q => Delay2_out1(7)
    );
\Delay2_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(8),
      Q => Delay2_out1(8)
    );
\Delay2_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input2(9),
      Q => Delay2_out1(9)
    );
\Delay3_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(0),
      Q => Delay3_out1(0)
    );
\Delay3_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(10),
      Q => Delay3_out1(10)
    );
\Delay3_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(11),
      Q => Delay3_out1(11)
    );
\Delay3_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(12),
      Q => Delay3_out1(12)
    );
\Delay3_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(13),
      Q => Delay3_out1(13)
    );
\Delay3_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(14),
      Q => Delay3_out1(14)
    );
\Delay3_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(15),
      Q => Delay3_out1(15)
    );
\Delay3_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(1),
      Q => Delay3_out1(1)
    );
\Delay3_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(2),
      Q => Delay3_out1(2)
    );
\Delay3_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(3),
      Q => Delay3_out1(3)
    );
\Delay3_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(4),
      Q => Delay3_out1(4)
    );
\Delay3_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(5),
      Q => Delay3_out1(5)
    );
\Delay3_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(6),
      Q => Delay3_out1(6)
    );
\Delay3_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(7),
      Q => Delay3_out1(7)
    );
\Delay3_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(8),
      Q => Delay3_out1(8)
    );
\Delay3_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input3(9),
      Q => Delay3_out1(9)
    );
\Delay_out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(0),
      Q => Delay_out1(0)
    );
\Delay_out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(10),
      Q => Delay_out1(10)
    );
\Delay_out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(11),
      Q => Delay_out1(11)
    );
\Delay_out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(12),
      Q => Delay_out1(12)
    );
\Delay_out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(13),
      Q => Delay_out1(13)
    );
\Delay_out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(14),
      Q => Delay_out1(14)
    );
\Delay_out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(15),
      Q => Delay_out1(15)
    );
\Delay_out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(1),
      Q => Delay_out1(1)
    );
\Delay_out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(2),
      Q => Delay_out1(2)
    );
\Delay_out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(3),
      Q => Delay_out1(3)
    );
\Delay_out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(4),
      Q => Delay_out1(4)
    );
\Delay_out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(5),
      Q => Delay_out1(5)
    );
\Delay_out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(6),
      Q => Delay_out1(6)
    );
\Delay_out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(7),
      Q => Delay_out1(7)
    );
\Delay_out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(8),
      Q => Delay_out1(8)
    );
\Delay_out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => AR(0),
      D => Input(9),
      Q => Delay_out1(9)
    );
\Sum_out1__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum_out1__1_carry_n_0\,
      CO(2) => \Sum_out1__1_carry_n_1\,
      CO(1) => \Sum_out1__1_carry_n_2\,
      CO(0) => \Sum_out1__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry_i_3_n_0\,
      DI(0) => Delay_out1(0),
      O(3 downto 0) => Output(3 downto 0),
      S(3) => \Sum_out1__1_carry_i_4_n_0\,
      S(2) => \Sum_out1__1_carry_i_5_n_0\,
      S(1) => \Sum_out1__1_carry_i_6_n_0\,
      S(0) => \Sum_out1__1_carry_i_7_n_0\
    );
\Sum_out1__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry_n_0\,
      CO(3) => \Sum_out1__1_carry__0_n_0\,
      CO(2) => \Sum_out1__1_carry__0_n_1\,
      CO(1) => \Sum_out1__1_carry__0_n_2\,
      CO(0) => \Sum_out1__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry__0_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry__0_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry__0_i_3_n_0\,
      DI(0) => \Sum_out1__1_carry__0_i_4_n_0\,
      O(3 downto 0) => Output(7 downto 4),
      S(3) => \Sum_out1__1_carry__0_i_5_n_0\,
      S(2) => \Sum_out1__1_carry__0_i_6_n_0\,
      S(1) => \Sum_out1__1_carry__0_i_7_n_0\,
      S(0) => \Sum_out1__1_carry__0_i_8_n_0\
    );
\Sum_out1__1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(6),
      I1 => Delay3_out1(6),
      I2 => Delay1_out1(6),
      I3 => \Sum_out1__1_carry__0_i_9_n_0\,
      I4 => Delay_out1(6),
      O => \Sum_out1__1_carry__0_i_1_n_0\
    );
\Sum_out1__1_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(5),
      I1 => Delay3_out1(5),
      I2 => Delay1_out1(5),
      O => \Sum_out1__1_carry__0_i_10_n_0\
    );
\Sum_out1__1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(3),
      I1 => Delay2_out1(3),
      I2 => Delay3_out1(3),
      O => \Sum_out1__1_carry__0_i_11_n_0\
    );
\Sum_out1__1_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(3),
      I1 => Delay3_out1(3),
      I2 => Delay1_out1(3),
      O => \Sum_out1__1_carry__0_i_12_n_0\
    );
\Sum_out1__1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(5),
      I1 => Delay3_out1(4),
      I2 => Delay2_out1(4),
      I3 => Delay1_out1(4),
      I4 => \Sum_out1__1_carry__0_i_10_n_0\,
      O => \Sum_out1__1_carry__0_i_2_n_0\
    );
\Sum_out1__1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(4),
      I1 => Delay3_out1(4),
      I2 => Delay1_out1(4),
      I3 => \Sum_out1__1_carry__0_i_11_n_0\,
      I4 => Delay_out1(4),
      O => \Sum_out1__1_carry__0_i_3_n_0\
    );
\Sum_out1__1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(3),
      I1 => Delay3_out1(2),
      I2 => Delay2_out1(2),
      I3 => Delay1_out1(2),
      I4 => \Sum_out1__1_carry__0_i_12_n_0\,
      O => \Sum_out1__1_carry__0_i_4_n_0\
    );
\Sum_out1__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_1_n_0\,
      I1 => \Sum_out1__1_carry__1_i_12_n_0\,
      I2 => Delay_out1(7),
      I3 => Delay1_out1(6),
      I4 => Delay2_out1(6),
      I5 => Delay3_out1(6),
      O => \Sum_out1__1_carry__0_i_5_n_0\
    );
\Sum_out1__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_2_n_0\,
      I1 => Delay1_out1(6),
      I2 => Delay3_out1(6),
      I3 => Delay2_out1(6),
      I4 => Delay_out1(6),
      I5 => \Sum_out1__1_carry__0_i_9_n_0\,
      O => \Sum_out1__1_carry__0_i_6_n_0\
    );
\Sum_out1__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_3_n_0\,
      I1 => \Sum_out1__1_carry__0_i_10_n_0\,
      I2 => Delay_out1(5),
      I3 => Delay1_out1(4),
      I4 => Delay2_out1(4),
      I5 => Delay3_out1(4),
      O => \Sum_out1__1_carry__0_i_7_n_0\
    );
\Sum_out1__1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__0_i_4_n_0\,
      I1 => Delay1_out1(4),
      I2 => Delay3_out1(4),
      I3 => Delay2_out1(4),
      I4 => Delay_out1(4),
      I5 => \Sum_out1__1_carry__0_i_11_n_0\,
      O => \Sum_out1__1_carry__0_i_8_n_0\
    );
\Sum_out1__1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(5),
      I1 => Delay2_out1(5),
      I2 => Delay3_out1(5),
      O => \Sum_out1__1_carry__0_i_9_n_0\
    );
\Sum_out1__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry__0_n_0\,
      CO(3) => \Sum_out1__1_carry__1_n_0\,
      CO(2) => \Sum_out1__1_carry__1_n_1\,
      CO(1) => \Sum_out1__1_carry__1_n_2\,
      CO(0) => \Sum_out1__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Sum_out1__1_carry__1_i_1_n_0\,
      DI(2) => \Sum_out1__1_carry__1_i_2_n_0\,
      DI(1) => \Sum_out1__1_carry__1_i_3_n_0\,
      DI(0) => \Sum_out1__1_carry__1_i_4_n_0\,
      O(3 downto 0) => Output(11 downto 8),
      S(3) => \Sum_out1__1_carry__1_i_5_n_0\,
      S(2) => \Sum_out1__1_carry__1_i_6_n_0\,
      S(1) => \Sum_out1__1_carry__1_i_7_n_0\,
      S(0) => \Sum_out1__1_carry__1_i_8_n_0\
    );
\Sum_out1__1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(10),
      I1 => Delay3_out1(10),
      I2 => Delay1_out1(10),
      I3 => \Sum_out1__1_carry__1_i_9_n_0\,
      I4 => Delay_out1(10),
      O => \Sum_out1__1_carry__1_i_1_n_0\
    );
\Sum_out1__1_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(9),
      I1 => Delay3_out1(9),
      I2 => Delay1_out1(9),
      O => \Sum_out1__1_carry__1_i_10_n_0\
    );
\Sum_out1__1_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(8),
      I1 => Delay3_out1(8),
      I2 => Delay1_out1(8),
      O => \Sum_out1__1_carry__1_i_11_n_0\
    );
\Sum_out1__1_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(7),
      I1 => Delay3_out1(7),
      I2 => Delay1_out1(7),
      O => \Sum_out1__1_carry__1_i_12_n_0\
    );
\Sum_out1__1_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(9),
      I1 => Delay3_out1(8),
      I2 => Delay2_out1(8),
      I3 => Delay1_out1(8),
      I4 => \Sum_out1__1_carry__1_i_10_n_0\,
      O => \Sum_out1__1_carry__1_i_2_n_0\
    );
\Sum_out1__1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(8),
      I1 => Delay3_out1(7),
      I2 => Delay2_out1(7),
      I3 => Delay1_out1(7),
      I4 => \Sum_out1__1_carry__1_i_11_n_0\,
      O => \Sum_out1__1_carry__1_i_3_n_0\
    );
\Sum_out1__1_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(7),
      I1 => Delay3_out1(6),
      I2 => Delay2_out1(6),
      I3 => Delay1_out1(6),
      I4 => \Sum_out1__1_carry__1_i_12_n_0\,
      O => \Sum_out1__1_carry__1_i_4_n_0\
    );
\Sum_out1__1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_1_n_0\,
      I1 => Delay1_out1(11),
      I2 => Delay3_out1(11),
      I3 => Delay2_out1(11),
      I4 => Delay_out1(11),
      I5 => \Sum_out1__1_carry__2_i_10_n_0\,
      O => \Sum_out1__1_carry__1_i_5_n_0\
    );
\Sum_out1__1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_2_n_0\,
      I1 => Delay1_out1(10),
      I2 => Delay3_out1(10),
      I3 => Delay2_out1(10),
      I4 => Delay_out1(10),
      I5 => \Sum_out1__1_carry__1_i_9_n_0\,
      O => \Sum_out1__1_carry__1_i_6_n_0\
    );
\Sum_out1__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_3_n_0\,
      I1 => \Sum_out1__1_carry__1_i_10_n_0\,
      I2 => Delay_out1(9),
      I3 => Delay1_out1(8),
      I4 => Delay2_out1(8),
      I5 => Delay3_out1(8),
      O => \Sum_out1__1_carry__1_i_7_n_0\
    );
\Sum_out1__1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__1_i_4_n_0\,
      I1 => \Sum_out1__1_carry__1_i_11_n_0\,
      I2 => Delay_out1(8),
      I3 => Delay1_out1(7),
      I4 => Delay2_out1(7),
      I5 => Delay3_out1(7),
      O => \Sum_out1__1_carry__1_i_8_n_0\
    );
\Sum_out1__1_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(9),
      I1 => Delay2_out1(9),
      I2 => Delay3_out1(9),
      O => \Sum_out1__1_carry__1_i_9_n_0\
    );
\Sum_out1__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_out1__1_carry__1_n_0\,
      CO(3) => \NLW_Sum_out1__1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Sum_out1__1_carry__2_n_1\,
      CO(1) => \Sum_out1__1_carry__2_n_2\,
      CO(0) => \Sum_out1__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Sum_out1__1_carry__2_i_1_n_0\,
      DI(1) => \Sum_out1__1_carry__2_i_2_n_0\,
      DI(0) => \Sum_out1__1_carry__2_i_3_n_0\,
      O(3 downto 0) => Output(15 downto 12),
      S(3) => \Sum_out1__1_carry__2_i_4_n_0\,
      S(2) => \Sum_out1__1_carry__2_i_5_n_0\,
      S(1) => \Sum_out1__1_carry__2_i_6_n_0\,
      S(0) => \Sum_out1__1_carry__2_i_7_n_0\
    );
\Sum_out1__1_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(13),
      I1 => Delay1_out1(12),
      I2 => Delay2_out1(12),
      I3 => Delay3_out1(12),
      I4 => \Sum_out1__1_carry__2_i_8_n_0\,
      O => \Sum_out1__1_carry__2_i_1_n_0\
    );
\Sum_out1__1_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => Delay1_out1(10),
      I1 => Delay2_out1(10),
      I2 => Delay3_out1(10),
      O => \Sum_out1__1_carry__2_i_10_n_0\
    );
\Sum_out1__1_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => Delay2_out1(13),
      I1 => Delay3_out1(13),
      I2 => Delay1_out1(13),
      O => \Sum_out1__1_carry__2_i_11_n_0\
    );
\Sum_out1__1_carry__2_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Delay1_out1(15),
      I1 => Delay3_out1(15),
      I2 => Delay2_out1(15),
      I3 => Delay_out1(15),
      O => \Sum_out1__1_carry__2_i_12_n_0\
    );
\Sum_out1__1_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFB20A2"
    )
        port map (
      I0 => Delay_out1(12),
      I1 => Delay3_out1(11),
      I2 => Delay2_out1(11),
      I3 => Delay1_out1(11),
      I4 => \Sum_out1__1_carry__2_i_9_n_0\,
      O => \Sum_out1__1_carry__2_i_2_n_0\
    );
\Sum_out1__1_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => Delay2_out1(11),
      I1 => Delay3_out1(11),
      I2 => Delay1_out1(11),
      I3 => \Sum_out1__1_carry__2_i_10_n_0\,
      I4 => Delay_out1(11),
      O => \Sum_out1__1_carry__2_i_3_n_0\
    );
\Sum_out1__1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E78871E871EE187"
    )
        port map (
      I0 => Delay_out1(14),
      I1 => \Sum_out1__1_carry__2_i_11_n_0\,
      I2 => \Sum_out1__1_carry__2_i_12_n_0\,
      I3 => Delay2_out1(14),
      I4 => Delay3_out1(14),
      I5 => Delay1_out1(14),
      O => \Sum_out1__1_carry__2_i_4_n_0\
    );
\Sum_out1__1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_1_n_0\,
      I1 => Delay1_out1(14),
      I2 => Delay3_out1(14),
      I3 => Delay2_out1(14),
      I4 => Delay_out1(14),
      I5 => \Sum_out1__1_carry__2_i_11_n_0\,
      O => \Sum_out1__1_carry__2_i_5_n_0\
    );
\Sum_out1__1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_2_n_0\,
      I1 => \Sum_out1__1_carry__2_i_8_n_0\,
      I2 => Delay_out1(13),
      I3 => Delay3_out1(12),
      I4 => Delay2_out1(12),
      I5 => Delay1_out1(12),
      O => \Sum_out1__1_carry__2_i_6_n_0\
    );
\Sum_out1__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry__2_i_3_n_0\,
      I1 => \Sum_out1__1_carry__2_i_9_n_0\,
      I2 => Delay_out1(12),
      I3 => Delay1_out1(11),
      I4 => Delay2_out1(11),
      I5 => Delay3_out1(11),
      O => \Sum_out1__1_carry__2_i_7_n_0\
    );
\Sum_out1__1_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(13),
      I1 => Delay3_out1(13),
      I2 => Delay1_out1(13),
      O => \Sum_out1__1_carry__2_i_8_n_0\
    );
\Sum_out1__1_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Delay2_out1(12),
      I1 => Delay3_out1(12),
      I2 => Delay1_out1(12),
      O => \Sum_out1__1_carry__2_i_9_n_0\
    );
\Sum_out1__1_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FFFFFF00969696"
    )
        port map (
      I0 => Delay2_out1(2),
      I1 => Delay3_out1(2),
      I2 => Delay1_out1(2),
      I3 => Delay1_out1(1),
      I4 => Delay3_out1(1),
      I5 => Delay_out1(2),
      O => \Sum_out1__1_carry_i_1_n_0\
    );
\Sum_out1__1_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F990"
    )
        port map (
      I0 => Delay1_out1(1),
      I1 => Delay3_out1(1),
      I2 => Delay2_out1(1),
      I3 => Delay_out1(1),
      O => \Sum_out1__1_carry_i_2_n_0\
    );
\Sum_out1__1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => Delay3_out1(1),
      I1 => Delay1_out1(1),
      I2 => Delay2_out1(1),
      I3 => Delay_out1(1),
      O => \Sum_out1__1_carry_i_3_n_0\
    );
\Sum_out1__1_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669969669699669"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_1_n_0\,
      I1 => \Sum_out1__1_carry__0_i_12_n_0\,
      I2 => Delay_out1(3),
      I3 => Delay1_out1(2),
      I4 => Delay2_out1(2),
      I5 => Delay3_out1(2),
      O => \Sum_out1__1_carry_i_4_n_0\
    );
\Sum_out1__1_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_2_n_0\,
      I1 => Delay1_out1(2),
      I2 => Delay3_out1(2),
      I3 => Delay2_out1(2),
      I4 => Delay_out1(2),
      I5 => \Sum_out1__1_carry_i_8_n_0\,
      O => \Sum_out1__1_carry_i_5_n_0\
    );
\Sum_out1__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \Sum_out1__1_carry_i_3_n_0\,
      I1 => Delay3_out1(0),
      I2 => Delay2_out1(0),
      I3 => Delay1_out1(0),
      O => \Sum_out1__1_carry_i_6_n_0\
    );
\Sum_out1__1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Delay1_out1(0),
      I1 => Delay3_out1(0),
      I2 => Delay2_out1(0),
      I3 => Delay_out1(0),
      O => \Sum_out1__1_carry_i_7_n_0\
    );
\Sum_out1__1_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Delay3_out1(1),
      I1 => Delay1_out1(1),
      O => \Sum_out1__1_carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut is
  port (
    Output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Input3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Input1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut is
begin
u_de_lastig_ip_src_de_lastigste_calc_ooit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_src_de_lastigste_calc_ooit
     port map (
      AR(0) => AR(0),
      IPCORE_CLK => IPCORE_CLK,
      Input(15 downto 0) => Input(15 downto 0),
      Input1(15 downto 0) => Input1(15 downto 0),
      Input2(15 downto 0) => Input2(15 downto 0),
      Input3(15 downto 0) => Input3(15 downto 0),
      Output(15 downto 0) => Output(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip is
  port (
    Output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    Input3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip is
  signal reset : STD_LOGIC;
begin
u_de_lastig_ip_dut_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_dut
     port map (
      AR(0) => reset,
      IPCORE_CLK => IPCORE_CLK,
      Input(15 downto 0) => Input(15 downto 0),
      Input1(15 downto 0) => Input1(15 downto 0),
      Input2(15 downto 0) => Input2(15 downto 0),
      Input3(15 downto 0) => Input3(15 downto 0),
      Output(15 downto 0) => Output(15 downto 0)
    );
u_de_lastig_ip_reset_sync_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip_reset_sync
     port map (
      AR(0) => reset,
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN
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
    Input : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Input1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Input2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Input3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_design_de_lastig_ip_0_0,de_lastig_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "de_lastig_ip,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_de_lastig_ip
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      Input(15 downto 0) => Input(15 downto 0),
      Input1(15 downto 0) => Input1(15 downto 0),
      Input2(15 downto 0) => Input2(15 downto 0),
      Input3(15 downto 0) => Input3(15 downto 0),
      Output(15 downto 0) => Output(15 downto 0)
    );
end STRUCTURE;
