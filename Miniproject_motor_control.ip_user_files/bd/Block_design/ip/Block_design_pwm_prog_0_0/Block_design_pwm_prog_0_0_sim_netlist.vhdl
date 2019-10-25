-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Oct 25 13:09:21 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_pwm_prog_0_0/Block_design_pwm_prog_0_0_sim_netlist.vhdl
-- Design      : Block_design_pwm_prog_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_design_pwm_prog_0_0_pwm_prog is
  port (
    o_pwm : out STD_LOGIC;
    i_pwm_module : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_pwm_width : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_rstb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_design_pwm_prog_0_0_pwm_prog : entity is "pwm_prog";
end Block_design_pwm_prog_0_0_pwm_prog;

architecture STRUCTURE of Block_design_pwm_prog_0_0_pwm_prog is
  signal load : STD_LOGIC;
  signal o_pwm0 : STD_LOGIC;
  signal \o_pwm0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \o_pwm0_carry__0_n_1\ : STD_LOGIC;
  signal \o_pwm0_carry__0_n_2\ : STD_LOGIC;
  signal \o_pwm0_carry__0_n_3\ : STD_LOGIC;
  signal o_pwm0_carry_i_1_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_2_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_3_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_4_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_5_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_6_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_7_n_0 : STD_LOGIC;
  signal o_pwm0_carry_i_8_n_0 : STD_LOGIC;
  signal o_pwm0_carry_n_0 : STD_LOGIC;
  signal o_pwm0_carry_n_1 : STD_LOGIC;
  signal o_pwm0_carry_n_2 : STD_LOGIC;
  signal o_pwm0_carry_n_3 : STD_LOGIC;
  signal o_pwm2 : STD_LOGIC;
  signal \o_pwm2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \o_pwm2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \o_pwm2_carry__0_n_3\ : STD_LOGIC;
  signal o_pwm2_carry_i_1_n_0 : STD_LOGIC;
  signal o_pwm2_carry_i_2_n_0 : STD_LOGIC;
  signal o_pwm2_carry_i_3_n_0 : STD_LOGIC;
  signal o_pwm2_carry_i_4_n_0 : STD_LOGIC;
  signal o_pwm2_carry_n_0 : STD_LOGIC;
  signal o_pwm2_carry_n_1 : STD_LOGIC;
  signal o_pwm2_carry_n_2 : STD_LOGIC;
  signal o_pwm2_carry_n_3 : STD_LOGIC;
  signal o_pwm_i_1_n_0 : STD_LOGIC;
  signal o_pwm_i_2_n_0 : STD_LOGIC;
  signal o_pwm_i_3_n_0 : STD_LOGIC;
  signal o_pwm_i_4_n_0 : STD_LOGIC;
  signal o_pwm_i_5_n_0 : STD_LOGIC;
  signal o_pwm_i_6_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal r_max_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_pwm_counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_pwm_counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_counter1_carry__0_n_3\ : STD_LOGIC;
  signal r_pwm_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal r_pwm_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal r_pwm_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal r_pwm_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal r_pwm_counter1_carry_n_0 : STD_LOGIC;
  signal r_pwm_counter1_carry_n_1 : STD_LOGIC;
  signal r_pwm_counter1_carry_n_2 : STD_LOGIC;
  signal r_pwm_counter1_carry_n_3 : STD_LOGIC;
  signal \r_pwm_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_pwm_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal r_pwm_counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_pwm_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_pwm_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_pwm_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_pwm_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_pwm_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_pwm_width : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w_tc_pwm_counter1 : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_n_1\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_n_2\ : STD_LOGIC;
  signal \w_tc_pwm_counter1_carry__0_n_3\ : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_5_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_6_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_7_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_i_8_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_n_0 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_n_1 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_n_2 : STD_LOGIC;
  signal w_tc_pwm_counter1_carry_n_3 : STD_LOGIC;
  signal NLW_o_pwm0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_pwm0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_o_pwm2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_pwm2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_o_pwm2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_r_pwm_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_pwm_counter1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_pwm_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_pwm_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_w_tc_pwm_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_tc_pwm_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_tc_pwm_counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_w_tc_pwm_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
o_pwm0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_pwm0_carry_n_0,
      CO(2) => o_pwm0_carry_n_1,
      CO(1) => o_pwm0_carry_n_2,
      CO(0) => o_pwm0_carry_n_3,
      CYINIT => '1',
      DI(3) => o_pwm0_carry_i_1_n_0,
      DI(2) => o_pwm0_carry_i_2_n_0,
      DI(1) => o_pwm0_carry_i_3_n_0,
      DI(0) => o_pwm0_carry_i_4_n_0,
      O(3 downto 0) => NLW_o_pwm0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_pwm0_carry_i_5_n_0,
      S(2) => o_pwm0_carry_i_6_n_0,
      S(1) => o_pwm0_carry_i_7_n_0,
      S(0) => o_pwm0_carry_i_8_n_0
    );
\o_pwm0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_pwm0_carry_n_0,
      CO(3) => o_pwm0,
      CO(2) => \o_pwm0_carry__0_n_1\,
      CO(1) => \o_pwm0_carry__0_n_2\,
      CO(0) => \o_pwm0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \o_pwm0_carry__0_i_1_n_0\,
      DI(2) => \o_pwm0_carry__0_i_2_n_0\,
      DI(1) => \o_pwm0_carry__0_i_3_n_0\,
      DI(0) => \o_pwm0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_o_pwm0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \o_pwm0_carry__0_i_5_n_0\,
      S(2) => \o_pwm0_carry__0_i_6_n_0\,
      S(1) => \o_pwm0_carry__0_i_7_n_0\,
      S(0) => \o_pwm0_carry__0_i_8_n_0\
    );
\o_pwm0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(14),
      I1 => r_pwm_counter_reg(14),
      I2 => r_pwm_counter_reg(15),
      I3 => r_pwm_width(15),
      O => \o_pwm0_carry__0_i_1_n_0\
    );
\o_pwm0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(12),
      I1 => r_pwm_counter_reg(12),
      I2 => r_pwm_counter_reg(13),
      I3 => r_pwm_width(13),
      O => \o_pwm0_carry__0_i_2_n_0\
    );
\o_pwm0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(10),
      I1 => r_pwm_counter_reg(10),
      I2 => r_pwm_counter_reg(11),
      I3 => r_pwm_width(11),
      O => \o_pwm0_carry__0_i_3_n_0\
    );
\o_pwm0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(8),
      I1 => r_pwm_counter_reg(8),
      I2 => r_pwm_counter_reg(9),
      I3 => r_pwm_width(9),
      O => \o_pwm0_carry__0_i_4_n_0\
    );
\o_pwm0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(14),
      I1 => r_pwm_counter_reg(14),
      I2 => r_pwm_width(15),
      I3 => r_pwm_counter_reg(15),
      O => \o_pwm0_carry__0_i_5_n_0\
    );
\o_pwm0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(12),
      I1 => r_pwm_counter_reg(12),
      I2 => r_pwm_width(13),
      I3 => r_pwm_counter_reg(13),
      O => \o_pwm0_carry__0_i_6_n_0\
    );
\o_pwm0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(10),
      I1 => r_pwm_counter_reg(10),
      I2 => r_pwm_width(11),
      I3 => r_pwm_counter_reg(11),
      O => \o_pwm0_carry__0_i_7_n_0\
    );
\o_pwm0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(8),
      I1 => r_pwm_counter_reg(8),
      I2 => r_pwm_width(9),
      I3 => r_pwm_counter_reg(9),
      O => \o_pwm0_carry__0_i_8_n_0\
    );
o_pwm0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(6),
      I1 => r_pwm_counter_reg(6),
      I2 => r_pwm_counter_reg(7),
      I3 => r_pwm_width(7),
      O => o_pwm0_carry_i_1_n_0
    );
o_pwm0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(4),
      I1 => r_pwm_counter_reg(4),
      I2 => r_pwm_counter_reg(5),
      I3 => r_pwm_width(5),
      O => o_pwm0_carry_i_2_n_0
    );
o_pwm0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(2),
      I1 => r_pwm_counter_reg(2),
      I2 => r_pwm_counter_reg(3),
      I3 => r_pwm_width(3),
      O => o_pwm0_carry_i_3_n_0
    );
o_pwm0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_pwm_width(0),
      I1 => r_pwm_counter_reg(0),
      I2 => r_pwm_counter_reg(1),
      I3 => r_pwm_width(1),
      O => o_pwm0_carry_i_4_n_0
    );
o_pwm0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(6),
      I1 => r_pwm_counter_reg(6),
      I2 => r_pwm_width(7),
      I3 => r_pwm_counter_reg(7),
      O => o_pwm0_carry_i_5_n_0
    );
o_pwm0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(4),
      I1 => r_pwm_counter_reg(4),
      I2 => r_pwm_width(5),
      I3 => r_pwm_counter_reg(5),
      O => o_pwm0_carry_i_6_n_0
    );
o_pwm0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(2),
      I1 => r_pwm_counter_reg(2),
      I2 => r_pwm_width(3),
      I3 => r_pwm_counter_reg(3),
      O => o_pwm0_carry_i_7_n_0
    );
o_pwm0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_pwm_width(0),
      I1 => r_pwm_counter_reg(0),
      I2 => r_pwm_width(1),
      I3 => r_pwm_counter_reg(1),
      O => o_pwm0_carry_i_8_n_0
    );
o_pwm2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => o_pwm2_carry_n_0,
      CO(2) => o_pwm2_carry_n_1,
      CO(1) => o_pwm2_carry_n_2,
      CO(0) => o_pwm2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_o_pwm2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => o_pwm2_carry_i_1_n_0,
      S(2) => o_pwm2_carry_i_2_n_0,
      S(1) => o_pwm2_carry_i_3_n_0,
      S(0) => o_pwm2_carry_i_4_n_0
    );
\o_pwm2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => o_pwm2_carry_n_0,
      CO(3 downto 2) => \NLW_o_pwm2_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => o_pwm2,
      CO(0) => \o_pwm2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_o_pwm2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \o_pwm2_carry__0_i_1_n_0\,
      S(0) => \o_pwm2_carry__0_i_2_n_0\
    );
\o_pwm2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_max_count(15),
      I1 => r_pwm_width(15),
      O => \o_pwm2_carry__0_i_1_n_0\
    );
\o_pwm2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_width(12),
      I1 => r_max_count(12),
      I2 => r_max_count(14),
      I3 => r_pwm_width(14),
      I4 => r_max_count(13),
      I5 => r_pwm_width(13),
      O => \o_pwm2_carry__0_i_2_n_0\
    );
o_pwm2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_width(9),
      I1 => r_max_count(9),
      I2 => r_max_count(11),
      I3 => r_pwm_width(11),
      I4 => r_max_count(10),
      I5 => r_pwm_width(10),
      O => o_pwm2_carry_i_1_n_0
    );
o_pwm2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_width(6),
      I1 => r_max_count(6),
      I2 => r_max_count(8),
      I3 => r_pwm_width(8),
      I4 => r_max_count(7),
      I5 => r_pwm_width(7),
      O => o_pwm2_carry_i_2_n_0
    );
o_pwm2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_width(3),
      I1 => r_max_count(3),
      I2 => r_max_count(5),
      I3 => r_pwm_width(5),
      I4 => r_max_count(4),
      I5 => r_pwm_width(4),
      O => o_pwm2_carry_i_3_n_0
    );
o_pwm2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_width(0),
      I1 => r_max_count(0),
      I2 => r_max_count(2),
      I3 => r_pwm_width(2),
      I4 => r_max_count(1),
      I5 => r_pwm_width(1),
      O => o_pwm2_carry_i_4_n_0
    );
o_pwm_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA2"
    )
        port map (
      I0 => o_pwm0,
      I1 => o_pwm2,
      I2 => o_pwm_i_3_n_0,
      I3 => o_pwm_i_4_n_0,
      O => o_pwm_i_1_n_0
    );
o_pwm_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rstb,
      O => o_pwm_i_2_n_0
    );
o_pwm_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_pwm_counter_reg(13),
      I1 => r_pwm_counter_reg(12),
      I2 => r_pwm_counter_reg(14),
      I3 => r_pwm_counter_reg(15),
      I4 => o_pwm_i_5_n_0,
      O => o_pwm_i_3_n_0
    );
o_pwm_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_pwm_counter_reg(5),
      I1 => r_pwm_counter_reg(4),
      I2 => r_pwm_counter_reg(7),
      I3 => r_pwm_counter_reg(6),
      I4 => o_pwm_i_6_n_0,
      O => o_pwm_i_4_n_0
    );
o_pwm_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_pwm_counter_reg(10),
      I1 => r_pwm_counter_reg(11),
      I2 => r_pwm_counter_reg(8),
      I3 => r_pwm_counter_reg(9),
      O => o_pwm_i_5_n_0
    );
o_pwm_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_pwm_counter_reg(2),
      I1 => r_pwm_counter_reg(3),
      I2 => r_pwm_counter_reg(0),
      I3 => r_pwm_counter_reg(1),
      O => o_pwm_i_6_n_0
    );
o_pwm_reg: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => o_pwm_i_1_n_0,
      Q => o_pwm
    );
\r_max_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(0),
      Q => r_max_count(0)
    );
\r_max_count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(10),
      Q => r_max_count(10)
    );
\r_max_count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(11),
      Q => r_max_count(11)
    );
\r_max_count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(12),
      Q => r_max_count(12)
    );
\r_max_count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(13),
      Q => r_max_count(13)
    );
\r_max_count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(14),
      Q => r_max_count(14)
    );
\r_max_count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(15),
      Q => r_max_count(15)
    );
\r_max_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(1),
      Q => r_max_count(1)
    );
\r_max_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(2),
      Q => r_max_count(2)
    );
\r_max_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(3),
      Q => r_max_count(3)
    );
\r_max_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(4),
      Q => r_max_count(4)
    );
\r_max_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(5),
      Q => r_max_count(5)
    );
\r_max_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(6),
      Q => r_max_count(6)
    );
\r_max_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(7),
      Q => r_max_count(7)
    );
\r_max_count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(8),
      Q => r_max_count(8)
    );
\r_max_count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_module(9),
      Q => r_max_count(9)
    );
r_pwm_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_pwm_counter1_carry_n_0,
      CO(2) => r_pwm_counter1_carry_n_1,
      CO(1) => r_pwm_counter1_carry_n_2,
      CO(0) => r_pwm_counter1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_r_pwm_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_pwm_counter1_carry_i_1_n_0,
      S(2) => r_pwm_counter1_carry_i_2_n_0,
      S(1) => r_pwm_counter1_carry_i_3_n_0,
      S(0) => r_pwm_counter1_carry_i_4_n_0
    );
\r_pwm_counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_pwm_counter1_carry_n_0,
      CO(3 downto 2) => \NLW_r_pwm_counter1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => load,
      CO(0) => \r_pwm_counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_pwm_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \r_pwm_counter1_carry__0_i_1_n_0\,
      S(0) => \r_pwm_counter1_carry__0_i_2_n_0\
    );
\r_pwm_counter1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_max_count(15),
      I1 => r_pwm_counter_reg(15),
      O => \r_pwm_counter1_carry__0_i_1_n_0\
    );
\r_pwm_counter1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_counter_reg(12),
      I1 => r_max_count(12),
      I2 => r_max_count(14),
      I3 => r_pwm_counter_reg(14),
      I4 => r_max_count(13),
      I5 => r_pwm_counter_reg(13),
      O => \r_pwm_counter1_carry__0_i_2_n_0\
    );
r_pwm_counter1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_counter_reg(9),
      I1 => r_max_count(9),
      I2 => r_max_count(11),
      I3 => r_pwm_counter_reg(11),
      I4 => r_max_count(10),
      I5 => r_pwm_counter_reg(10),
      O => r_pwm_counter1_carry_i_1_n_0
    );
r_pwm_counter1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_counter_reg(6),
      I1 => r_max_count(6),
      I2 => r_max_count(8),
      I3 => r_pwm_counter_reg(8),
      I4 => r_max_count(7),
      I5 => r_pwm_counter_reg(7),
      O => r_pwm_counter1_carry_i_2_n_0
    );
r_pwm_counter1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_counter_reg(3),
      I1 => r_max_count(3),
      I2 => r_max_count(5),
      I3 => r_pwm_counter_reg(5),
      I4 => r_max_count(4),
      I5 => r_pwm_counter_reg(4),
      O => r_pwm_counter1_carry_i_3_n_0
    );
r_pwm_counter1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_pwm_counter_reg(0),
      I1 => r_max_count(0),
      I2 => r_max_count(2),
      I3 => r_pwm_counter_reg(2),
      I4 => r_max_count(1),
      I5 => r_pwm_counter_reg(1),
      O => r_pwm_counter1_carry_i_4_n_0
    );
\r_pwm_counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(0),
      I1 => load,
      O => \r_pwm_counter[0]_i_2_n_0\
    );
\r_pwm_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(3),
      I1 => load,
      O => \r_pwm_counter[0]_i_3_n_0\
    );
\r_pwm_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(2),
      I1 => load,
      O => \r_pwm_counter[0]_i_4_n_0\
    );
\r_pwm_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(1),
      I1 => load,
      O => \r_pwm_counter[0]_i_5_n_0\
    );
\r_pwm_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_pwm_counter_reg(0),
      I1 => load,
      O => \r_pwm_counter[0]_i_6_n_0\
    );
\r_pwm_counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(15),
      I1 => load,
      O => \r_pwm_counter[12]_i_2_n_0\
    );
\r_pwm_counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(14),
      I1 => load,
      O => \r_pwm_counter[12]_i_3_n_0\
    );
\r_pwm_counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(13),
      I1 => load,
      O => \r_pwm_counter[12]_i_4_n_0\
    );
\r_pwm_counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(12),
      I1 => load,
      O => \r_pwm_counter[12]_i_5_n_0\
    );
\r_pwm_counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(7),
      I1 => load,
      O => \r_pwm_counter[4]_i_2_n_0\
    );
\r_pwm_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(6),
      I1 => load,
      O => \r_pwm_counter[4]_i_3_n_0\
    );
\r_pwm_counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(5),
      I1 => load,
      O => \r_pwm_counter[4]_i_4_n_0\
    );
\r_pwm_counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(4),
      I1 => load,
      O => \r_pwm_counter[4]_i_5_n_0\
    );
\r_pwm_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(11),
      I1 => load,
      O => \r_pwm_counter[8]_i_2_n_0\
    );
\r_pwm_counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(10),
      I1 => load,
      O => \r_pwm_counter[8]_i_3_n_0\
    );
\r_pwm_counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(9),
      I1 => load,
      O => \r_pwm_counter[8]_i_4_n_0\
    );
\r_pwm_counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_pwm_counter_reg(8),
      I1 => load,
      O => \r_pwm_counter[8]_i_5_n_0\
    );
\r_pwm_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[0]_i_1_n_7\,
      Q => r_pwm_counter_reg(0)
    );
\r_pwm_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_pwm_counter_reg[0]_i_1_n_0\,
      CO(2) => \r_pwm_counter_reg[0]_i_1_n_1\,
      CO(1) => \r_pwm_counter_reg[0]_i_1_n_2\,
      CO(0) => \r_pwm_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_pwm_counter[0]_i_2_n_0\,
      O(3) => \r_pwm_counter_reg[0]_i_1_n_4\,
      O(2) => \r_pwm_counter_reg[0]_i_1_n_5\,
      O(1) => \r_pwm_counter_reg[0]_i_1_n_6\,
      O(0) => \r_pwm_counter_reg[0]_i_1_n_7\,
      S(3) => \r_pwm_counter[0]_i_3_n_0\,
      S(2) => \r_pwm_counter[0]_i_4_n_0\,
      S(1) => \r_pwm_counter[0]_i_5_n_0\,
      S(0) => \r_pwm_counter[0]_i_6_n_0\
    );
\r_pwm_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[8]_i_1_n_5\,
      Q => r_pwm_counter_reg(10)
    );
\r_pwm_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[8]_i_1_n_4\,
      Q => r_pwm_counter_reg(11)
    );
\r_pwm_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[12]_i_1_n_7\,
      Q => r_pwm_counter_reg(12)
    );
\r_pwm_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_pwm_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_r_pwm_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_pwm_counter_reg[12]_i_1_n_1\,
      CO(1) => \r_pwm_counter_reg[12]_i_1_n_2\,
      CO(0) => \r_pwm_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_pwm_counter_reg[12]_i_1_n_4\,
      O(2) => \r_pwm_counter_reg[12]_i_1_n_5\,
      O(1) => \r_pwm_counter_reg[12]_i_1_n_6\,
      O(0) => \r_pwm_counter_reg[12]_i_1_n_7\,
      S(3) => \r_pwm_counter[12]_i_2_n_0\,
      S(2) => \r_pwm_counter[12]_i_3_n_0\,
      S(1) => \r_pwm_counter[12]_i_4_n_0\,
      S(0) => \r_pwm_counter[12]_i_5_n_0\
    );
\r_pwm_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[12]_i_1_n_6\,
      Q => r_pwm_counter_reg(13)
    );
\r_pwm_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[12]_i_1_n_5\,
      Q => r_pwm_counter_reg(14)
    );
\r_pwm_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[12]_i_1_n_4\,
      Q => r_pwm_counter_reg(15)
    );
\r_pwm_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[0]_i_1_n_6\,
      Q => r_pwm_counter_reg(1)
    );
\r_pwm_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[0]_i_1_n_5\,
      Q => r_pwm_counter_reg(2)
    );
\r_pwm_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[0]_i_1_n_4\,
      Q => r_pwm_counter_reg(3)
    );
\r_pwm_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[4]_i_1_n_7\,
      Q => r_pwm_counter_reg(4)
    );
\r_pwm_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_pwm_counter_reg[0]_i_1_n_0\,
      CO(3) => \r_pwm_counter_reg[4]_i_1_n_0\,
      CO(2) => \r_pwm_counter_reg[4]_i_1_n_1\,
      CO(1) => \r_pwm_counter_reg[4]_i_1_n_2\,
      CO(0) => \r_pwm_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_pwm_counter_reg[4]_i_1_n_4\,
      O(2) => \r_pwm_counter_reg[4]_i_1_n_5\,
      O(1) => \r_pwm_counter_reg[4]_i_1_n_6\,
      O(0) => \r_pwm_counter_reg[4]_i_1_n_7\,
      S(3) => \r_pwm_counter[4]_i_2_n_0\,
      S(2) => \r_pwm_counter[4]_i_3_n_0\,
      S(1) => \r_pwm_counter[4]_i_4_n_0\,
      S(0) => \r_pwm_counter[4]_i_5_n_0\
    );
\r_pwm_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[4]_i_1_n_6\,
      Q => r_pwm_counter_reg(5)
    );
\r_pwm_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[4]_i_1_n_5\,
      Q => r_pwm_counter_reg(6)
    );
\r_pwm_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[4]_i_1_n_4\,
      Q => r_pwm_counter_reg(7)
    );
\r_pwm_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[8]_i_1_n_7\,
      Q => r_pwm_counter_reg(8)
    );
\r_pwm_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_pwm_counter_reg[4]_i_1_n_0\,
      CO(3) => \r_pwm_counter_reg[8]_i_1_n_0\,
      CO(2) => \r_pwm_counter_reg[8]_i_1_n_1\,
      CO(1) => \r_pwm_counter_reg[8]_i_1_n_2\,
      CO(0) => \r_pwm_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_pwm_counter_reg[8]_i_1_n_4\,
      O(2) => \r_pwm_counter_reg[8]_i_1_n_5\,
      O(1) => \r_pwm_counter_reg[8]_i_1_n_6\,
      O(0) => \r_pwm_counter_reg[8]_i_1_n_7\,
      S(3) => \r_pwm_counter[8]_i_2_n_0\,
      S(2) => \r_pwm_counter[8]_i_3_n_0\,
      S(1) => \r_pwm_counter[8]_i_4_n_0\,
      S(0) => \r_pwm_counter[8]_i_5_n_0\
    );
\r_pwm_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => o_pwm_i_2_n_0,
      D => \r_pwm_counter_reg[8]_i_1_n_6\,
      Q => r_pwm_counter_reg(9)
    );
\r_pwm_width_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(0),
      Q => r_pwm_width(0)
    );
\r_pwm_width_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(10),
      Q => r_pwm_width(10)
    );
\r_pwm_width_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(11),
      Q => r_pwm_width(11)
    );
\r_pwm_width_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(12),
      Q => r_pwm_width(12)
    );
\r_pwm_width_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(13),
      Q => r_pwm_width(13)
    );
\r_pwm_width_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(14),
      Q => r_pwm_width(14)
    );
\r_pwm_width_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(15),
      Q => r_pwm_width(15)
    );
\r_pwm_width_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(1),
      Q => r_pwm_width(1)
    );
\r_pwm_width_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(2),
      Q => r_pwm_width(2)
    );
\r_pwm_width_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(3),
      Q => r_pwm_width(3)
    );
\r_pwm_width_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(4),
      Q => r_pwm_width(4)
    );
\r_pwm_width_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(5),
      Q => r_pwm_width(5)
    );
\r_pwm_width_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(6),
      Q => r_pwm_width(6)
    );
\r_pwm_width_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(7),
      Q => r_pwm_width(7)
    );
\r_pwm_width_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(8),
      Q => r_pwm_width(8)
    );
\r_pwm_width_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => p_0_in,
      CLR => o_pwm_i_2_n_0,
      D => i_pwm_width(9),
      Q => r_pwm_width(9)
    );
w_tc_pwm_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => w_tc_pwm_counter1_carry_n_0,
      CO(2) => w_tc_pwm_counter1_carry_n_1,
      CO(1) => w_tc_pwm_counter1_carry_n_2,
      CO(0) => w_tc_pwm_counter1_carry_n_3,
      CYINIT => '0',
      DI(3) => w_tc_pwm_counter1_carry_i_1_n_0,
      DI(2) => w_tc_pwm_counter1_carry_i_2_n_0,
      DI(1) => w_tc_pwm_counter1_carry_i_3_n_0,
      DI(0) => w_tc_pwm_counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_w_tc_pwm_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => w_tc_pwm_counter1_carry_i_5_n_0,
      S(2) => w_tc_pwm_counter1_carry_i_6_n_0,
      S(1) => w_tc_pwm_counter1_carry_i_7_n_0,
      S(0) => w_tc_pwm_counter1_carry_i_8_n_0
    );
\w_tc_pwm_counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => w_tc_pwm_counter1_carry_n_0,
      CO(3) => w_tc_pwm_counter1,
      CO(2) => \w_tc_pwm_counter1_carry__0_n_1\,
      CO(1) => \w_tc_pwm_counter1_carry__0_n_2\,
      CO(0) => \w_tc_pwm_counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \w_tc_pwm_counter1_carry__0_i_1_n_0\,
      DI(2) => \w_tc_pwm_counter1_carry__0_i_2_n_0\,
      DI(1) => \w_tc_pwm_counter1_carry__0_i_3_n_0\,
      DI(0) => \w_tc_pwm_counter1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_w_tc_pwm_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \w_tc_pwm_counter1_carry__0_i_5_n_0\,
      S(2) => \w_tc_pwm_counter1_carry__0_i_6_n_0\,
      S(1) => \w_tc_pwm_counter1_carry__0_i_7_n_0\,
      S(0) => \w_tc_pwm_counter1_carry__0_i_8_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(14),
      I1 => r_pwm_counter_reg(14),
      I2 => r_pwm_counter_reg(15),
      I3 => r_max_count(15),
      O => \w_tc_pwm_counter1_carry__0_i_1_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(12),
      I1 => r_pwm_counter_reg(12),
      I2 => r_pwm_counter_reg(13),
      I3 => r_max_count(13),
      O => \w_tc_pwm_counter1_carry__0_i_2_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(10),
      I1 => r_pwm_counter_reg(10),
      I2 => r_pwm_counter_reg(11),
      I3 => r_max_count(11),
      O => \w_tc_pwm_counter1_carry__0_i_3_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(8),
      I1 => r_pwm_counter_reg(8),
      I2 => r_pwm_counter_reg(9),
      I3 => r_max_count(9),
      O => \w_tc_pwm_counter1_carry__0_i_4_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(14),
      I1 => r_pwm_counter_reg(14),
      I2 => r_max_count(15),
      I3 => r_pwm_counter_reg(15),
      O => \w_tc_pwm_counter1_carry__0_i_5_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(12),
      I1 => r_pwm_counter_reg(12),
      I2 => r_max_count(13),
      I3 => r_pwm_counter_reg(13),
      O => \w_tc_pwm_counter1_carry__0_i_6_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(10),
      I1 => r_pwm_counter_reg(10),
      I2 => r_max_count(11),
      I3 => r_pwm_counter_reg(11),
      O => \w_tc_pwm_counter1_carry__0_i_7_n_0\
    );
\w_tc_pwm_counter1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(8),
      I1 => r_pwm_counter_reg(8),
      I2 => r_max_count(9),
      I3 => r_pwm_counter_reg(9),
      O => \w_tc_pwm_counter1_carry__0_i_8_n_0\
    );
\w_tc_pwm_counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => w_tc_pwm_counter1,
      CO(3 downto 0) => \NLW_w_tc_pwm_counter1_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_w_tc_pwm_counter1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in,
      S(3 downto 0) => B"0001"
    );
w_tc_pwm_counter1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(6),
      I1 => r_pwm_counter_reg(6),
      I2 => r_pwm_counter_reg(7),
      I3 => r_max_count(7),
      O => w_tc_pwm_counter1_carry_i_1_n_0
    );
w_tc_pwm_counter1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(4),
      I1 => r_pwm_counter_reg(4),
      I2 => r_pwm_counter_reg(5),
      I3 => r_max_count(5),
      O => w_tc_pwm_counter1_carry_i_2_n_0
    );
w_tc_pwm_counter1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(2),
      I1 => r_pwm_counter_reg(2),
      I2 => r_pwm_counter_reg(3),
      I3 => r_max_count(3),
      O => w_tc_pwm_counter1_carry_i_3_n_0
    );
w_tc_pwm_counter1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => r_max_count(0),
      I1 => r_pwm_counter_reg(0),
      I2 => r_pwm_counter_reg(1),
      I3 => r_max_count(1),
      O => w_tc_pwm_counter1_carry_i_4_n_0
    );
w_tc_pwm_counter1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(6),
      I1 => r_pwm_counter_reg(6),
      I2 => r_max_count(7),
      I3 => r_pwm_counter_reg(7),
      O => w_tc_pwm_counter1_carry_i_5_n_0
    );
w_tc_pwm_counter1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(4),
      I1 => r_pwm_counter_reg(4),
      I2 => r_max_count(5),
      I3 => r_pwm_counter_reg(5),
      O => w_tc_pwm_counter1_carry_i_6_n_0
    );
w_tc_pwm_counter1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(2),
      I1 => r_pwm_counter_reg(2),
      I2 => r_max_count(3),
      I3 => r_pwm_counter_reg(3),
      O => w_tc_pwm_counter1_carry_i_7_n_0
    );
w_tc_pwm_counter1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => r_max_count(0),
      I1 => r_pwm_counter_reg(0),
      I2 => r_max_count(1),
      I3 => r_pwm_counter_reg(1),
      O => w_tc_pwm_counter1_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_design_pwm_prog_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_rstb : in STD_LOGIC;
    i_pwm_module : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_pwm_width : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_design_pwm_prog_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_design_pwm_prog_0_0 : entity is "Block_design_pwm_prog_0_0,pwm_prog,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_design_pwm_prog_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_design_pwm_prog_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_design_pwm_prog_0_0 : entity is "pwm_prog,Vivado 2018.2";
end Block_design_pwm_prog_0_0;

architecture STRUCTURE of Block_design_pwm_prog_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0";
begin
U0: entity work.Block_design_pwm_prog_0_0_pwm_prog
     port map (
      i_clk => i_clk,
      i_pwm_module(15 downto 0) => i_pwm_module(15 downto 0),
      i_pwm_width(15 downto 0) => i_pwm_width(15 downto 0),
      i_rstb => i_rstb,
      o_pwm => o_pwm
    );
end STRUCTURE;
