-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Oct 29 17:41:36 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_counter_0_0/Block_design_counter_0_0_sim_netlist.vhdl
-- Design      : Block_design_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_design_counter_0_0_counter is
  port (
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B_In : in STD_LOGIC;
    Clk : in STD_LOGIC;
    A_In : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_design_counter_0_0_counter : entity is "counter";
end Block_design_counter_0_0_counter;

architecture STRUCTURE of Block_design_counter_0_0_counter is
  signal Current_A : STD_LOGIC;
  signal Current_B : STD_LOGIC;
  signal Last_A : STD_LOGIC;
  signal Last_B : STD_LOGIC;
  signal \count[11]_i_2_n_0\ : STD_LOGIC;
  signal \count[11]_i_3_n_0\ : STD_LOGIC;
  signal \count[11]_i_4_n_0\ : STD_LOGIC;
  signal \count[11]_i_5_n_0\ : STD_LOGIC;
  signal \count[15]_i_2_n_0\ : STD_LOGIC;
  signal \count[15]_i_3_n_0\ : STD_LOGIC;
  signal \count[15]_i_4_n_0\ : STD_LOGIC;
  signal \count[15]_i_5_n_0\ : STD_LOGIC;
  signal \count[19]_i_2_n_0\ : STD_LOGIC;
  signal \count[19]_i_3_n_0\ : STD_LOGIC;
  signal \count[19]_i_4_n_0\ : STD_LOGIC;
  signal \count[19]_i_5_n_0\ : STD_LOGIC;
  signal \count[23]_i_2_n_0\ : STD_LOGIC;
  signal \count[23]_i_3_n_0\ : STD_LOGIC;
  signal \count[23]_i_4_n_0\ : STD_LOGIC;
  signal \count[23]_i_5_n_0\ : STD_LOGIC;
  signal \count[27]_i_2_n_0\ : STD_LOGIC;
  signal \count[27]_i_3_n_0\ : STD_LOGIC;
  signal \count[27]_i_4_n_0\ : STD_LOGIC;
  signal \count[27]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_2_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_4_n_0\ : STD_LOGIC;
  signal \count[3]_i_5_n_0\ : STD_LOGIC;
  signal \count[3]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \up_down__0\ : STD_LOGIC;
  signal \NLW_count_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  data_out(31 downto 0) <= \^data_out\(31 downto 0);
Current_A_reg: unisim.vcomponents.FDCE
     port map (
      C => Clk,
      CE => '1',
      CLR => \count[31]_i_2_n_0\,
      D => A_In,
      Q => Current_A
    );
Current_B_reg: unisim.vcomponents.FDCE
     port map (
      C => Clk,
      CE => '1',
      CLR => \count[31]_i_2_n_0\,
      D => B_In,
      Q => Current_B
    );
Last_A_reg: unisim.vcomponents.FDCE
     port map (
      C => Clk,
      CE => '1',
      CLR => \count[31]_i_2_n_0\,
      D => Current_A,
      Q => Last_A
    );
Last_B_reg: unisim.vcomponents.FDCE
     port map (
      C => Clk,
      CE => '1',
      CLR => \count[31]_i_2_n_0\,
      D => Current_B,
      Q => Last_B
    );
\count[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(11),
      O => \count[11]_i_2_n_0\
    );
\count[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(10),
      O => \count[11]_i_3_n_0\
    );
\count[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(9),
      O => \count[11]_i_4_n_0\
    );
\count[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(8),
      O => \count[11]_i_5_n_0\
    );
\count[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(15),
      O => \count[15]_i_2_n_0\
    );
\count[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(14),
      O => \count[15]_i_3_n_0\
    );
\count[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(13),
      O => \count[15]_i_4_n_0\
    );
\count[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(12),
      O => \count[15]_i_5_n_0\
    );
\count[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(19),
      O => \count[19]_i_2_n_0\
    );
\count[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(18),
      O => \count[19]_i_3_n_0\
    );
\count[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(17),
      O => \count[19]_i_4_n_0\
    );
\count[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(16),
      O => \count[19]_i_5_n_0\
    );
\count[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(23),
      O => \count[23]_i_2_n_0\
    );
\count[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(22),
      O => \count[23]_i_3_n_0\
    );
\count[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(21),
      O => \count[23]_i_4_n_0\
    );
\count[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(20),
      O => \count[23]_i_5_n_0\
    );
\count[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(27),
      O => \count[27]_i_2_n_0\
    );
\count[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(26),
      O => \count[27]_i_3_n_0\
    );
\count[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(25),
      O => \count[27]_i_4_n_0\
    );
\count[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(24),
      O => \count[27]_i_5_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Reset,
      O => \count[31]_i_2_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(31),
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(30),
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(29),
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(28),
      O => \count[31]_i_6_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(3),
      O => \count[3]_i_3_n_0\
    );
\count[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(2),
      O => \count[3]_i_4_n_0\
    );
\count[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(1),
      O => \count[3]_i_5_n_0\
    );
\count[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(0),
      O => \count[3]_i_6_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(7),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(6),
      O => \count[7]_i_3_n_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(5),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Last_B,
      I1 => Current_A,
      I2 => \^data_out\(4),
      O => \count[7]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[3]_i_1_n_7\,
      Q => \^data_out\(0)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[11]_i_1_n_5\,
      Q => \^data_out\(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[11]_i_1_n_4\,
      Q => \^data_out\(11)
    );
\count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[7]_i_1_n_0\,
      CO(3) => \count_reg[11]_i_1_n_0\,
      CO(2) => \count_reg[11]_i_1_n_1\,
      CO(1) => \count_reg[11]_i_1_n_2\,
      CO(0) => \count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(11 downto 8),
      O(3) => \count_reg[11]_i_1_n_4\,
      O(2) => \count_reg[11]_i_1_n_5\,
      O(1) => \count_reg[11]_i_1_n_6\,
      O(0) => \count_reg[11]_i_1_n_7\,
      S(3) => \count[11]_i_2_n_0\,
      S(2) => \count[11]_i_3_n_0\,
      S(1) => \count[11]_i_4_n_0\,
      S(0) => \count[11]_i_5_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[15]_i_1_n_7\,
      Q => \^data_out\(12)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[15]_i_1_n_6\,
      Q => \^data_out\(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[15]_i_1_n_5\,
      Q => \^data_out\(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[15]_i_1_n_4\,
      Q => \^data_out\(15)
    );
\count_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[11]_i_1_n_0\,
      CO(3) => \count_reg[15]_i_1_n_0\,
      CO(2) => \count_reg[15]_i_1_n_1\,
      CO(1) => \count_reg[15]_i_1_n_2\,
      CO(0) => \count_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(15 downto 12),
      O(3) => \count_reg[15]_i_1_n_4\,
      O(2) => \count_reg[15]_i_1_n_5\,
      O(1) => \count_reg[15]_i_1_n_6\,
      O(0) => \count_reg[15]_i_1_n_7\,
      S(3) => \count[15]_i_2_n_0\,
      S(2) => \count[15]_i_3_n_0\,
      S(1) => \count[15]_i_4_n_0\,
      S(0) => \count[15]_i_5_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[19]_i_1_n_7\,
      Q => \^data_out\(16)
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[19]_i_1_n_6\,
      Q => \^data_out\(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[19]_i_1_n_5\,
      Q => \^data_out\(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[19]_i_1_n_4\,
      Q => \^data_out\(19)
    );
\count_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[15]_i_1_n_0\,
      CO(3) => \count_reg[19]_i_1_n_0\,
      CO(2) => \count_reg[19]_i_1_n_1\,
      CO(1) => \count_reg[19]_i_1_n_2\,
      CO(0) => \count_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(19 downto 16),
      O(3) => \count_reg[19]_i_1_n_4\,
      O(2) => \count_reg[19]_i_1_n_5\,
      O(1) => \count_reg[19]_i_1_n_6\,
      O(0) => \count_reg[19]_i_1_n_7\,
      S(3) => \count[19]_i_2_n_0\,
      S(2) => \count[19]_i_3_n_0\,
      S(1) => \count[19]_i_4_n_0\,
      S(0) => \count[19]_i_5_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[3]_i_1_n_6\,
      Q => \^data_out\(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[23]_i_1_n_7\,
      Q => \^data_out\(20)
    );
\count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[23]_i_1_n_6\,
      Q => \^data_out\(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[23]_i_1_n_5\,
      Q => \^data_out\(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[23]_i_1_n_4\,
      Q => \^data_out\(23)
    );
\count_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[19]_i_1_n_0\,
      CO(3) => \count_reg[23]_i_1_n_0\,
      CO(2) => \count_reg[23]_i_1_n_1\,
      CO(1) => \count_reg[23]_i_1_n_2\,
      CO(0) => \count_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(23 downto 20),
      O(3) => \count_reg[23]_i_1_n_4\,
      O(2) => \count_reg[23]_i_1_n_5\,
      O(1) => \count_reg[23]_i_1_n_6\,
      O(0) => \count_reg[23]_i_1_n_7\,
      S(3) => \count[23]_i_2_n_0\,
      S(2) => \count[23]_i_3_n_0\,
      S(1) => \count[23]_i_4_n_0\,
      S(0) => \count[23]_i_5_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[27]_i_1_n_7\,
      Q => \^data_out\(24)
    );
\count_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[27]_i_1_n_6\,
      Q => \^data_out\(25)
    );
\count_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[27]_i_1_n_5\,
      Q => \^data_out\(26)
    );
\count_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[27]_i_1_n_4\,
      Q => \^data_out\(27)
    );
\count_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[23]_i_1_n_0\,
      CO(3) => \count_reg[27]_i_1_n_0\,
      CO(2) => \count_reg[27]_i_1_n_1\,
      CO(1) => \count_reg[27]_i_1_n_2\,
      CO(0) => \count_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(27 downto 24),
      O(3) => \count_reg[27]_i_1_n_4\,
      O(2) => \count_reg[27]_i_1_n_5\,
      O(1) => \count_reg[27]_i_1_n_6\,
      O(0) => \count_reg[27]_i_1_n_7\,
      S(3) => \count[27]_i_2_n_0\,
      S(2) => \count[27]_i_3_n_0\,
      S(1) => \count[27]_i_4_n_0\,
      S(0) => \count[27]_i_5_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[31]_i_1_n_7\,
      Q => \^data_out\(28)
    );
\count_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[31]_i_1_n_6\,
      Q => \^data_out\(29)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[3]_i_1_n_5\,
      Q => \^data_out\(2)
    );
\count_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[31]_i_1_n_5\,
      Q => \^data_out\(30)
    );
\count_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[31]_i_1_n_4\,
      Q => \^data_out\(31)
    );
\count_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[27]_i_1_n_0\,
      CO(3) => \NLW_count_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[31]_i_1_n_1\,
      CO(1) => \count_reg[31]_i_1_n_2\,
      CO(0) => \count_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^data_out\(30 downto 28),
      O(3) => \count_reg[31]_i_1_n_4\,
      O(2) => \count_reg[31]_i_1_n_5\,
      O(1) => \count_reg[31]_i_1_n_6\,
      O(0) => \count_reg[31]_i_1_n_7\,
      S(3) => \count[31]_i_3_n_0\,
      S(2) => \count[31]_i_4_n_0\,
      S(1) => \count[31]_i_5_n_0\,
      S(0) => \count[31]_i_6_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[3]_i_1_n_4\,
      Q => \^data_out\(3)
    );
\count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[3]_i_1_n_0\,
      CO(2) => \count_reg[3]_i_1_n_1\,
      CO(1) => \count_reg[3]_i_1_n_2\,
      CO(0) => \count_reg[3]_i_1_n_3\,
      CYINIT => \count[3]_i_2_n_0\,
      DI(3 downto 0) => \^data_out\(3 downto 0),
      O(3) => \count_reg[3]_i_1_n_4\,
      O(2) => \count_reg[3]_i_1_n_5\,
      O(1) => \count_reg[3]_i_1_n_6\,
      O(0) => \count_reg[3]_i_1_n_7\,
      S(3) => \count[3]_i_3_n_0\,
      S(2) => \count[3]_i_4_n_0\,
      S(1) => \count[3]_i_5_n_0\,
      S(0) => \count[3]_i_6_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[7]_i_1_n_7\,
      Q => \^data_out\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[7]_i_1_n_6\,
      Q => \^data_out\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[7]_i_1_n_5\,
      Q => \^data_out\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[7]_i_1_n_4\,
      Q => \^data_out\(7)
    );
\count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[3]_i_1_n_0\,
      CO(3) => \count_reg[7]_i_1_n_0\,
      CO(2) => \count_reg[7]_i_1_n_1\,
      CO(1) => \count_reg[7]_i_1_n_2\,
      CO(0) => \count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^data_out\(7 downto 4),
      O(3) => \count_reg[7]_i_1_n_4\,
      O(2) => \count_reg[7]_i_1_n_5\,
      O(1) => \count_reg[7]_i_1_n_6\,
      O(0) => \count_reg[7]_i_1_n_7\,
      S(3) => \count[7]_i_2_n_0\,
      S(2) => \count[7]_i_3_n_0\,
      S(1) => \count[7]_i_4_n_0\,
      S(0) => \count[7]_i_5_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[11]_i_1_n_7\,
      Q => \^data_out\(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \up_down__0\,
      CLR => \count[31]_i_2_n_0\,
      D => \count_reg[11]_i_1_n_6\,
      Q => \^data_out\(9)
    );
up_down: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Current_B,
      I1 => Current_A,
      I2 => Last_B,
      I3 => Last_A,
      O => \up_down__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_design_counter_0_0 is
  port (
    Clk : in STD_LOGIC;
    A_In : in STD_LOGIC;
    B_In : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_design_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_design_counter_0_0 : entity is "Block_design_counter_0_0,counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_design_counter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_design_counter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_design_counter_0_0 : entity is "counter,Vivado 2018.2";
end Block_design_counter_0_0;

architecture STRUCTURE of Block_design_counter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute x_interface_parameter of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.Block_design_counter_0_0_counter
     port map (
      A_In => A_In,
      B_In => B_In,
      Clk => Clk,
      Reset => Reset,
      data_out(31 downto 0) => data_out(31 downto 0)
    );
end STRUCTURE;
