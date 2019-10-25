-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 23 15:42:27 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_acs_crane_ip_0_0_sim_netlist.vhdl
-- Design      : Block_design_acs_crane_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync is
  port (
    reset : out STD_LOGIC;
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync is
  signal reset_in : STD_LOGIC;
  signal reset_pipe : STD_LOGIC;
begin
reset_out_reg: unisim.vcomponents.FDPE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      D => reset_pipe,
      PRE => reset_in,
      Q => reset
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1 is
  port (
    pwm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    position : in STD_LOGIC_VECTOR ( 31 downto 0 );
    destination_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    desired_angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1 is
  signal A : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal B : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal \Gain1_mul_temp__0_n_100\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_101\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_102\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_103\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_104\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_105\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_58\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_59\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_60\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_61\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_62\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_63\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_64\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_65\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_66\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_67\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_68\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_69\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_70\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_71\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_72\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_73\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_74\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_75\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_76\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_77\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_78\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_79\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_80\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_81\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_82\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_83\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_84\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_85\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_86\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_87\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_88\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_89\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_90\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_91\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_92\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_93\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_94\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_95\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_96\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_97\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_98\ : STD_LOGIC;
  signal \Gain1_mul_temp__0_n_99\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_100\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_101\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_102\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_103\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_104\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_105\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_106\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_107\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_108\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_109\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_110\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_111\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_112\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_113\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_114\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_115\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_116\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_117\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_118\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_119\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_120\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_121\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_122\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_123\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_124\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_125\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_126\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_127\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_128\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_129\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_130\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_131\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_132\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_133\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_134\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_135\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_136\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_137\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_138\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_139\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_140\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_141\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_142\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_143\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_144\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_145\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_146\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_147\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_148\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_149\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_150\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_151\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_152\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_153\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_24\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_25\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_26\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_27\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_28\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_29\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_30\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_31\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_32\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_33\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_34\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_35\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_36\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_37\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_38\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_39\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_40\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_41\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_42\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_43\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_44\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_45\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_46\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_47\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_48\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_49\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_50\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_51\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_52\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_53\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_58\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_59\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_60\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_61\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_62\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_63\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_64\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_65\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_66\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_67\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_68\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_69\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_70\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_71\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_72\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_73\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_74\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_75\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_76\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_77\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_78\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_79\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_80\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_81\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_82\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_83\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_84\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_85\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_86\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_87\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_88\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_89\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_90\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_91\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_92\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_93\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_94\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_95\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_96\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_97\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_98\ : STD_LOGIC;
  signal \Gain1_mul_temp__1_n_99\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_100\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_101\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_102\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_103\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_104\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_105\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_58\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_59\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_60\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_61\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_62\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_63\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_64\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_65\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_66\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_67\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_68\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_69\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_70\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_71\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_72\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_73\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_74\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_75\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_76\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_77\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_78\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_79\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_80\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_81\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_82\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_83\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_84\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_85\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_86\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_87\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_88\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_89\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_90\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_91\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_92\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_93\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_94\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_95\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_96\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_97\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_98\ : STD_LOGIC;
  signal \Gain1_mul_temp__2_n_99\ : STD_LOGIC;
  signal \Gain1_mul_temp__3\ : STD_LOGIC_VECTOR ( 63 downto 59 );
  signal Gain1_mul_temp_n_100 : STD_LOGIC;
  signal Gain1_mul_temp_n_101 : STD_LOGIC;
  signal Gain1_mul_temp_n_102 : STD_LOGIC;
  signal Gain1_mul_temp_n_103 : STD_LOGIC;
  signal Gain1_mul_temp_n_104 : STD_LOGIC;
  signal Gain1_mul_temp_n_105 : STD_LOGIC;
  signal Gain1_mul_temp_n_106 : STD_LOGIC;
  signal Gain1_mul_temp_n_107 : STD_LOGIC;
  signal Gain1_mul_temp_n_108 : STD_LOGIC;
  signal Gain1_mul_temp_n_109 : STD_LOGIC;
  signal Gain1_mul_temp_n_110 : STD_LOGIC;
  signal Gain1_mul_temp_n_111 : STD_LOGIC;
  signal Gain1_mul_temp_n_112 : STD_LOGIC;
  signal Gain1_mul_temp_n_113 : STD_LOGIC;
  signal Gain1_mul_temp_n_114 : STD_LOGIC;
  signal Gain1_mul_temp_n_115 : STD_LOGIC;
  signal Gain1_mul_temp_n_116 : STD_LOGIC;
  signal Gain1_mul_temp_n_117 : STD_LOGIC;
  signal Gain1_mul_temp_n_118 : STD_LOGIC;
  signal Gain1_mul_temp_n_119 : STD_LOGIC;
  signal Gain1_mul_temp_n_120 : STD_LOGIC;
  signal Gain1_mul_temp_n_121 : STD_LOGIC;
  signal Gain1_mul_temp_n_122 : STD_LOGIC;
  signal Gain1_mul_temp_n_123 : STD_LOGIC;
  signal Gain1_mul_temp_n_124 : STD_LOGIC;
  signal Gain1_mul_temp_n_125 : STD_LOGIC;
  signal Gain1_mul_temp_n_126 : STD_LOGIC;
  signal Gain1_mul_temp_n_127 : STD_LOGIC;
  signal Gain1_mul_temp_n_128 : STD_LOGIC;
  signal Gain1_mul_temp_n_129 : STD_LOGIC;
  signal Gain1_mul_temp_n_130 : STD_LOGIC;
  signal Gain1_mul_temp_n_131 : STD_LOGIC;
  signal Gain1_mul_temp_n_132 : STD_LOGIC;
  signal Gain1_mul_temp_n_133 : STD_LOGIC;
  signal Gain1_mul_temp_n_134 : STD_LOGIC;
  signal Gain1_mul_temp_n_135 : STD_LOGIC;
  signal Gain1_mul_temp_n_136 : STD_LOGIC;
  signal Gain1_mul_temp_n_137 : STD_LOGIC;
  signal Gain1_mul_temp_n_138 : STD_LOGIC;
  signal Gain1_mul_temp_n_139 : STD_LOGIC;
  signal Gain1_mul_temp_n_140 : STD_LOGIC;
  signal Gain1_mul_temp_n_141 : STD_LOGIC;
  signal Gain1_mul_temp_n_142 : STD_LOGIC;
  signal Gain1_mul_temp_n_143 : STD_LOGIC;
  signal Gain1_mul_temp_n_144 : STD_LOGIC;
  signal Gain1_mul_temp_n_145 : STD_LOGIC;
  signal Gain1_mul_temp_n_146 : STD_LOGIC;
  signal Gain1_mul_temp_n_147 : STD_LOGIC;
  signal Gain1_mul_temp_n_148 : STD_LOGIC;
  signal Gain1_mul_temp_n_149 : STD_LOGIC;
  signal Gain1_mul_temp_n_150 : STD_LOGIC;
  signal Gain1_mul_temp_n_151 : STD_LOGIC;
  signal Gain1_mul_temp_n_152 : STD_LOGIC;
  signal Gain1_mul_temp_n_153 : STD_LOGIC;
  signal Gain1_mul_temp_n_58 : STD_LOGIC;
  signal Gain1_mul_temp_n_59 : STD_LOGIC;
  signal Gain1_mul_temp_n_60 : STD_LOGIC;
  signal Gain1_mul_temp_n_61 : STD_LOGIC;
  signal Gain1_mul_temp_n_62 : STD_LOGIC;
  signal Gain1_mul_temp_n_63 : STD_LOGIC;
  signal Gain1_mul_temp_n_64 : STD_LOGIC;
  signal Gain1_mul_temp_n_65 : STD_LOGIC;
  signal Gain1_mul_temp_n_66 : STD_LOGIC;
  signal Gain1_mul_temp_n_67 : STD_LOGIC;
  signal Gain1_mul_temp_n_68 : STD_LOGIC;
  signal Gain1_mul_temp_n_69 : STD_LOGIC;
  signal Gain1_mul_temp_n_70 : STD_LOGIC;
  signal Gain1_mul_temp_n_71 : STD_LOGIC;
  signal Gain1_mul_temp_n_72 : STD_LOGIC;
  signal Gain1_mul_temp_n_73 : STD_LOGIC;
  signal Gain1_mul_temp_n_74 : STD_LOGIC;
  signal Gain1_mul_temp_n_75 : STD_LOGIC;
  signal Gain1_mul_temp_n_76 : STD_LOGIC;
  signal Gain1_mul_temp_n_77 : STD_LOGIC;
  signal Gain1_mul_temp_n_78 : STD_LOGIC;
  signal Gain1_mul_temp_n_79 : STD_LOGIC;
  signal Gain1_mul_temp_n_80 : STD_LOGIC;
  signal Gain1_mul_temp_n_81 : STD_LOGIC;
  signal Gain1_mul_temp_n_82 : STD_LOGIC;
  signal Gain1_mul_temp_n_83 : STD_LOGIC;
  signal Gain1_mul_temp_n_84 : STD_LOGIC;
  signal Gain1_mul_temp_n_85 : STD_LOGIC;
  signal Gain1_mul_temp_n_86 : STD_LOGIC;
  signal Gain1_mul_temp_n_87 : STD_LOGIC;
  signal Gain1_mul_temp_n_88 : STD_LOGIC;
  signal Gain1_mul_temp_n_89 : STD_LOGIC;
  signal Gain1_mul_temp_n_90 : STD_LOGIC;
  signal Gain1_mul_temp_n_91 : STD_LOGIC;
  signal Gain1_mul_temp_n_92 : STD_LOGIC;
  signal Gain1_mul_temp_n_93 : STD_LOGIC;
  signal Gain1_mul_temp_n_94 : STD_LOGIC;
  signal Gain1_mul_temp_n_95 : STD_LOGIC;
  signal Gain1_mul_temp_n_96 : STD_LOGIC;
  signal Gain1_mul_temp_n_97 : STD_LOGIC;
  signal Gain1_mul_temp_n_98 : STD_LOGIC;
  signal Gain1_mul_temp_n_99 : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_100\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_101\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_102\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_103\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_104\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_105\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_58\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_59\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_60\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_61\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_62\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_63\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_64\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_65\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_66\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_67\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_68\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_69\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_70\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_71\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_72\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_73\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_74\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_75\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_76\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_77\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_78\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_79\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_80\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_81\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_82\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_83\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_84\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_85\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_86\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_87\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_88\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_89\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_90\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_91\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_92\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_93\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_94\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_95\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_96\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_97\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_98\ : STD_LOGIC;
  signal \Gain2_mul_temp__0_n_99\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_100\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_101\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_102\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_103\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_104\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_105\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_106\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_107\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_108\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_109\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_110\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_111\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_112\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_113\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_114\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_115\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_116\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_117\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_118\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_119\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_120\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_121\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_122\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_123\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_124\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_125\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_126\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_127\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_128\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_129\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_130\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_131\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_132\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_133\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_134\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_135\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_136\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_137\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_138\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_139\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_140\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_141\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_142\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_143\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_144\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_145\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_146\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_147\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_148\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_149\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_150\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_151\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_152\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_153\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_24\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_25\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_26\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_27\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_28\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_29\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_30\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_31\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_32\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_33\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_34\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_35\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_36\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_37\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_38\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_39\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_40\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_41\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_42\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_43\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_44\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_45\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_46\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_47\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_48\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_49\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_50\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_51\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_52\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_53\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_58\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_59\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_60\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_61\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_62\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_63\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_64\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_65\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_66\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_67\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_68\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_69\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_70\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_71\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_72\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_73\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_74\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_75\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_76\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_77\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_78\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_79\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_80\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_81\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_82\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_83\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_84\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_85\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_86\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_87\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_88\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_89\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_90\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_91\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_92\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_93\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_94\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_95\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_96\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_97\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_98\ : STD_LOGIC;
  signal \Gain2_mul_temp__1_n_99\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_100\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_101\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_102\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_103\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_104\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_105\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_58\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_59\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_60\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_61\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_62\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_63\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_64\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_65\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_66\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_67\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_68\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_69\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_70\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_71\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_72\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_73\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_74\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_75\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_76\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_77\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_78\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_79\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_80\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_81\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_82\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_83\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_84\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_85\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_86\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_87\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_88\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_89\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_90\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_91\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_92\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_93\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_94\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_95\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_96\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_97\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_98\ : STD_LOGIC;
  signal \Gain2_mul_temp__2_n_99\ : STD_LOGIC;
  signal \Gain2_mul_temp__3\ : STD_LOGIC_VECTOR ( 63 downto 59 );
  signal \Gain2_mul_temp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__0_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__10_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__1_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__2_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__3_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__4_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__5_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__6_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__7_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__8_n_3\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_i_1_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_i_2_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_i_3_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_i_4_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_n_0\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_n_1\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_n_2\ : STD_LOGIC;
  signal \Gain2_mul_temp_carry__9_n_3\ : STD_LOGIC;
  signal Gain2_mul_temp_carry_i_1_n_0 : STD_LOGIC;
  signal Gain2_mul_temp_carry_i_2_n_0 : STD_LOGIC;
  signal Gain2_mul_temp_carry_i_3_n_0 : STD_LOGIC;
  signal Gain2_mul_temp_carry_n_0 : STD_LOGIC;
  signal Gain2_mul_temp_carry_n_1 : STD_LOGIC;
  signal Gain2_mul_temp_carry_n_2 : STD_LOGIC;
  signal Gain2_mul_temp_carry_n_3 : STD_LOGIC;
  signal Gain2_mul_temp_n_100 : STD_LOGIC;
  signal Gain2_mul_temp_n_101 : STD_LOGIC;
  signal Gain2_mul_temp_n_102 : STD_LOGIC;
  signal Gain2_mul_temp_n_103 : STD_LOGIC;
  signal Gain2_mul_temp_n_104 : STD_LOGIC;
  signal Gain2_mul_temp_n_105 : STD_LOGIC;
  signal Gain2_mul_temp_n_106 : STD_LOGIC;
  signal Gain2_mul_temp_n_107 : STD_LOGIC;
  signal Gain2_mul_temp_n_108 : STD_LOGIC;
  signal Gain2_mul_temp_n_109 : STD_LOGIC;
  signal Gain2_mul_temp_n_110 : STD_LOGIC;
  signal Gain2_mul_temp_n_111 : STD_LOGIC;
  signal Gain2_mul_temp_n_112 : STD_LOGIC;
  signal Gain2_mul_temp_n_113 : STD_LOGIC;
  signal Gain2_mul_temp_n_114 : STD_LOGIC;
  signal Gain2_mul_temp_n_115 : STD_LOGIC;
  signal Gain2_mul_temp_n_116 : STD_LOGIC;
  signal Gain2_mul_temp_n_117 : STD_LOGIC;
  signal Gain2_mul_temp_n_118 : STD_LOGIC;
  signal Gain2_mul_temp_n_119 : STD_LOGIC;
  signal Gain2_mul_temp_n_120 : STD_LOGIC;
  signal Gain2_mul_temp_n_121 : STD_LOGIC;
  signal Gain2_mul_temp_n_122 : STD_LOGIC;
  signal Gain2_mul_temp_n_123 : STD_LOGIC;
  signal Gain2_mul_temp_n_124 : STD_LOGIC;
  signal Gain2_mul_temp_n_125 : STD_LOGIC;
  signal Gain2_mul_temp_n_126 : STD_LOGIC;
  signal Gain2_mul_temp_n_127 : STD_LOGIC;
  signal Gain2_mul_temp_n_128 : STD_LOGIC;
  signal Gain2_mul_temp_n_129 : STD_LOGIC;
  signal Gain2_mul_temp_n_130 : STD_LOGIC;
  signal Gain2_mul_temp_n_131 : STD_LOGIC;
  signal Gain2_mul_temp_n_132 : STD_LOGIC;
  signal Gain2_mul_temp_n_133 : STD_LOGIC;
  signal Gain2_mul_temp_n_134 : STD_LOGIC;
  signal Gain2_mul_temp_n_135 : STD_LOGIC;
  signal Gain2_mul_temp_n_136 : STD_LOGIC;
  signal Gain2_mul_temp_n_137 : STD_LOGIC;
  signal Gain2_mul_temp_n_138 : STD_LOGIC;
  signal Gain2_mul_temp_n_139 : STD_LOGIC;
  signal Gain2_mul_temp_n_140 : STD_LOGIC;
  signal Gain2_mul_temp_n_141 : STD_LOGIC;
  signal Gain2_mul_temp_n_142 : STD_LOGIC;
  signal Gain2_mul_temp_n_143 : STD_LOGIC;
  signal Gain2_mul_temp_n_144 : STD_LOGIC;
  signal Gain2_mul_temp_n_145 : STD_LOGIC;
  signal Gain2_mul_temp_n_146 : STD_LOGIC;
  signal Gain2_mul_temp_n_147 : STD_LOGIC;
  signal Gain2_mul_temp_n_148 : STD_LOGIC;
  signal Gain2_mul_temp_n_149 : STD_LOGIC;
  signal Gain2_mul_temp_n_150 : STD_LOGIC;
  signal Gain2_mul_temp_n_151 : STD_LOGIC;
  signal Gain2_mul_temp_n_152 : STD_LOGIC;
  signal Gain2_mul_temp_n_153 : STD_LOGIC;
  signal Gain2_mul_temp_n_58 : STD_LOGIC;
  signal Gain2_mul_temp_n_59 : STD_LOGIC;
  signal Gain2_mul_temp_n_60 : STD_LOGIC;
  signal Gain2_mul_temp_n_61 : STD_LOGIC;
  signal Gain2_mul_temp_n_62 : STD_LOGIC;
  signal Gain2_mul_temp_n_63 : STD_LOGIC;
  signal Gain2_mul_temp_n_64 : STD_LOGIC;
  signal Gain2_mul_temp_n_65 : STD_LOGIC;
  signal Gain2_mul_temp_n_66 : STD_LOGIC;
  signal Gain2_mul_temp_n_67 : STD_LOGIC;
  signal Gain2_mul_temp_n_68 : STD_LOGIC;
  signal Gain2_mul_temp_n_69 : STD_LOGIC;
  signal Gain2_mul_temp_n_70 : STD_LOGIC;
  signal Gain2_mul_temp_n_71 : STD_LOGIC;
  signal Gain2_mul_temp_n_72 : STD_LOGIC;
  signal Gain2_mul_temp_n_73 : STD_LOGIC;
  signal Gain2_mul_temp_n_74 : STD_LOGIC;
  signal Gain2_mul_temp_n_75 : STD_LOGIC;
  signal Gain2_mul_temp_n_76 : STD_LOGIC;
  signal Gain2_mul_temp_n_77 : STD_LOGIC;
  signal Gain2_mul_temp_n_78 : STD_LOGIC;
  signal Gain2_mul_temp_n_79 : STD_LOGIC;
  signal Gain2_mul_temp_n_80 : STD_LOGIC;
  signal Gain2_mul_temp_n_81 : STD_LOGIC;
  signal Gain2_mul_temp_n_82 : STD_LOGIC;
  signal Gain2_mul_temp_n_83 : STD_LOGIC;
  signal Gain2_mul_temp_n_84 : STD_LOGIC;
  signal Gain2_mul_temp_n_85 : STD_LOGIC;
  signal Gain2_mul_temp_n_86 : STD_LOGIC;
  signal Gain2_mul_temp_n_87 : STD_LOGIC;
  signal Gain2_mul_temp_n_88 : STD_LOGIC;
  signal Gain2_mul_temp_n_89 : STD_LOGIC;
  signal Gain2_mul_temp_n_90 : STD_LOGIC;
  signal Gain2_mul_temp_n_91 : STD_LOGIC;
  signal Gain2_mul_temp_n_92 : STD_LOGIC;
  signal Gain2_mul_temp_n_93 : STD_LOGIC;
  signal Gain2_mul_temp_n_94 : STD_LOGIC;
  signal Gain2_mul_temp_n_95 : STD_LOGIC;
  signal Gain2_mul_temp_n_96 : STD_LOGIC;
  signal Gain2_mul_temp_n_97 : STD_LOGIC;
  signal Gain2_mul_temp_n_98 : STD_LOGIC;
  signal Gain2_mul_temp_n_99 : STD_LOGIC;
  signal Gain3_add_temp_1_n_100 : STD_LOGIC;
  signal Gain3_add_temp_1_n_101 : STD_LOGIC;
  signal Gain3_add_temp_1_n_102 : STD_LOGIC;
  signal Gain3_add_temp_1_n_103 : STD_LOGIC;
  signal Gain3_add_temp_1_n_104 : STD_LOGIC;
  signal Gain3_add_temp_1_n_105 : STD_LOGIC;
  signal Gain3_add_temp_1_n_106 : STD_LOGIC;
  signal Gain3_add_temp_1_n_107 : STD_LOGIC;
  signal Gain3_add_temp_1_n_108 : STD_LOGIC;
  signal Gain3_add_temp_1_n_109 : STD_LOGIC;
  signal Gain3_add_temp_1_n_110 : STD_LOGIC;
  signal Gain3_add_temp_1_n_111 : STD_LOGIC;
  signal Gain3_add_temp_1_n_112 : STD_LOGIC;
  signal Gain3_add_temp_1_n_113 : STD_LOGIC;
  signal Gain3_add_temp_1_n_114 : STD_LOGIC;
  signal Gain3_add_temp_1_n_115 : STD_LOGIC;
  signal Gain3_add_temp_1_n_116 : STD_LOGIC;
  signal Gain3_add_temp_1_n_117 : STD_LOGIC;
  signal Gain3_add_temp_1_n_118 : STD_LOGIC;
  signal Gain3_add_temp_1_n_119 : STD_LOGIC;
  signal Gain3_add_temp_1_n_120 : STD_LOGIC;
  signal Gain3_add_temp_1_n_121 : STD_LOGIC;
  signal Gain3_add_temp_1_n_122 : STD_LOGIC;
  signal Gain3_add_temp_1_n_123 : STD_LOGIC;
  signal Gain3_add_temp_1_n_124 : STD_LOGIC;
  signal Gain3_add_temp_1_n_125 : STD_LOGIC;
  signal Gain3_add_temp_1_n_126 : STD_LOGIC;
  signal Gain3_add_temp_1_n_127 : STD_LOGIC;
  signal Gain3_add_temp_1_n_128 : STD_LOGIC;
  signal Gain3_add_temp_1_n_129 : STD_LOGIC;
  signal Gain3_add_temp_1_n_130 : STD_LOGIC;
  signal Gain3_add_temp_1_n_131 : STD_LOGIC;
  signal Gain3_add_temp_1_n_132 : STD_LOGIC;
  signal Gain3_add_temp_1_n_133 : STD_LOGIC;
  signal Gain3_add_temp_1_n_134 : STD_LOGIC;
  signal Gain3_add_temp_1_n_135 : STD_LOGIC;
  signal Gain3_add_temp_1_n_136 : STD_LOGIC;
  signal Gain3_add_temp_1_n_137 : STD_LOGIC;
  signal Gain3_add_temp_1_n_138 : STD_LOGIC;
  signal Gain3_add_temp_1_n_139 : STD_LOGIC;
  signal Gain3_add_temp_1_n_140 : STD_LOGIC;
  signal Gain3_add_temp_1_n_141 : STD_LOGIC;
  signal Gain3_add_temp_1_n_142 : STD_LOGIC;
  signal Gain3_add_temp_1_n_143 : STD_LOGIC;
  signal Gain3_add_temp_1_n_144 : STD_LOGIC;
  signal Gain3_add_temp_1_n_145 : STD_LOGIC;
  signal Gain3_add_temp_1_n_146 : STD_LOGIC;
  signal Gain3_add_temp_1_n_147 : STD_LOGIC;
  signal Gain3_add_temp_1_n_148 : STD_LOGIC;
  signal Gain3_add_temp_1_n_149 : STD_LOGIC;
  signal Gain3_add_temp_1_n_150 : STD_LOGIC;
  signal Gain3_add_temp_1_n_151 : STD_LOGIC;
  signal Gain3_add_temp_1_n_152 : STD_LOGIC;
  signal Gain3_add_temp_1_n_153 : STD_LOGIC;
  signal Gain3_add_temp_1_n_77 : STD_LOGIC;
  signal Gain3_add_temp_1_n_78 : STD_LOGIC;
  signal Gain3_add_temp_1_n_79 : STD_LOGIC;
  signal Gain3_add_temp_1_n_80 : STD_LOGIC;
  signal Gain3_add_temp_1_n_81 : STD_LOGIC;
  signal Gain3_add_temp_1_n_82 : STD_LOGIC;
  signal Gain3_add_temp_1_n_83 : STD_LOGIC;
  signal Gain3_add_temp_1_n_84 : STD_LOGIC;
  signal Gain3_add_temp_1_n_85 : STD_LOGIC;
  signal Gain3_add_temp_1_n_86 : STD_LOGIC;
  signal Gain3_add_temp_1_n_87 : STD_LOGIC;
  signal Gain3_add_temp_1_n_88 : STD_LOGIC;
  signal Gain3_add_temp_1_n_89 : STD_LOGIC;
  signal Gain3_add_temp_1_n_90 : STD_LOGIC;
  signal Gain3_add_temp_1_n_91 : STD_LOGIC;
  signal Gain3_add_temp_1_n_92 : STD_LOGIC;
  signal Gain3_add_temp_1_n_93 : STD_LOGIC;
  signal Gain3_add_temp_1_n_94 : STD_LOGIC;
  signal Gain3_add_temp_1_n_95 : STD_LOGIC;
  signal Gain3_add_temp_1_n_96 : STD_LOGIC;
  signal Gain3_add_temp_1_n_97 : STD_LOGIC;
  signal Gain3_add_temp_1_n_98 : STD_LOGIC;
  signal Gain3_add_temp_1_n_99 : STD_LOGIC;
  signal Gain3_add_temp_2_n_100 : STD_LOGIC;
  signal Gain3_add_temp_2_n_101 : STD_LOGIC;
  signal Gain3_add_temp_2_n_102 : STD_LOGIC;
  signal Gain3_add_temp_2_n_103 : STD_LOGIC;
  signal Gain3_add_temp_2_n_104 : STD_LOGIC;
  signal Gain3_add_temp_2_n_105 : STD_LOGIC;
  signal Gain3_add_temp_2_n_77 : STD_LOGIC;
  signal Gain3_add_temp_2_n_78 : STD_LOGIC;
  signal Gain3_add_temp_2_n_79 : STD_LOGIC;
  signal Gain3_add_temp_2_n_80 : STD_LOGIC;
  signal Gain3_add_temp_2_n_81 : STD_LOGIC;
  signal Gain3_add_temp_2_n_82 : STD_LOGIC;
  signal Gain3_add_temp_2_n_83 : STD_LOGIC;
  signal Gain3_add_temp_2_n_84 : STD_LOGIC;
  signal Gain3_add_temp_2_n_85 : STD_LOGIC;
  signal Gain3_add_temp_2_n_86 : STD_LOGIC;
  signal Gain3_add_temp_2_n_87 : STD_LOGIC;
  signal Gain3_add_temp_2_n_88 : STD_LOGIC;
  signal Gain3_add_temp_2_n_89 : STD_LOGIC;
  signal Gain3_add_temp_2_n_90 : STD_LOGIC;
  signal Gain3_add_temp_2_n_91 : STD_LOGIC;
  signal Gain3_add_temp_2_n_92 : STD_LOGIC;
  signal Gain3_add_temp_2_n_93 : STD_LOGIC;
  signal Gain3_add_temp_2_n_94 : STD_LOGIC;
  signal Gain3_add_temp_2_n_95 : STD_LOGIC;
  signal Gain3_add_temp_2_n_96 : STD_LOGIC;
  signal Gain3_add_temp_2_n_97 : STD_LOGIC;
  signal Gain3_add_temp_2_n_98 : STD_LOGIC;
  signal Gain3_add_temp_2_n_99 : STD_LOGIC;
  signal Gain3_add_temp_n_100 : STD_LOGIC;
  signal Gain3_add_temp_n_101 : STD_LOGIC;
  signal Gain3_add_temp_n_102 : STD_LOGIC;
  signal Gain3_add_temp_n_103 : STD_LOGIC;
  signal Gain3_add_temp_n_104 : STD_LOGIC;
  signal Gain3_add_temp_n_105 : STD_LOGIC;
  signal Gain3_add_temp_n_106 : STD_LOGIC;
  signal Gain3_add_temp_n_107 : STD_LOGIC;
  signal Gain3_add_temp_n_108 : STD_LOGIC;
  signal Gain3_add_temp_n_109 : STD_LOGIC;
  signal Gain3_add_temp_n_110 : STD_LOGIC;
  signal Gain3_add_temp_n_111 : STD_LOGIC;
  signal Gain3_add_temp_n_112 : STD_LOGIC;
  signal Gain3_add_temp_n_113 : STD_LOGIC;
  signal Gain3_add_temp_n_114 : STD_LOGIC;
  signal Gain3_add_temp_n_115 : STD_LOGIC;
  signal Gain3_add_temp_n_116 : STD_LOGIC;
  signal Gain3_add_temp_n_117 : STD_LOGIC;
  signal Gain3_add_temp_n_118 : STD_LOGIC;
  signal Gain3_add_temp_n_119 : STD_LOGIC;
  signal Gain3_add_temp_n_120 : STD_LOGIC;
  signal Gain3_add_temp_n_121 : STD_LOGIC;
  signal Gain3_add_temp_n_122 : STD_LOGIC;
  signal Gain3_add_temp_n_123 : STD_LOGIC;
  signal Gain3_add_temp_n_124 : STD_LOGIC;
  signal Gain3_add_temp_n_125 : STD_LOGIC;
  signal Gain3_add_temp_n_126 : STD_LOGIC;
  signal Gain3_add_temp_n_127 : STD_LOGIC;
  signal Gain3_add_temp_n_128 : STD_LOGIC;
  signal Gain3_add_temp_n_129 : STD_LOGIC;
  signal Gain3_add_temp_n_130 : STD_LOGIC;
  signal Gain3_add_temp_n_131 : STD_LOGIC;
  signal Gain3_add_temp_n_132 : STD_LOGIC;
  signal Gain3_add_temp_n_133 : STD_LOGIC;
  signal Gain3_add_temp_n_134 : STD_LOGIC;
  signal Gain3_add_temp_n_135 : STD_LOGIC;
  signal Gain3_add_temp_n_136 : STD_LOGIC;
  signal Gain3_add_temp_n_137 : STD_LOGIC;
  signal Gain3_add_temp_n_138 : STD_LOGIC;
  signal Gain3_add_temp_n_139 : STD_LOGIC;
  signal Gain3_add_temp_n_140 : STD_LOGIC;
  signal Gain3_add_temp_n_141 : STD_LOGIC;
  signal Gain3_add_temp_n_142 : STD_LOGIC;
  signal Gain3_add_temp_n_143 : STD_LOGIC;
  signal Gain3_add_temp_n_144 : STD_LOGIC;
  signal Gain3_add_temp_n_145 : STD_LOGIC;
  signal Gain3_add_temp_n_146 : STD_LOGIC;
  signal Gain3_add_temp_n_147 : STD_LOGIC;
  signal Gain3_add_temp_n_148 : STD_LOGIC;
  signal Gain3_add_temp_n_149 : STD_LOGIC;
  signal Gain3_add_temp_n_150 : STD_LOGIC;
  signal Gain3_add_temp_n_151 : STD_LOGIC;
  signal Gain3_add_temp_n_152 : STD_LOGIC;
  signal Gain3_add_temp_n_153 : STD_LOGIC;
  signal Gain3_add_temp_n_77 : STD_LOGIC;
  signal Gain3_add_temp_n_78 : STD_LOGIC;
  signal Gain3_add_temp_n_79 : STD_LOGIC;
  signal Gain3_add_temp_n_80 : STD_LOGIC;
  signal Gain3_add_temp_n_81 : STD_LOGIC;
  signal Gain3_add_temp_n_82 : STD_LOGIC;
  signal Gain3_add_temp_n_83 : STD_LOGIC;
  signal Gain3_add_temp_n_84 : STD_LOGIC;
  signal Gain3_add_temp_n_85 : STD_LOGIC;
  signal Gain3_add_temp_n_86 : STD_LOGIC;
  signal Gain3_add_temp_n_87 : STD_LOGIC;
  signal Gain3_add_temp_n_88 : STD_LOGIC;
  signal Gain3_add_temp_n_89 : STD_LOGIC;
  signal Gain3_add_temp_n_90 : STD_LOGIC;
  signal Gain3_add_temp_n_91 : STD_LOGIC;
  signal Gain3_add_temp_n_92 : STD_LOGIC;
  signal Gain3_add_temp_n_93 : STD_LOGIC;
  signal Gain3_add_temp_n_94 : STD_LOGIC;
  signal Gain3_add_temp_n_95 : STD_LOGIC;
  signal Gain3_add_temp_n_96 : STD_LOGIC;
  signal Gain3_add_temp_n_97 : STD_LOGIC;
  signal Gain3_add_temp_n_98 : STD_LOGIC;
  signal Gain3_add_temp_n_99 : STD_LOGIC;
  signal \Gain3_mul_temp__0\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal Gain3_mul_temp_n_75 : STD_LOGIC;
  signal Gain3_mul_temp_n_76 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_100 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_101 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_102 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_103 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_104 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_105 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_75 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_76 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_92 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_93 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_94 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_95 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_96 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_97 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_98 : STD_LOGIC;
  signal Gain5_mul_temp_1_n_99 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_100 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_101 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_102 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_103 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_104 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_105 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_92 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_93 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_94 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_95 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_96 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_97 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_98 : STD_LOGIC;
  signal Gain5_mul_temp_2_n_99 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_100 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_101 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_102 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_103 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_104 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_105 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_74 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_75 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_76 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_92 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_93 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_94 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_95 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_96 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_97 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_98 : STD_LOGIC;
  signal Gain5_mul_temp_3_n_99 : STD_LOGIC;
  signal Gain5_mul_temp_n_100 : STD_LOGIC;
  signal Gain5_mul_temp_n_101 : STD_LOGIC;
  signal Gain5_mul_temp_n_102 : STD_LOGIC;
  signal Gain5_mul_temp_n_103 : STD_LOGIC;
  signal Gain5_mul_temp_n_104 : STD_LOGIC;
  signal Gain5_mul_temp_n_105 : STD_LOGIC;
  signal Gain5_mul_temp_n_92 : STD_LOGIC;
  signal Gain5_mul_temp_n_93 : STD_LOGIC;
  signal Gain5_mul_temp_n_94 : STD_LOGIC;
  signal Gain5_mul_temp_n_95 : STD_LOGIC;
  signal Gain5_mul_temp_n_96 : STD_LOGIC;
  signal Gain5_mul_temp_n_97 : STD_LOGIC;
  signal Gain5_mul_temp_n_98 : STD_LOGIC;
  signal Gain5_mul_temp_n_99 : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_n_1\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__1_n_3\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_n_1\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_n_2\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry__2_n_3\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_n_0\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_n_1\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_n_2\ : STD_LOGIC;
  signal \Gain6_1_0__0_carry_n_3\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain6_2_0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_n_1\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain6_2_0_carry__1_n_3\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_n_1\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_n_2\ : STD_LOGIC;
  signal \Gain6_2_0_carry__2_n_3\ : STD_LOGIC;
  signal Gain6_2_0_carry_i_1_n_0 : STD_LOGIC;
  signal Gain6_2_0_carry_i_2_n_0 : STD_LOGIC;
  signal Gain6_2_0_carry_i_3_n_0 : STD_LOGIC;
  signal Gain6_2_0_carry_i_4_n_0 : STD_LOGIC;
  signal Gain6_2_0_carry_n_0 : STD_LOGIC;
  signal Gain6_2_0_carry_n_1 : STD_LOGIC;
  signal Gain6_2_0_carry_n_2 : STD_LOGIC;
  signal Gain6_2_0_carry_n_3 : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_n_1\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_n_2\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__0_n_3\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_n_1\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_n_2\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__1_n_3\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_n_1\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_n_2\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry__2_n_3\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_n_0\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_n_1\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_n_2\ : STD_LOGIC;
  signal \Gain6_3_0__1_carry_n_3\ : STD_LOGIC;
  signal \Gain6_out1[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Gain6_out1[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Gain6_out1[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Gain8_0_0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain8_0_0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain8_0_0_carry__1_n_3\ : STD_LOGIC;
  signal Gain8_0_0_carry_i_1_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_i_2_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_i_3_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_i_4_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_i_5_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_n_0 : STD_LOGIC;
  signal Gain8_0_0_carry_n_1 : STD_LOGIC;
  signal Gain8_0_0_carry_n_2 : STD_LOGIC;
  signal Gain8_0_0_carry_n_3 : STD_LOGIC;
  signal \Gain8_1_0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain8_1_0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_n_1\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain8_1_0_carry__1_n_3\ : STD_LOGIC;
  signal \Gain8_1_0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_1_0_carry__2_n_2\ : STD_LOGIC;
  signal \Gain8_1_0_carry__2_n_3\ : STD_LOGIC;
  signal Gain8_1_0_carry_i_1_n_0 : STD_LOGIC;
  signal Gain8_1_0_carry_i_2_n_0 : STD_LOGIC;
  signal Gain8_1_0_carry_i_3_n_0 : STD_LOGIC;
  signal Gain8_1_0_carry_i_4_n_0 : STD_LOGIC;
  signal Gain8_1_0_carry_n_0 : STD_LOGIC;
  signal Gain8_1_0_carry_n_1 : STD_LOGIC;
  signal Gain8_1_0_carry_n_2 : STD_LOGIC;
  signal Gain8_1_0_carry_n_3 : STD_LOGIC;
  signal \Gain8_2_0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain8_2_0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain8_2_0_carry__1_n_3\ : STD_LOGIC;
  signal Gain8_2_0_carry_i_1_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_i_2_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_i_3_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_i_4_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_i_5_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_n_0 : STD_LOGIC;
  signal Gain8_2_0_carry_n_1 : STD_LOGIC;
  signal Gain8_2_0_carry_n_2 : STD_LOGIC;
  signal Gain8_2_0_carry_n_3 : STD_LOGIC;
  signal \Gain8_3_0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_n_1\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_n_2\ : STD_LOGIC;
  signal \Gain8_3_0_carry__0_n_3\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_n_1\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_n_2\ : STD_LOGIC;
  signal \Gain8_3_0_carry__1_n_3\ : STD_LOGIC;
  signal \Gain8_3_0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Gain8_3_0_carry__2_n_2\ : STD_LOGIC;
  signal \Gain8_3_0_carry__2_n_3\ : STD_LOGIC;
  signal Gain8_3_0_carry_i_1_n_0 : STD_LOGIC;
  signal Gain8_3_0_carry_i_2_n_0 : STD_LOGIC;
  signal Gain8_3_0_carry_i_3_n_0 : STD_LOGIC;
  signal Gain8_3_0_carry_i_4_n_0 : STD_LOGIC;
  signal Gain8_3_0_carry_n_0 : STD_LOGIC;
  signal Gain8_3_0_carry_n_1 : STD_LOGIC;
  signal Gain8_3_0_carry_n_2 : STD_LOGIC;
  signal Gain8_3_0_carry_n_3 : STD_LOGIC;
  signal \Gain8_out1[0]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \Gain8_out1[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Gain8_out1[2]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \Gain8_out1[3]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Gain_mul_temp_i_10_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_11_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_12_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_12_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_12_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_12_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_13_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_14_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_15_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_16_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_17_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_17_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_17_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_17_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_18_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_19_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_1_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_1_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_1_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_20_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_21_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_22_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_22_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_22_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_22_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_23_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_24_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_25_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_26_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_27_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_27_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_27_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_27_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_28_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_29_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_2_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_2_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_2_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_2_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_30_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_31_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_32_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_32_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_32_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_32_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_33_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_34_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_35_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_36_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_37_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_37_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_37_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_37_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_38_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_39_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_3_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_40_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_41_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_42_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_42_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_42_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_42_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_43_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_44_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_45_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_46_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_47_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_47_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_47_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_47_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_48_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_49_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_4_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_50_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_51_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_52_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_52_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_52_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_52_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_53_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_54_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_55_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_56_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_57_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_58_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_59_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_5_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_6_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_7_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_7_n_1 : STD_LOGIC;
  signal Gain_mul_temp_i_7_n_2 : STD_LOGIC;
  signal Gain_mul_temp_i_7_n_3 : STD_LOGIC;
  signal Gain_mul_temp_i_8_n_0 : STD_LOGIC;
  signal Gain_mul_temp_i_9_n_0 : STD_LOGIC;
  signal Gain_mul_temp_n_100 : STD_LOGIC;
  signal Gain_mul_temp_n_101 : STD_LOGIC;
  signal Gain_mul_temp_n_102 : STD_LOGIC;
  signal Gain_mul_temp_n_103 : STD_LOGIC;
  signal Gain_mul_temp_n_104 : STD_LOGIC;
  signal Gain_mul_temp_n_105 : STD_LOGIC;
  signal Gain_mul_temp_n_74 : STD_LOGIC;
  signal Gain_mul_temp_n_75 : STD_LOGIC;
  signal Gain_mul_temp_n_76 : STD_LOGIC;
  signal Gain_mul_temp_n_77 : STD_LOGIC;
  signal Gain_mul_temp_n_78 : STD_LOGIC;
  signal Gain_mul_temp_n_79 : STD_LOGIC;
  signal Gain_mul_temp_n_80 : STD_LOGIC;
  signal Gain_mul_temp_n_81 : STD_LOGIC;
  signal Gain_mul_temp_n_82 : STD_LOGIC;
  signal Gain_mul_temp_n_83 : STD_LOGIC;
  signal Gain_mul_temp_n_84 : STD_LOGIC;
  signal Gain_mul_temp_n_85 : STD_LOGIC;
  signal Gain_mul_temp_n_86 : STD_LOGIC;
  signal Gain_mul_temp_n_87 : STD_LOGIC;
  signal Gain_mul_temp_n_88 : STD_LOGIC;
  signal Gain_mul_temp_n_89 : STD_LOGIC;
  signal Gain_mul_temp_n_90 : STD_LOGIC;
  signal Gain_mul_temp_n_91 : STD_LOGIC;
  signal Gain_mul_temp_n_92 : STD_LOGIC;
  signal Gain_mul_temp_n_93 : STD_LOGIC;
  signal Gain_mul_temp_n_94 : STD_LOGIC;
  signal Gain_mul_temp_n_95 : STD_LOGIC;
  signal Gain_mul_temp_n_96 : STD_LOGIC;
  signal Gain_mul_temp_n_97 : STD_LOGIC;
  signal Gain_mul_temp_n_98 : STD_LOGIC;
  signal Gain_mul_temp_n_99 : STD_LOGIC;
  signal Multiply_mul_temp_n_100 : STD_LOGIC;
  signal Multiply_mul_temp_n_101 : STD_LOGIC;
  signal Multiply_mul_temp_n_102 : STD_LOGIC;
  signal Multiply_mul_temp_n_103 : STD_LOGIC;
  signal Multiply_mul_temp_n_104 : STD_LOGIC;
  signal Multiply_mul_temp_n_105 : STD_LOGIC;
  signal Multiply_mul_temp_n_74 : STD_LOGIC;
  signal Multiply_mul_temp_n_89 : STD_LOGIC;
  signal Multiply_mul_temp_n_90 : STD_LOGIC;
  signal Multiply_mul_temp_n_91 : STD_LOGIC;
  signal Multiply_mul_temp_n_92 : STD_LOGIC;
  signal Multiply_mul_temp_n_93 : STD_LOGIC;
  signal Multiply_mul_temp_n_94 : STD_LOGIC;
  signal Multiply_mul_temp_n_95 : STD_LOGIC;
  signal Multiply_mul_temp_n_96 : STD_LOGIC;
  signal Multiply_mul_temp_n_97 : STD_LOGIC;
  signal Multiply_mul_temp_n_98 : STD_LOGIC;
  signal Multiply_mul_temp_n_99 : STD_LOGIC;
  signal Multiply_out1 : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal Sum1_add_temp_carry_i_1_n_0 : STD_LOGIC;
  signal Sum1_add_temp_carry_i_2_n_0 : STD_LOGIC;
  signal Sum1_add_temp_carry_n_2 : STD_LOGIC;
  signal Sum1_add_temp_carry_n_3 : STD_LOGIC;
  signal Sum3_out1 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \Sum3_sub_temp__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__0_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__1_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__2_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__3_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__4_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__5_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry__5_n_3\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_n_0\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_n_1\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_n_2\ : STD_LOGIC;
  signal \Sum3_sub_temp__0_carry_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[0]_carry_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[1]_carry_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[2]_carry_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_n_0\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_n_1\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_n_2\ : STD_LOGIC;
  signal \Sum4_add_temp[3]_carry_n_3\ : STD_LOGIC;
  signal \Sum4_out1[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum4_out1[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum4_out1[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum4_out1[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Sum5_sub_cast[0]\ : STD_LOGIC_VECTOR ( 15 downto 11 );
  signal \Sum6_add_cast[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \Sum6_add_cast[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Sum6_add_cast[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \Sum6_add_cast[3]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Sum6_add_temp[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Sum6_add_temp[0]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[0]_carry_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Sum6_add_temp[1]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[1]_carry_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[2]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Sum6_add_temp[2]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[2]_carry_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[3]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Sum6_add_temp[3]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__0_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__1_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__2_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry__2_n_3\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_i_1_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_i_2_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_i_3_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_i_4_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_n_0\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_n_1\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_n_2\ : STD_LOGIC;
  signal \Sum6_add_temp[3]_carry_n_3\ : STD_LOGIC;
  signal Sum_sub_temp : STD_LOGIC_VECTOR ( 14 downto 10 );
  signal \Sum_sub_temp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_n_1\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_n_2\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__0_n_3\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_n_1\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_n_2\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__1_n_3\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__2_n_2\ : STD_LOGIC;
  signal \Sum_sub_temp_carry__2_n_3\ : STD_LOGIC;
  signal Sum_sub_temp_carry_i_1_n_0 : STD_LOGIC;
  signal Sum_sub_temp_carry_i_2_n_0 : STD_LOGIC;
  signal Sum_sub_temp_carry_i_3_n_0 : STD_LOGIC;
  signal Sum_sub_temp_carry_i_4_n_0 : STD_LOGIC;
  signal Sum_sub_temp_carry_n_0 : STD_LOGIC;
  signal Sum_sub_temp_carry_n_1 : STD_LOGIC;
  signal Sum_sub_temp_carry_n_2 : STD_LOGIC;
  signal Sum_sub_temp_carry_n_3 : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Unit_Delay2_out1_reg[1]\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[1][15]_rep_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[2][15]_rep_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\ : STD_LOGIC;
  signal \Unit_Delay2_out1_reg[3][15]_rep_n_0\ : STD_LOGIC;
  signal dtc_out_62 : STD_LOGIC;
  signal \dtc_out_62_carry__0_i_1_n_0\ : STD_LOGIC;
  signal dtc_out_62_carry_i_1_n_0 : STD_LOGIC;
  signal dtc_out_62_carry_i_2_n_0 : STD_LOGIC;
  signal dtc_out_62_carry_i_3_n_0 : STD_LOGIC;
  signal dtc_out_62_carry_i_4_n_0 : STD_LOGIC;
  signal dtc_out_62_carry_n_0 : STD_LOGIC;
  signal dtc_out_62_carry_n_1 : STD_LOGIC;
  signal dtc_out_62_carry_n_2 : STD_LOGIC;
  signal dtc_out_62_carry_n_3 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_75 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_2_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_3_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_83 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_84 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_85 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_86 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_87 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_88 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_89 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_90 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_91 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_1_mul_temp_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_74 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_75 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_1_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_2_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_2_mul_temp_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_1_n_99 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_100 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_101 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_102 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_103 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_104 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_105 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_74 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_75 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_92 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_93 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_94 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_95 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_96 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_97 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_98 : STD_LOGIC;
  signal mul_Gain6_dotp_3_mul_temp_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_74 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_75 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_2_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_3_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_0_mul_temp_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_1_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_2_n_99 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_100 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_101 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_102 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_103 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_104 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_105 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_74 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_75 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_91 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_92 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_93 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_94 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_95 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_96 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_97 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_98 : STD_LOGIC;
  signal mul_Gain8_dotp_1_mul_temp_n_99 : STD_LOGIC;
  signal \^pwm\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pwm[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_n_1\ : STD_LOGIC;
  signal \pwm[10]_INST_0_n_2\ : STD_LOGIC;
  signal \pwm[10]_INST_0_n_3\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_n_1\ : STD_LOGIC;
  signal \pwm[2]_INST_0_n_2\ : STD_LOGIC;
  signal \pwm[2]_INST_0_n_3\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_n_1\ : STD_LOGIC;
  signal \pwm[6]_INST_0_n_2\ : STD_LOGIC;
  signal \pwm[6]_INST_0_n_3\ : STD_LOGIC;
  signal sum_Gain6_dotp_2_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_n_1\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_n_2\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__0_n_3\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_n_1\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_n_2\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__1_n_3\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_n_1\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_n_2\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry__2_n_3\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_n_0\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_n_1\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_n_2\ : STD_LOGIC;
  signal \sum_Gain6_dotp_2_3__0_carry_n_3\ : STD_LOGIC;
  signal tmp_Gain6_dotp_10 : STD_LOGIC;
  signal tmp_Gain6_dotp_1_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_Gain6_dotp_1_3 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal tmp_Gain6_dotp_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_Gain6_dotp_2_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_Gain6_dotp_2_2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal tmp_Gain6_dotp_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_Gain6_dotp_3_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal tmp_Gain8_dotp_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmp_Gain8_dotp_0_2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal tmp_Gain8_dotp_0_3 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal tmp_Gain8_dotp_1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal tmp_Gain8_dotp_1_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal tmp_Gain8_dotp_1_2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_Gain1_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain1_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain1_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain1_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain1_mul_temp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_Gain1_mul_temp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain1_mul_temp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain1_mul_temp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Gain1_mul_temp__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain1_mul_temp__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain1_mul_temp__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain1_mul_temp__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_Gain1_mul_temp__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain1_mul_temp__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain1_mul_temp__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain2_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain2_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain2_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain2_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_Gain2_mul_temp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain2_mul_temp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Gain2_mul_temp__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain2_mul_temp__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_Gain2_mul_temp__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_Gain2_mul_temp__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_Gain2_mul_temp__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain2_mul_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain2_mul_temp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Gain2_mul_temp_carry__9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Gain3_add_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain3_add_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain3_add_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain3_add_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 29 );
  signal NLW_Gain3_add_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain3_add_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain3_add_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain3_add_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 29 );
  signal NLW_Gain3_add_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_add_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain3_add_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain3_add_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain3_add_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 29 );
  signal NLW_Gain3_add_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain3_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain3_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain3_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain3_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain3_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_Gain3_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain5_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain5_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain5_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain5_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 23 );
  signal NLW_Gain5_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain5_mul_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain5_mul_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain5_mul_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain5_mul_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_Gain5_mul_temp_1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain5_mul_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain5_mul_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain5_mul_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain5_mul_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_Gain5_mul_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain5_mul_temp_3_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain5_mul_temp_3_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain5_mul_temp_3_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain5_mul_temp_3_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain5_mul_temp_3_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Gain5_mul_temp_3_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_Gain6_1_0__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain6_2_0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain6_3_0__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain8_0_0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_Gain8_0_0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain8_1_0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Gain8_1_0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain8_2_0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_Gain8_2_0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Gain8_3_0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Gain8_3_0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Gain_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Gain_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Gain_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Gain_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Gain_mul_temp_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Gain_mul_temp_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_17_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_Gain_mul_temp_i_22_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_27_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_32_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_42_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_47_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_52_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Gain_mul_temp_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Multiply_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_Multiply_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_Multiply_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_Multiply_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Multiply_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_Multiply_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_Sum1_add_temp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_Sum1_add_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Sum3_sub_temp__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum3_sub_temp__0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum3_sub_temp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Sum3_sub_temp__0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Sum3_sub_temp__0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Sum4_add_temp[0]_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum4_add_temp[0]_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum4_add_temp[0]_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[0]_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[0]_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum4_add_temp[1]_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum4_add_temp[1]_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[1]_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum4_add_temp[2]_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum4_add_temp[2]_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum4_add_temp[2]_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[2]_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[2]_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum4_add_temp[3]_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Sum4_add_temp[3]_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum4_add_temp[3]_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Sum6_add_temp[1]_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Sum6_add_temp[1]_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Sum6_add_temp[3]_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Sum6_add_temp[3]_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_Sum_sub_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum_sub_temp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Sum_sub_temp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_Sum_sub_temp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Sum_sub_temp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_dtc_out_62_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dtc_out_62_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dtc_out_62_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_mul_Gain6_dotp_1_mul_temp_3_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 30 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_mul_Gain6_dotp_2_mul_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_mul_Gain6_dotp_3_mul_temp_1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_mul_Gain8_dotp_0_mul_temp_3_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_1_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 25 );
  signal NLW_mul_Gain8_dotp_1_mul_temp_2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_pwm[14]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[14]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_Gain6_dotp_2_3__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Gain1_mul_temp : label is "{SYNTH-10 {cell *THIS*} {string 16x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain1_mul_temp__0\ : label is "{SYNTH-10 {cell *THIS*} {string 16x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain1_mul_temp__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain1_mul_temp__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of Gain2_mul_temp : label is "{SYNTH-10 {cell *THIS*} {string 16x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain2_mul_temp__0\ : label is "{SYNTH-10 {cell *THIS*} {string 16x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain2_mul_temp__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \Gain2_mul_temp__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of Gain3_add_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain3_add_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain3_add_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain3_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain5_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain5_mul_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain5_mul_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Gain5_mul_temp_3 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \Gain6_1_0__0_carry_i_3\ : label is "lutpair1";
  attribute HLUTNM of \Gain6_1_0__0_carry_i_7\ : label is "lutpair1";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_1\ : label is "lutpair8";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_2\ : label is "lutpair7";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_3\ : label is "lutpair6";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_5\ : label is "lutpair9";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_6\ : label is "lutpair8";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_7\ : label is "lutpair7";
  attribute HLUTNM of \Gain6_3_0__1_carry__0_i_8\ : label is "lutpair6";
  attribute HLUTNM of \Gain6_3_0__1_carry__1_i_4\ : label is "lutpair9";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_1\ : label is "lutpair4";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_2\ : label is "lutpair3";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_3\ : label is "lutpair2";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_4\ : label is "lutpair5";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_5\ : label is "lutpair4";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_6\ : label is "lutpair3";
  attribute HLUTNM of \Gain6_3_0__1_carry_i_7\ : label is "lutpair2";
  attribute METHODOLOGY_DRC_VIOS of Gain_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of Multiply_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep__0\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep__1\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep__2\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep__3\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[1][15]_rep__4\ : label is "Unit_Delay2_out1_reg[1][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]_rep\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]_rep__0\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]_rep__1\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]_rep__2\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[2][15]_rep__3\ : label is "Unit_Delay2_out1_reg[2][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]_rep\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]_rep__0\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]_rep__1\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]_rep__2\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute ORIG_CELL_NAME of \Unit_Delay2_out1_reg[3][15]_rep__3\ : label is "Unit_Delay2_out1_reg[3][15]";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_1_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_1_mul_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_1_mul_temp_3 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_2_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_2_mul_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_2_mul_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_3_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain6_dotp_3_mul_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_0_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_0_mul_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_0_mul_temp_3 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_1_mul_temp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_1_mul_temp_1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of mul_Gain8_dotp_1_mul_temp_2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute HLUTNM of \sum_Gain6_dotp_2_3__0_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \sum_Gain6_dotp_2_3__0_carry_i_7\ : label is "lutpair0";
begin
  pwm(15 downto 0) <= \^pwm\(15 downto 0);
Gain1_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => destination_x(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain1_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010011101101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain1_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain1_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain1_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain1_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain1_mul_temp_OVERFLOW_UNCONNECTED,
      P(47) => Gain1_mul_temp_n_58,
      P(46) => Gain1_mul_temp_n_59,
      P(45) => Gain1_mul_temp_n_60,
      P(44) => Gain1_mul_temp_n_61,
      P(43) => Gain1_mul_temp_n_62,
      P(42) => Gain1_mul_temp_n_63,
      P(41) => Gain1_mul_temp_n_64,
      P(40) => Gain1_mul_temp_n_65,
      P(39) => Gain1_mul_temp_n_66,
      P(38) => Gain1_mul_temp_n_67,
      P(37) => Gain1_mul_temp_n_68,
      P(36) => Gain1_mul_temp_n_69,
      P(35) => Gain1_mul_temp_n_70,
      P(34) => Gain1_mul_temp_n_71,
      P(33) => Gain1_mul_temp_n_72,
      P(32) => Gain1_mul_temp_n_73,
      P(31) => Gain1_mul_temp_n_74,
      P(30) => Gain1_mul_temp_n_75,
      P(29) => Gain1_mul_temp_n_76,
      P(28) => Gain1_mul_temp_n_77,
      P(27) => Gain1_mul_temp_n_78,
      P(26) => Gain1_mul_temp_n_79,
      P(25) => Gain1_mul_temp_n_80,
      P(24) => Gain1_mul_temp_n_81,
      P(23) => Gain1_mul_temp_n_82,
      P(22) => Gain1_mul_temp_n_83,
      P(21) => Gain1_mul_temp_n_84,
      P(20) => Gain1_mul_temp_n_85,
      P(19) => Gain1_mul_temp_n_86,
      P(18) => Gain1_mul_temp_n_87,
      P(17) => Gain1_mul_temp_n_88,
      P(16) => Gain1_mul_temp_n_89,
      P(15) => Gain1_mul_temp_n_90,
      P(14) => Gain1_mul_temp_n_91,
      P(13) => Gain1_mul_temp_n_92,
      P(12) => Gain1_mul_temp_n_93,
      P(11) => Gain1_mul_temp_n_94,
      P(10) => Gain1_mul_temp_n_95,
      P(9) => Gain1_mul_temp_n_96,
      P(8) => Gain1_mul_temp_n_97,
      P(7) => Gain1_mul_temp_n_98,
      P(6) => Gain1_mul_temp_n_99,
      P(5) => Gain1_mul_temp_n_100,
      P(4) => Gain1_mul_temp_n_101,
      P(3) => Gain1_mul_temp_n_102,
      P(2) => Gain1_mul_temp_n_103,
      P(1) => Gain1_mul_temp_n_104,
      P(0) => Gain1_mul_temp_n_105,
      PATTERNBDETECT => NLW_Gain1_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain1_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => Gain1_mul_temp_n_106,
      PCOUT(46) => Gain1_mul_temp_n_107,
      PCOUT(45) => Gain1_mul_temp_n_108,
      PCOUT(44) => Gain1_mul_temp_n_109,
      PCOUT(43) => Gain1_mul_temp_n_110,
      PCOUT(42) => Gain1_mul_temp_n_111,
      PCOUT(41) => Gain1_mul_temp_n_112,
      PCOUT(40) => Gain1_mul_temp_n_113,
      PCOUT(39) => Gain1_mul_temp_n_114,
      PCOUT(38) => Gain1_mul_temp_n_115,
      PCOUT(37) => Gain1_mul_temp_n_116,
      PCOUT(36) => Gain1_mul_temp_n_117,
      PCOUT(35) => Gain1_mul_temp_n_118,
      PCOUT(34) => Gain1_mul_temp_n_119,
      PCOUT(33) => Gain1_mul_temp_n_120,
      PCOUT(32) => Gain1_mul_temp_n_121,
      PCOUT(31) => Gain1_mul_temp_n_122,
      PCOUT(30) => Gain1_mul_temp_n_123,
      PCOUT(29) => Gain1_mul_temp_n_124,
      PCOUT(28) => Gain1_mul_temp_n_125,
      PCOUT(27) => Gain1_mul_temp_n_126,
      PCOUT(26) => Gain1_mul_temp_n_127,
      PCOUT(25) => Gain1_mul_temp_n_128,
      PCOUT(24) => Gain1_mul_temp_n_129,
      PCOUT(23) => Gain1_mul_temp_n_130,
      PCOUT(22) => Gain1_mul_temp_n_131,
      PCOUT(21) => Gain1_mul_temp_n_132,
      PCOUT(20) => Gain1_mul_temp_n_133,
      PCOUT(19) => Gain1_mul_temp_n_134,
      PCOUT(18) => Gain1_mul_temp_n_135,
      PCOUT(17) => Gain1_mul_temp_n_136,
      PCOUT(16) => Gain1_mul_temp_n_137,
      PCOUT(15) => Gain1_mul_temp_n_138,
      PCOUT(14) => Gain1_mul_temp_n_139,
      PCOUT(13) => Gain1_mul_temp_n_140,
      PCOUT(12) => Gain1_mul_temp_n_141,
      PCOUT(11) => Gain1_mul_temp_n_142,
      PCOUT(10) => Gain1_mul_temp_n_143,
      PCOUT(9) => Gain1_mul_temp_n_144,
      PCOUT(8) => Gain1_mul_temp_n_145,
      PCOUT(7) => Gain1_mul_temp_n_146,
      PCOUT(6) => Gain1_mul_temp_n_147,
      PCOUT(5) => Gain1_mul_temp_n_148,
      PCOUT(4) => Gain1_mul_temp_n_149,
      PCOUT(3) => Gain1_mul_temp_n_150,
      PCOUT(2) => Gain1_mul_temp_n_151,
      PCOUT(1) => Gain1_mul_temp_n_152,
      PCOUT(0) => Gain1_mul_temp_n_153,
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
      UNDERFLOW => NLW_Gain1_mul_temp_UNDERFLOW_UNCONNECTED
    );
\Gain1_mul_temp__0\: unisim.vcomponents.DSP48E1
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
      A(29 downto 0) => B"000000000000000100010011101101",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_Gain1_mul_temp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => destination_x(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain1_mul_temp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain1_mul_temp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain1_mul_temp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain1_mul_temp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_Gain1_mul_temp__0_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain1_mul_temp__0_n_58\,
      P(46) => \Gain1_mul_temp__0_n_59\,
      P(45) => \Gain1_mul_temp__0_n_60\,
      P(44) => \Gain1_mul_temp__0_n_61\,
      P(43) => \Gain1_mul_temp__0_n_62\,
      P(42) => \Gain1_mul_temp__0_n_63\,
      P(41) => \Gain1_mul_temp__0_n_64\,
      P(40) => \Gain1_mul_temp__0_n_65\,
      P(39) => \Gain1_mul_temp__0_n_66\,
      P(38) => \Gain1_mul_temp__0_n_67\,
      P(37) => \Gain1_mul_temp__0_n_68\,
      P(36) => \Gain1_mul_temp__0_n_69\,
      P(35) => \Gain1_mul_temp__0_n_70\,
      P(34) => \Gain1_mul_temp__0_n_71\,
      P(33) => \Gain1_mul_temp__0_n_72\,
      P(32) => \Gain1_mul_temp__0_n_73\,
      P(31) => \Gain1_mul_temp__0_n_74\,
      P(30) => \Gain1_mul_temp__0_n_75\,
      P(29) => \Gain1_mul_temp__0_n_76\,
      P(28) => \Gain1_mul_temp__0_n_77\,
      P(27) => \Gain1_mul_temp__0_n_78\,
      P(26) => \Gain1_mul_temp__0_n_79\,
      P(25) => \Gain1_mul_temp__0_n_80\,
      P(24) => \Gain1_mul_temp__0_n_81\,
      P(23) => \Gain1_mul_temp__0_n_82\,
      P(22) => \Gain1_mul_temp__0_n_83\,
      P(21) => \Gain1_mul_temp__0_n_84\,
      P(20) => \Gain1_mul_temp__0_n_85\,
      P(19) => \Gain1_mul_temp__0_n_86\,
      P(18) => \Gain1_mul_temp__0_n_87\,
      P(17) => \Gain1_mul_temp__0_n_88\,
      P(16) => \Gain1_mul_temp__0_n_89\,
      P(15) => \Gain1_mul_temp__0_n_90\,
      P(14) => \Gain1_mul_temp__0_n_91\,
      P(13) => \Gain1_mul_temp__0_n_92\,
      P(12) => \Gain1_mul_temp__0_n_93\,
      P(11) => \Gain1_mul_temp__0_n_94\,
      P(10) => \Gain1_mul_temp__0_n_95\,
      P(9) => \Gain1_mul_temp__0_n_96\,
      P(8) => \Gain1_mul_temp__0_n_97\,
      P(7) => \Gain1_mul_temp__0_n_98\,
      P(6) => \Gain1_mul_temp__0_n_99\,
      P(5) => \Gain1_mul_temp__0_n_100\,
      P(4) => \Gain1_mul_temp__0_n_101\,
      P(3) => \Gain1_mul_temp__0_n_102\,
      P(2) => \Gain1_mul_temp__0_n_103\,
      P(1) => \Gain1_mul_temp__0_n_104\,
      P(0) => \Gain1_mul_temp__0_n_105\,
      PATTERNBDETECT => \NLW_Gain1_mul_temp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain1_mul_temp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => Gain1_mul_temp_n_106,
      PCIN(46) => Gain1_mul_temp_n_107,
      PCIN(45) => Gain1_mul_temp_n_108,
      PCIN(44) => Gain1_mul_temp_n_109,
      PCIN(43) => Gain1_mul_temp_n_110,
      PCIN(42) => Gain1_mul_temp_n_111,
      PCIN(41) => Gain1_mul_temp_n_112,
      PCIN(40) => Gain1_mul_temp_n_113,
      PCIN(39) => Gain1_mul_temp_n_114,
      PCIN(38) => Gain1_mul_temp_n_115,
      PCIN(37) => Gain1_mul_temp_n_116,
      PCIN(36) => Gain1_mul_temp_n_117,
      PCIN(35) => Gain1_mul_temp_n_118,
      PCIN(34) => Gain1_mul_temp_n_119,
      PCIN(33) => Gain1_mul_temp_n_120,
      PCIN(32) => Gain1_mul_temp_n_121,
      PCIN(31) => Gain1_mul_temp_n_122,
      PCIN(30) => Gain1_mul_temp_n_123,
      PCIN(29) => Gain1_mul_temp_n_124,
      PCIN(28) => Gain1_mul_temp_n_125,
      PCIN(27) => Gain1_mul_temp_n_126,
      PCIN(26) => Gain1_mul_temp_n_127,
      PCIN(25) => Gain1_mul_temp_n_128,
      PCIN(24) => Gain1_mul_temp_n_129,
      PCIN(23) => Gain1_mul_temp_n_130,
      PCIN(22) => Gain1_mul_temp_n_131,
      PCIN(21) => Gain1_mul_temp_n_132,
      PCIN(20) => Gain1_mul_temp_n_133,
      PCIN(19) => Gain1_mul_temp_n_134,
      PCIN(18) => Gain1_mul_temp_n_135,
      PCIN(17) => Gain1_mul_temp_n_136,
      PCIN(16) => Gain1_mul_temp_n_137,
      PCIN(15) => Gain1_mul_temp_n_138,
      PCIN(14) => Gain1_mul_temp_n_139,
      PCIN(13) => Gain1_mul_temp_n_140,
      PCIN(12) => Gain1_mul_temp_n_141,
      PCIN(11) => Gain1_mul_temp_n_142,
      PCIN(10) => Gain1_mul_temp_n_143,
      PCIN(9) => Gain1_mul_temp_n_144,
      PCIN(8) => Gain1_mul_temp_n_145,
      PCIN(7) => Gain1_mul_temp_n_146,
      PCIN(6) => Gain1_mul_temp_n_147,
      PCIN(5) => Gain1_mul_temp_n_148,
      PCIN(4) => Gain1_mul_temp_n_149,
      PCIN(3) => Gain1_mul_temp_n_150,
      PCIN(2) => Gain1_mul_temp_n_151,
      PCIN(1) => Gain1_mul_temp_n_152,
      PCIN(0) => Gain1_mul_temp_n_153,
      PCOUT(47 downto 0) => \NLW_Gain1_mul_temp__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_Gain1_mul_temp__0_UNDERFLOW_UNCONNECTED\
    );
\Gain1_mul_temp__1\: unisim.vcomponents.DSP48E1
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
      A(29 downto 0) => B"000000000000011011111100001100",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \Gain1_mul_temp__1_n_24\,
      ACOUT(28) => \Gain1_mul_temp__1_n_25\,
      ACOUT(27) => \Gain1_mul_temp__1_n_26\,
      ACOUT(26) => \Gain1_mul_temp__1_n_27\,
      ACOUT(25) => \Gain1_mul_temp__1_n_28\,
      ACOUT(24) => \Gain1_mul_temp__1_n_29\,
      ACOUT(23) => \Gain1_mul_temp__1_n_30\,
      ACOUT(22) => \Gain1_mul_temp__1_n_31\,
      ACOUT(21) => \Gain1_mul_temp__1_n_32\,
      ACOUT(20) => \Gain1_mul_temp__1_n_33\,
      ACOUT(19) => \Gain1_mul_temp__1_n_34\,
      ACOUT(18) => \Gain1_mul_temp__1_n_35\,
      ACOUT(17) => \Gain1_mul_temp__1_n_36\,
      ACOUT(16) => \Gain1_mul_temp__1_n_37\,
      ACOUT(15) => \Gain1_mul_temp__1_n_38\,
      ACOUT(14) => \Gain1_mul_temp__1_n_39\,
      ACOUT(13) => \Gain1_mul_temp__1_n_40\,
      ACOUT(12) => \Gain1_mul_temp__1_n_41\,
      ACOUT(11) => \Gain1_mul_temp__1_n_42\,
      ACOUT(10) => \Gain1_mul_temp__1_n_43\,
      ACOUT(9) => \Gain1_mul_temp__1_n_44\,
      ACOUT(8) => \Gain1_mul_temp__1_n_45\,
      ACOUT(7) => \Gain1_mul_temp__1_n_46\,
      ACOUT(6) => \Gain1_mul_temp__1_n_47\,
      ACOUT(5) => \Gain1_mul_temp__1_n_48\,
      ACOUT(4) => \Gain1_mul_temp__1_n_49\,
      ACOUT(3) => \Gain1_mul_temp__1_n_50\,
      ACOUT(2) => \Gain1_mul_temp__1_n_51\,
      ACOUT(1) => \Gain1_mul_temp__1_n_52\,
      ACOUT(0) => \Gain1_mul_temp__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => destination_x(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain1_mul_temp__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain1_mul_temp__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain1_mul_temp__1_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain1_mul_temp__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_Gain1_mul_temp__1_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain1_mul_temp__1_n_58\,
      P(46) => \Gain1_mul_temp__1_n_59\,
      P(45) => \Gain1_mul_temp__1_n_60\,
      P(44) => \Gain1_mul_temp__1_n_61\,
      P(43) => \Gain1_mul_temp__1_n_62\,
      P(42) => \Gain1_mul_temp__1_n_63\,
      P(41) => \Gain1_mul_temp__1_n_64\,
      P(40) => \Gain1_mul_temp__1_n_65\,
      P(39) => \Gain1_mul_temp__1_n_66\,
      P(38) => \Gain1_mul_temp__1_n_67\,
      P(37) => \Gain1_mul_temp__1_n_68\,
      P(36) => \Gain1_mul_temp__1_n_69\,
      P(35) => \Gain1_mul_temp__1_n_70\,
      P(34) => \Gain1_mul_temp__1_n_71\,
      P(33) => \Gain1_mul_temp__1_n_72\,
      P(32) => \Gain1_mul_temp__1_n_73\,
      P(31) => \Gain1_mul_temp__1_n_74\,
      P(30) => \Gain1_mul_temp__1_n_75\,
      P(29) => \Gain1_mul_temp__1_n_76\,
      P(28) => \Gain1_mul_temp__1_n_77\,
      P(27) => \Gain1_mul_temp__1_n_78\,
      P(26) => \Gain1_mul_temp__1_n_79\,
      P(25) => \Gain1_mul_temp__1_n_80\,
      P(24) => \Gain1_mul_temp__1_n_81\,
      P(23) => \Gain1_mul_temp__1_n_82\,
      P(22) => \Gain1_mul_temp__1_n_83\,
      P(21) => \Gain1_mul_temp__1_n_84\,
      P(20) => \Gain1_mul_temp__1_n_85\,
      P(19) => \Gain1_mul_temp__1_n_86\,
      P(18) => \Gain1_mul_temp__1_n_87\,
      P(17) => \Gain1_mul_temp__1_n_88\,
      P(16) => \Gain1_mul_temp__1_n_89\,
      P(15) => \Gain1_mul_temp__1_n_90\,
      P(14) => \Gain1_mul_temp__1_n_91\,
      P(13) => \Gain1_mul_temp__1_n_92\,
      P(12) => \Gain1_mul_temp__1_n_93\,
      P(11) => \Gain1_mul_temp__1_n_94\,
      P(10) => \Gain1_mul_temp__1_n_95\,
      P(9) => \Gain1_mul_temp__1_n_96\,
      P(8) => \Gain1_mul_temp__1_n_97\,
      P(7) => \Gain1_mul_temp__1_n_98\,
      P(6) => \Gain1_mul_temp__1_n_99\,
      P(5) => \Gain1_mul_temp__1_n_100\,
      P(4) => \Gain1_mul_temp__1_n_101\,
      P(3) => \Gain1_mul_temp__1_n_102\,
      P(2) => \Gain1_mul_temp__1_n_103\,
      P(1) => \Gain1_mul_temp__1_n_104\,
      P(0) => \Gain1_mul_temp__1_n_105\,
      PATTERNBDETECT => \NLW_Gain1_mul_temp__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain1_mul_temp__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \Gain1_mul_temp__1_n_106\,
      PCOUT(46) => \Gain1_mul_temp__1_n_107\,
      PCOUT(45) => \Gain1_mul_temp__1_n_108\,
      PCOUT(44) => \Gain1_mul_temp__1_n_109\,
      PCOUT(43) => \Gain1_mul_temp__1_n_110\,
      PCOUT(42) => \Gain1_mul_temp__1_n_111\,
      PCOUT(41) => \Gain1_mul_temp__1_n_112\,
      PCOUT(40) => \Gain1_mul_temp__1_n_113\,
      PCOUT(39) => \Gain1_mul_temp__1_n_114\,
      PCOUT(38) => \Gain1_mul_temp__1_n_115\,
      PCOUT(37) => \Gain1_mul_temp__1_n_116\,
      PCOUT(36) => \Gain1_mul_temp__1_n_117\,
      PCOUT(35) => \Gain1_mul_temp__1_n_118\,
      PCOUT(34) => \Gain1_mul_temp__1_n_119\,
      PCOUT(33) => \Gain1_mul_temp__1_n_120\,
      PCOUT(32) => \Gain1_mul_temp__1_n_121\,
      PCOUT(31) => \Gain1_mul_temp__1_n_122\,
      PCOUT(30) => \Gain1_mul_temp__1_n_123\,
      PCOUT(29) => \Gain1_mul_temp__1_n_124\,
      PCOUT(28) => \Gain1_mul_temp__1_n_125\,
      PCOUT(27) => \Gain1_mul_temp__1_n_126\,
      PCOUT(26) => \Gain1_mul_temp__1_n_127\,
      PCOUT(25) => \Gain1_mul_temp__1_n_128\,
      PCOUT(24) => \Gain1_mul_temp__1_n_129\,
      PCOUT(23) => \Gain1_mul_temp__1_n_130\,
      PCOUT(22) => \Gain1_mul_temp__1_n_131\,
      PCOUT(21) => \Gain1_mul_temp__1_n_132\,
      PCOUT(20) => \Gain1_mul_temp__1_n_133\,
      PCOUT(19) => \Gain1_mul_temp__1_n_134\,
      PCOUT(18) => \Gain1_mul_temp__1_n_135\,
      PCOUT(17) => \Gain1_mul_temp__1_n_136\,
      PCOUT(16) => \Gain1_mul_temp__1_n_137\,
      PCOUT(15) => \Gain1_mul_temp__1_n_138\,
      PCOUT(14) => \Gain1_mul_temp__1_n_139\,
      PCOUT(13) => \Gain1_mul_temp__1_n_140\,
      PCOUT(12) => \Gain1_mul_temp__1_n_141\,
      PCOUT(11) => \Gain1_mul_temp__1_n_142\,
      PCOUT(10) => \Gain1_mul_temp__1_n_143\,
      PCOUT(9) => \Gain1_mul_temp__1_n_144\,
      PCOUT(8) => \Gain1_mul_temp__1_n_145\,
      PCOUT(7) => \Gain1_mul_temp__1_n_146\,
      PCOUT(6) => \Gain1_mul_temp__1_n_147\,
      PCOUT(5) => \Gain1_mul_temp__1_n_148\,
      PCOUT(4) => \Gain1_mul_temp__1_n_149\,
      PCOUT(3) => \Gain1_mul_temp__1_n_150\,
      PCOUT(2) => \Gain1_mul_temp__1_n_151\,
      PCOUT(1) => \Gain1_mul_temp__1_n_152\,
      PCOUT(0) => \Gain1_mul_temp__1_n_153\,
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
      UNDERFLOW => \NLW_Gain1_mul_temp__1_UNDERFLOW_UNCONNECTED\
    );
\Gain1_mul_temp__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
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
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \Gain1_mul_temp__1_n_24\,
      ACIN(28) => \Gain1_mul_temp__1_n_25\,
      ACIN(27) => \Gain1_mul_temp__1_n_26\,
      ACIN(26) => \Gain1_mul_temp__1_n_27\,
      ACIN(25) => \Gain1_mul_temp__1_n_28\,
      ACIN(24) => \Gain1_mul_temp__1_n_29\,
      ACIN(23) => \Gain1_mul_temp__1_n_30\,
      ACIN(22) => \Gain1_mul_temp__1_n_31\,
      ACIN(21) => \Gain1_mul_temp__1_n_32\,
      ACIN(20) => \Gain1_mul_temp__1_n_33\,
      ACIN(19) => \Gain1_mul_temp__1_n_34\,
      ACIN(18) => \Gain1_mul_temp__1_n_35\,
      ACIN(17) => \Gain1_mul_temp__1_n_36\,
      ACIN(16) => \Gain1_mul_temp__1_n_37\,
      ACIN(15) => \Gain1_mul_temp__1_n_38\,
      ACIN(14) => \Gain1_mul_temp__1_n_39\,
      ACIN(13) => \Gain1_mul_temp__1_n_40\,
      ACIN(12) => \Gain1_mul_temp__1_n_41\,
      ACIN(11) => \Gain1_mul_temp__1_n_42\,
      ACIN(10) => \Gain1_mul_temp__1_n_43\,
      ACIN(9) => \Gain1_mul_temp__1_n_44\,
      ACIN(8) => \Gain1_mul_temp__1_n_45\,
      ACIN(7) => \Gain1_mul_temp__1_n_46\,
      ACIN(6) => \Gain1_mul_temp__1_n_47\,
      ACIN(5) => \Gain1_mul_temp__1_n_48\,
      ACIN(4) => \Gain1_mul_temp__1_n_49\,
      ACIN(3) => \Gain1_mul_temp__1_n_50\,
      ACIN(2) => \Gain1_mul_temp__1_n_51\,
      ACIN(1) => \Gain1_mul_temp__1_n_52\,
      ACIN(0) => \Gain1_mul_temp__1_n_53\,
      ACOUT(29 downto 0) => \NLW_Gain1_mul_temp__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => destination_x(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain1_mul_temp__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain1_mul_temp__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain1_mul_temp__2_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain1_mul_temp__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_Gain1_mul_temp__2_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain1_mul_temp__2_n_58\,
      P(46) => \Gain1_mul_temp__2_n_59\,
      P(45) => \Gain1_mul_temp__2_n_60\,
      P(44) => \Gain1_mul_temp__2_n_61\,
      P(43) => \Gain1_mul_temp__2_n_62\,
      P(42) => \Gain1_mul_temp__2_n_63\,
      P(41) => \Gain1_mul_temp__2_n_64\,
      P(40) => \Gain1_mul_temp__2_n_65\,
      P(39) => \Gain1_mul_temp__2_n_66\,
      P(38) => \Gain1_mul_temp__2_n_67\,
      P(37) => \Gain1_mul_temp__2_n_68\,
      P(36) => \Gain1_mul_temp__2_n_69\,
      P(35) => \Gain1_mul_temp__2_n_70\,
      P(34) => \Gain1_mul_temp__2_n_71\,
      P(33) => \Gain1_mul_temp__2_n_72\,
      P(32) => \Gain1_mul_temp__2_n_73\,
      P(31) => \Gain1_mul_temp__2_n_74\,
      P(30) => \Gain1_mul_temp__2_n_75\,
      P(29) => \Gain1_mul_temp__2_n_76\,
      P(28) => \Gain1_mul_temp__2_n_77\,
      P(27) => \Gain1_mul_temp__2_n_78\,
      P(26) => \Gain1_mul_temp__2_n_79\,
      P(25) => \Gain1_mul_temp__2_n_80\,
      P(24) => \Gain1_mul_temp__2_n_81\,
      P(23) => \Gain1_mul_temp__2_n_82\,
      P(22) => \Gain1_mul_temp__2_n_83\,
      P(21) => \Gain1_mul_temp__2_n_84\,
      P(20) => \Gain1_mul_temp__2_n_85\,
      P(19) => \Gain1_mul_temp__2_n_86\,
      P(18) => \Gain1_mul_temp__2_n_87\,
      P(17) => \Gain1_mul_temp__2_n_88\,
      P(16) => \Gain1_mul_temp__2_n_89\,
      P(15) => \Gain1_mul_temp__2_n_90\,
      P(14) => \Gain1_mul_temp__2_n_91\,
      P(13) => \Gain1_mul_temp__2_n_92\,
      P(12) => \Gain1_mul_temp__2_n_93\,
      P(11) => \Gain1_mul_temp__2_n_94\,
      P(10) => \Gain1_mul_temp__2_n_95\,
      P(9) => \Gain1_mul_temp__2_n_96\,
      P(8) => \Gain1_mul_temp__2_n_97\,
      P(7) => \Gain1_mul_temp__2_n_98\,
      P(6) => \Gain1_mul_temp__2_n_99\,
      P(5) => \Gain1_mul_temp__2_n_100\,
      P(4) => \Gain1_mul_temp__2_n_101\,
      P(3) => \Gain1_mul_temp__2_n_102\,
      P(2) => \Gain1_mul_temp__2_n_103\,
      P(1) => \Gain1_mul_temp__2_n_104\,
      P(0) => \Gain1_mul_temp__2_n_105\,
      PATTERNBDETECT => \NLW_Gain1_mul_temp__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain1_mul_temp__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \Gain1_mul_temp__1_n_106\,
      PCIN(46) => \Gain1_mul_temp__1_n_107\,
      PCIN(45) => \Gain1_mul_temp__1_n_108\,
      PCIN(44) => \Gain1_mul_temp__1_n_109\,
      PCIN(43) => \Gain1_mul_temp__1_n_110\,
      PCIN(42) => \Gain1_mul_temp__1_n_111\,
      PCIN(41) => \Gain1_mul_temp__1_n_112\,
      PCIN(40) => \Gain1_mul_temp__1_n_113\,
      PCIN(39) => \Gain1_mul_temp__1_n_114\,
      PCIN(38) => \Gain1_mul_temp__1_n_115\,
      PCIN(37) => \Gain1_mul_temp__1_n_116\,
      PCIN(36) => \Gain1_mul_temp__1_n_117\,
      PCIN(35) => \Gain1_mul_temp__1_n_118\,
      PCIN(34) => \Gain1_mul_temp__1_n_119\,
      PCIN(33) => \Gain1_mul_temp__1_n_120\,
      PCIN(32) => \Gain1_mul_temp__1_n_121\,
      PCIN(31) => \Gain1_mul_temp__1_n_122\,
      PCIN(30) => \Gain1_mul_temp__1_n_123\,
      PCIN(29) => \Gain1_mul_temp__1_n_124\,
      PCIN(28) => \Gain1_mul_temp__1_n_125\,
      PCIN(27) => \Gain1_mul_temp__1_n_126\,
      PCIN(26) => \Gain1_mul_temp__1_n_127\,
      PCIN(25) => \Gain1_mul_temp__1_n_128\,
      PCIN(24) => \Gain1_mul_temp__1_n_129\,
      PCIN(23) => \Gain1_mul_temp__1_n_130\,
      PCIN(22) => \Gain1_mul_temp__1_n_131\,
      PCIN(21) => \Gain1_mul_temp__1_n_132\,
      PCIN(20) => \Gain1_mul_temp__1_n_133\,
      PCIN(19) => \Gain1_mul_temp__1_n_134\,
      PCIN(18) => \Gain1_mul_temp__1_n_135\,
      PCIN(17) => \Gain1_mul_temp__1_n_136\,
      PCIN(16) => \Gain1_mul_temp__1_n_137\,
      PCIN(15) => \Gain1_mul_temp__1_n_138\,
      PCIN(14) => \Gain1_mul_temp__1_n_139\,
      PCIN(13) => \Gain1_mul_temp__1_n_140\,
      PCIN(12) => \Gain1_mul_temp__1_n_141\,
      PCIN(11) => \Gain1_mul_temp__1_n_142\,
      PCIN(10) => \Gain1_mul_temp__1_n_143\,
      PCIN(9) => \Gain1_mul_temp__1_n_144\,
      PCIN(8) => \Gain1_mul_temp__1_n_145\,
      PCIN(7) => \Gain1_mul_temp__1_n_146\,
      PCIN(6) => \Gain1_mul_temp__1_n_147\,
      PCIN(5) => \Gain1_mul_temp__1_n_148\,
      PCIN(4) => \Gain1_mul_temp__1_n_149\,
      PCIN(3) => \Gain1_mul_temp__1_n_150\,
      PCIN(2) => \Gain1_mul_temp__1_n_151\,
      PCIN(1) => \Gain1_mul_temp__1_n_152\,
      PCIN(0) => \Gain1_mul_temp__1_n_153\,
      PCOUT(47 downto 0) => \NLW_Gain1_mul_temp__2_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_Gain1_mul_temp__2_UNDERFLOW_UNCONNECTED\
    );
Gain2_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => position(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain2_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010011101101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain2_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain2_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain2_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain2_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain2_mul_temp_OVERFLOW_UNCONNECTED,
      P(47) => Gain2_mul_temp_n_58,
      P(46) => Gain2_mul_temp_n_59,
      P(45) => Gain2_mul_temp_n_60,
      P(44) => Gain2_mul_temp_n_61,
      P(43) => Gain2_mul_temp_n_62,
      P(42) => Gain2_mul_temp_n_63,
      P(41) => Gain2_mul_temp_n_64,
      P(40) => Gain2_mul_temp_n_65,
      P(39) => Gain2_mul_temp_n_66,
      P(38) => Gain2_mul_temp_n_67,
      P(37) => Gain2_mul_temp_n_68,
      P(36) => Gain2_mul_temp_n_69,
      P(35) => Gain2_mul_temp_n_70,
      P(34) => Gain2_mul_temp_n_71,
      P(33) => Gain2_mul_temp_n_72,
      P(32) => Gain2_mul_temp_n_73,
      P(31) => Gain2_mul_temp_n_74,
      P(30) => Gain2_mul_temp_n_75,
      P(29) => Gain2_mul_temp_n_76,
      P(28) => Gain2_mul_temp_n_77,
      P(27) => Gain2_mul_temp_n_78,
      P(26) => Gain2_mul_temp_n_79,
      P(25) => Gain2_mul_temp_n_80,
      P(24) => Gain2_mul_temp_n_81,
      P(23) => Gain2_mul_temp_n_82,
      P(22) => Gain2_mul_temp_n_83,
      P(21) => Gain2_mul_temp_n_84,
      P(20) => Gain2_mul_temp_n_85,
      P(19) => Gain2_mul_temp_n_86,
      P(18) => Gain2_mul_temp_n_87,
      P(17) => Gain2_mul_temp_n_88,
      P(16) => Gain2_mul_temp_n_89,
      P(15) => Gain2_mul_temp_n_90,
      P(14) => Gain2_mul_temp_n_91,
      P(13) => Gain2_mul_temp_n_92,
      P(12) => Gain2_mul_temp_n_93,
      P(11) => Gain2_mul_temp_n_94,
      P(10) => Gain2_mul_temp_n_95,
      P(9) => Gain2_mul_temp_n_96,
      P(8) => Gain2_mul_temp_n_97,
      P(7) => Gain2_mul_temp_n_98,
      P(6) => Gain2_mul_temp_n_99,
      P(5) => Gain2_mul_temp_n_100,
      P(4) => Gain2_mul_temp_n_101,
      P(3) => Gain2_mul_temp_n_102,
      P(2) => Gain2_mul_temp_n_103,
      P(1) => Gain2_mul_temp_n_104,
      P(0) => Gain2_mul_temp_n_105,
      PATTERNBDETECT => NLW_Gain2_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain2_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => Gain2_mul_temp_n_106,
      PCOUT(46) => Gain2_mul_temp_n_107,
      PCOUT(45) => Gain2_mul_temp_n_108,
      PCOUT(44) => Gain2_mul_temp_n_109,
      PCOUT(43) => Gain2_mul_temp_n_110,
      PCOUT(42) => Gain2_mul_temp_n_111,
      PCOUT(41) => Gain2_mul_temp_n_112,
      PCOUT(40) => Gain2_mul_temp_n_113,
      PCOUT(39) => Gain2_mul_temp_n_114,
      PCOUT(38) => Gain2_mul_temp_n_115,
      PCOUT(37) => Gain2_mul_temp_n_116,
      PCOUT(36) => Gain2_mul_temp_n_117,
      PCOUT(35) => Gain2_mul_temp_n_118,
      PCOUT(34) => Gain2_mul_temp_n_119,
      PCOUT(33) => Gain2_mul_temp_n_120,
      PCOUT(32) => Gain2_mul_temp_n_121,
      PCOUT(31) => Gain2_mul_temp_n_122,
      PCOUT(30) => Gain2_mul_temp_n_123,
      PCOUT(29) => Gain2_mul_temp_n_124,
      PCOUT(28) => Gain2_mul_temp_n_125,
      PCOUT(27) => Gain2_mul_temp_n_126,
      PCOUT(26) => Gain2_mul_temp_n_127,
      PCOUT(25) => Gain2_mul_temp_n_128,
      PCOUT(24) => Gain2_mul_temp_n_129,
      PCOUT(23) => Gain2_mul_temp_n_130,
      PCOUT(22) => Gain2_mul_temp_n_131,
      PCOUT(21) => Gain2_mul_temp_n_132,
      PCOUT(20) => Gain2_mul_temp_n_133,
      PCOUT(19) => Gain2_mul_temp_n_134,
      PCOUT(18) => Gain2_mul_temp_n_135,
      PCOUT(17) => Gain2_mul_temp_n_136,
      PCOUT(16) => Gain2_mul_temp_n_137,
      PCOUT(15) => Gain2_mul_temp_n_138,
      PCOUT(14) => Gain2_mul_temp_n_139,
      PCOUT(13) => Gain2_mul_temp_n_140,
      PCOUT(12) => Gain2_mul_temp_n_141,
      PCOUT(11) => Gain2_mul_temp_n_142,
      PCOUT(10) => Gain2_mul_temp_n_143,
      PCOUT(9) => Gain2_mul_temp_n_144,
      PCOUT(8) => Gain2_mul_temp_n_145,
      PCOUT(7) => Gain2_mul_temp_n_146,
      PCOUT(6) => Gain2_mul_temp_n_147,
      PCOUT(5) => Gain2_mul_temp_n_148,
      PCOUT(4) => Gain2_mul_temp_n_149,
      PCOUT(3) => Gain2_mul_temp_n_150,
      PCOUT(2) => Gain2_mul_temp_n_151,
      PCOUT(1) => Gain2_mul_temp_n_152,
      PCOUT(0) => Gain2_mul_temp_n_153,
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
      UNDERFLOW => NLW_Gain2_mul_temp_UNDERFLOW_UNCONNECTED
    );
\Gain2_mul_temp__0\: unisim.vcomponents.DSP48E1
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
      A(29 downto 0) => B"000000000000000100010011101101",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_Gain2_mul_temp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => position(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain2_mul_temp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain2_mul_temp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain2_mul_temp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain2_mul_temp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_Gain2_mul_temp__0_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain2_mul_temp__0_n_58\,
      P(46) => \Gain2_mul_temp__0_n_59\,
      P(45) => \Gain2_mul_temp__0_n_60\,
      P(44) => \Gain2_mul_temp__0_n_61\,
      P(43) => \Gain2_mul_temp__0_n_62\,
      P(42) => \Gain2_mul_temp__0_n_63\,
      P(41) => \Gain2_mul_temp__0_n_64\,
      P(40) => \Gain2_mul_temp__0_n_65\,
      P(39) => \Gain2_mul_temp__0_n_66\,
      P(38) => \Gain2_mul_temp__0_n_67\,
      P(37) => \Gain2_mul_temp__0_n_68\,
      P(36) => \Gain2_mul_temp__0_n_69\,
      P(35) => \Gain2_mul_temp__0_n_70\,
      P(34) => \Gain2_mul_temp__0_n_71\,
      P(33) => \Gain2_mul_temp__0_n_72\,
      P(32) => \Gain2_mul_temp__0_n_73\,
      P(31) => \Gain2_mul_temp__0_n_74\,
      P(30) => \Gain2_mul_temp__0_n_75\,
      P(29) => \Gain2_mul_temp__0_n_76\,
      P(28) => \Gain2_mul_temp__0_n_77\,
      P(27) => \Gain2_mul_temp__0_n_78\,
      P(26) => \Gain2_mul_temp__0_n_79\,
      P(25) => \Gain2_mul_temp__0_n_80\,
      P(24) => \Gain2_mul_temp__0_n_81\,
      P(23) => \Gain2_mul_temp__0_n_82\,
      P(22) => \Gain2_mul_temp__0_n_83\,
      P(21) => \Gain2_mul_temp__0_n_84\,
      P(20) => \Gain2_mul_temp__0_n_85\,
      P(19) => \Gain2_mul_temp__0_n_86\,
      P(18) => \Gain2_mul_temp__0_n_87\,
      P(17) => \Gain2_mul_temp__0_n_88\,
      P(16) => \Gain2_mul_temp__0_n_89\,
      P(15) => \Gain2_mul_temp__0_n_90\,
      P(14) => \Gain2_mul_temp__0_n_91\,
      P(13) => \Gain2_mul_temp__0_n_92\,
      P(12) => \Gain2_mul_temp__0_n_93\,
      P(11) => \Gain2_mul_temp__0_n_94\,
      P(10) => \Gain2_mul_temp__0_n_95\,
      P(9) => \Gain2_mul_temp__0_n_96\,
      P(8) => \Gain2_mul_temp__0_n_97\,
      P(7) => \Gain2_mul_temp__0_n_98\,
      P(6) => \Gain2_mul_temp__0_n_99\,
      P(5) => \Gain2_mul_temp__0_n_100\,
      P(4) => \Gain2_mul_temp__0_n_101\,
      P(3) => \Gain2_mul_temp__0_n_102\,
      P(2) => \Gain2_mul_temp__0_n_103\,
      P(1) => \Gain2_mul_temp__0_n_104\,
      P(0) => \Gain2_mul_temp__0_n_105\,
      PATTERNBDETECT => \NLW_Gain2_mul_temp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain2_mul_temp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => Gain2_mul_temp_n_106,
      PCIN(46) => Gain2_mul_temp_n_107,
      PCIN(45) => Gain2_mul_temp_n_108,
      PCIN(44) => Gain2_mul_temp_n_109,
      PCIN(43) => Gain2_mul_temp_n_110,
      PCIN(42) => Gain2_mul_temp_n_111,
      PCIN(41) => Gain2_mul_temp_n_112,
      PCIN(40) => Gain2_mul_temp_n_113,
      PCIN(39) => Gain2_mul_temp_n_114,
      PCIN(38) => Gain2_mul_temp_n_115,
      PCIN(37) => Gain2_mul_temp_n_116,
      PCIN(36) => Gain2_mul_temp_n_117,
      PCIN(35) => Gain2_mul_temp_n_118,
      PCIN(34) => Gain2_mul_temp_n_119,
      PCIN(33) => Gain2_mul_temp_n_120,
      PCIN(32) => Gain2_mul_temp_n_121,
      PCIN(31) => Gain2_mul_temp_n_122,
      PCIN(30) => Gain2_mul_temp_n_123,
      PCIN(29) => Gain2_mul_temp_n_124,
      PCIN(28) => Gain2_mul_temp_n_125,
      PCIN(27) => Gain2_mul_temp_n_126,
      PCIN(26) => Gain2_mul_temp_n_127,
      PCIN(25) => Gain2_mul_temp_n_128,
      PCIN(24) => Gain2_mul_temp_n_129,
      PCIN(23) => Gain2_mul_temp_n_130,
      PCIN(22) => Gain2_mul_temp_n_131,
      PCIN(21) => Gain2_mul_temp_n_132,
      PCIN(20) => Gain2_mul_temp_n_133,
      PCIN(19) => Gain2_mul_temp_n_134,
      PCIN(18) => Gain2_mul_temp_n_135,
      PCIN(17) => Gain2_mul_temp_n_136,
      PCIN(16) => Gain2_mul_temp_n_137,
      PCIN(15) => Gain2_mul_temp_n_138,
      PCIN(14) => Gain2_mul_temp_n_139,
      PCIN(13) => Gain2_mul_temp_n_140,
      PCIN(12) => Gain2_mul_temp_n_141,
      PCIN(11) => Gain2_mul_temp_n_142,
      PCIN(10) => Gain2_mul_temp_n_143,
      PCIN(9) => Gain2_mul_temp_n_144,
      PCIN(8) => Gain2_mul_temp_n_145,
      PCIN(7) => Gain2_mul_temp_n_146,
      PCIN(6) => Gain2_mul_temp_n_147,
      PCIN(5) => Gain2_mul_temp_n_148,
      PCIN(4) => Gain2_mul_temp_n_149,
      PCIN(3) => Gain2_mul_temp_n_150,
      PCIN(2) => Gain2_mul_temp_n_151,
      PCIN(1) => Gain2_mul_temp_n_152,
      PCIN(0) => Gain2_mul_temp_n_153,
      PCOUT(47 downto 0) => \NLW_Gain2_mul_temp__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_Gain2_mul_temp__0_UNDERFLOW_UNCONNECTED\
    );
\Gain2_mul_temp__1\: unisim.vcomponents.DSP48E1
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
      A(29 downto 0) => B"000000000000011011111100001100",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \Gain2_mul_temp__1_n_24\,
      ACOUT(28) => \Gain2_mul_temp__1_n_25\,
      ACOUT(27) => \Gain2_mul_temp__1_n_26\,
      ACOUT(26) => \Gain2_mul_temp__1_n_27\,
      ACOUT(25) => \Gain2_mul_temp__1_n_28\,
      ACOUT(24) => \Gain2_mul_temp__1_n_29\,
      ACOUT(23) => \Gain2_mul_temp__1_n_30\,
      ACOUT(22) => \Gain2_mul_temp__1_n_31\,
      ACOUT(21) => \Gain2_mul_temp__1_n_32\,
      ACOUT(20) => \Gain2_mul_temp__1_n_33\,
      ACOUT(19) => \Gain2_mul_temp__1_n_34\,
      ACOUT(18) => \Gain2_mul_temp__1_n_35\,
      ACOUT(17) => \Gain2_mul_temp__1_n_36\,
      ACOUT(16) => \Gain2_mul_temp__1_n_37\,
      ACOUT(15) => \Gain2_mul_temp__1_n_38\,
      ACOUT(14) => \Gain2_mul_temp__1_n_39\,
      ACOUT(13) => \Gain2_mul_temp__1_n_40\,
      ACOUT(12) => \Gain2_mul_temp__1_n_41\,
      ACOUT(11) => \Gain2_mul_temp__1_n_42\,
      ACOUT(10) => \Gain2_mul_temp__1_n_43\,
      ACOUT(9) => \Gain2_mul_temp__1_n_44\,
      ACOUT(8) => \Gain2_mul_temp__1_n_45\,
      ACOUT(7) => \Gain2_mul_temp__1_n_46\,
      ACOUT(6) => \Gain2_mul_temp__1_n_47\,
      ACOUT(5) => \Gain2_mul_temp__1_n_48\,
      ACOUT(4) => \Gain2_mul_temp__1_n_49\,
      ACOUT(3) => \Gain2_mul_temp__1_n_50\,
      ACOUT(2) => \Gain2_mul_temp__1_n_51\,
      ACOUT(1) => \Gain2_mul_temp__1_n_52\,
      ACOUT(0) => \Gain2_mul_temp__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => position(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain2_mul_temp__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain2_mul_temp__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain2_mul_temp__1_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain2_mul_temp__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_Gain2_mul_temp__1_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain2_mul_temp__1_n_58\,
      P(46) => \Gain2_mul_temp__1_n_59\,
      P(45) => \Gain2_mul_temp__1_n_60\,
      P(44) => \Gain2_mul_temp__1_n_61\,
      P(43) => \Gain2_mul_temp__1_n_62\,
      P(42) => \Gain2_mul_temp__1_n_63\,
      P(41) => \Gain2_mul_temp__1_n_64\,
      P(40) => \Gain2_mul_temp__1_n_65\,
      P(39) => \Gain2_mul_temp__1_n_66\,
      P(38) => \Gain2_mul_temp__1_n_67\,
      P(37) => \Gain2_mul_temp__1_n_68\,
      P(36) => \Gain2_mul_temp__1_n_69\,
      P(35) => \Gain2_mul_temp__1_n_70\,
      P(34) => \Gain2_mul_temp__1_n_71\,
      P(33) => \Gain2_mul_temp__1_n_72\,
      P(32) => \Gain2_mul_temp__1_n_73\,
      P(31) => \Gain2_mul_temp__1_n_74\,
      P(30) => \Gain2_mul_temp__1_n_75\,
      P(29) => \Gain2_mul_temp__1_n_76\,
      P(28) => \Gain2_mul_temp__1_n_77\,
      P(27) => \Gain2_mul_temp__1_n_78\,
      P(26) => \Gain2_mul_temp__1_n_79\,
      P(25) => \Gain2_mul_temp__1_n_80\,
      P(24) => \Gain2_mul_temp__1_n_81\,
      P(23) => \Gain2_mul_temp__1_n_82\,
      P(22) => \Gain2_mul_temp__1_n_83\,
      P(21) => \Gain2_mul_temp__1_n_84\,
      P(20) => \Gain2_mul_temp__1_n_85\,
      P(19) => \Gain2_mul_temp__1_n_86\,
      P(18) => \Gain2_mul_temp__1_n_87\,
      P(17) => \Gain2_mul_temp__1_n_88\,
      P(16) => \Gain2_mul_temp__1_n_89\,
      P(15) => \Gain2_mul_temp__1_n_90\,
      P(14) => \Gain2_mul_temp__1_n_91\,
      P(13) => \Gain2_mul_temp__1_n_92\,
      P(12) => \Gain2_mul_temp__1_n_93\,
      P(11) => \Gain2_mul_temp__1_n_94\,
      P(10) => \Gain2_mul_temp__1_n_95\,
      P(9) => \Gain2_mul_temp__1_n_96\,
      P(8) => \Gain2_mul_temp__1_n_97\,
      P(7) => \Gain2_mul_temp__1_n_98\,
      P(6) => \Gain2_mul_temp__1_n_99\,
      P(5) => \Gain2_mul_temp__1_n_100\,
      P(4) => \Gain2_mul_temp__1_n_101\,
      P(3) => \Gain2_mul_temp__1_n_102\,
      P(2) => \Gain2_mul_temp__1_n_103\,
      P(1) => \Gain2_mul_temp__1_n_104\,
      P(0) => \Gain2_mul_temp__1_n_105\,
      PATTERNBDETECT => \NLW_Gain2_mul_temp__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain2_mul_temp__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \Gain2_mul_temp__1_n_106\,
      PCOUT(46) => \Gain2_mul_temp__1_n_107\,
      PCOUT(45) => \Gain2_mul_temp__1_n_108\,
      PCOUT(44) => \Gain2_mul_temp__1_n_109\,
      PCOUT(43) => \Gain2_mul_temp__1_n_110\,
      PCOUT(42) => \Gain2_mul_temp__1_n_111\,
      PCOUT(41) => \Gain2_mul_temp__1_n_112\,
      PCOUT(40) => \Gain2_mul_temp__1_n_113\,
      PCOUT(39) => \Gain2_mul_temp__1_n_114\,
      PCOUT(38) => \Gain2_mul_temp__1_n_115\,
      PCOUT(37) => \Gain2_mul_temp__1_n_116\,
      PCOUT(36) => \Gain2_mul_temp__1_n_117\,
      PCOUT(35) => \Gain2_mul_temp__1_n_118\,
      PCOUT(34) => \Gain2_mul_temp__1_n_119\,
      PCOUT(33) => \Gain2_mul_temp__1_n_120\,
      PCOUT(32) => \Gain2_mul_temp__1_n_121\,
      PCOUT(31) => \Gain2_mul_temp__1_n_122\,
      PCOUT(30) => \Gain2_mul_temp__1_n_123\,
      PCOUT(29) => \Gain2_mul_temp__1_n_124\,
      PCOUT(28) => \Gain2_mul_temp__1_n_125\,
      PCOUT(27) => \Gain2_mul_temp__1_n_126\,
      PCOUT(26) => \Gain2_mul_temp__1_n_127\,
      PCOUT(25) => \Gain2_mul_temp__1_n_128\,
      PCOUT(24) => \Gain2_mul_temp__1_n_129\,
      PCOUT(23) => \Gain2_mul_temp__1_n_130\,
      PCOUT(22) => \Gain2_mul_temp__1_n_131\,
      PCOUT(21) => \Gain2_mul_temp__1_n_132\,
      PCOUT(20) => \Gain2_mul_temp__1_n_133\,
      PCOUT(19) => \Gain2_mul_temp__1_n_134\,
      PCOUT(18) => \Gain2_mul_temp__1_n_135\,
      PCOUT(17) => \Gain2_mul_temp__1_n_136\,
      PCOUT(16) => \Gain2_mul_temp__1_n_137\,
      PCOUT(15) => \Gain2_mul_temp__1_n_138\,
      PCOUT(14) => \Gain2_mul_temp__1_n_139\,
      PCOUT(13) => \Gain2_mul_temp__1_n_140\,
      PCOUT(12) => \Gain2_mul_temp__1_n_141\,
      PCOUT(11) => \Gain2_mul_temp__1_n_142\,
      PCOUT(10) => \Gain2_mul_temp__1_n_143\,
      PCOUT(9) => \Gain2_mul_temp__1_n_144\,
      PCOUT(8) => \Gain2_mul_temp__1_n_145\,
      PCOUT(7) => \Gain2_mul_temp__1_n_146\,
      PCOUT(6) => \Gain2_mul_temp__1_n_147\,
      PCOUT(5) => \Gain2_mul_temp__1_n_148\,
      PCOUT(4) => \Gain2_mul_temp__1_n_149\,
      PCOUT(3) => \Gain2_mul_temp__1_n_150\,
      PCOUT(2) => \Gain2_mul_temp__1_n_151\,
      PCOUT(1) => \Gain2_mul_temp__1_n_152\,
      PCOUT(0) => \Gain2_mul_temp__1_n_153\,
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
      UNDERFLOW => \NLW_Gain2_mul_temp__1_UNDERFLOW_UNCONNECTED\
    );
\Gain2_mul_temp__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
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
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \Gain2_mul_temp__1_n_24\,
      ACIN(28) => \Gain2_mul_temp__1_n_25\,
      ACIN(27) => \Gain2_mul_temp__1_n_26\,
      ACIN(26) => \Gain2_mul_temp__1_n_27\,
      ACIN(25) => \Gain2_mul_temp__1_n_28\,
      ACIN(24) => \Gain2_mul_temp__1_n_29\,
      ACIN(23) => \Gain2_mul_temp__1_n_30\,
      ACIN(22) => \Gain2_mul_temp__1_n_31\,
      ACIN(21) => \Gain2_mul_temp__1_n_32\,
      ACIN(20) => \Gain2_mul_temp__1_n_33\,
      ACIN(19) => \Gain2_mul_temp__1_n_34\,
      ACIN(18) => \Gain2_mul_temp__1_n_35\,
      ACIN(17) => \Gain2_mul_temp__1_n_36\,
      ACIN(16) => \Gain2_mul_temp__1_n_37\,
      ACIN(15) => \Gain2_mul_temp__1_n_38\,
      ACIN(14) => \Gain2_mul_temp__1_n_39\,
      ACIN(13) => \Gain2_mul_temp__1_n_40\,
      ACIN(12) => \Gain2_mul_temp__1_n_41\,
      ACIN(11) => \Gain2_mul_temp__1_n_42\,
      ACIN(10) => \Gain2_mul_temp__1_n_43\,
      ACIN(9) => \Gain2_mul_temp__1_n_44\,
      ACIN(8) => \Gain2_mul_temp__1_n_45\,
      ACIN(7) => \Gain2_mul_temp__1_n_46\,
      ACIN(6) => \Gain2_mul_temp__1_n_47\,
      ACIN(5) => \Gain2_mul_temp__1_n_48\,
      ACIN(4) => \Gain2_mul_temp__1_n_49\,
      ACIN(3) => \Gain2_mul_temp__1_n_50\,
      ACIN(2) => \Gain2_mul_temp__1_n_51\,
      ACIN(1) => \Gain2_mul_temp__1_n_52\,
      ACIN(0) => \Gain2_mul_temp__1_n_53\,
      ACOUT(29 downto 0) => \NLW_Gain2_mul_temp__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => position(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_Gain2_mul_temp__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_Gain2_mul_temp__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_Gain2_mul_temp__2_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_Gain2_mul_temp__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_Gain2_mul_temp__2_OVERFLOW_UNCONNECTED\,
      P(47) => \Gain2_mul_temp__2_n_58\,
      P(46) => \Gain2_mul_temp__2_n_59\,
      P(45) => \Gain2_mul_temp__2_n_60\,
      P(44) => \Gain2_mul_temp__2_n_61\,
      P(43) => \Gain2_mul_temp__2_n_62\,
      P(42) => \Gain2_mul_temp__2_n_63\,
      P(41) => \Gain2_mul_temp__2_n_64\,
      P(40) => \Gain2_mul_temp__2_n_65\,
      P(39) => \Gain2_mul_temp__2_n_66\,
      P(38) => \Gain2_mul_temp__2_n_67\,
      P(37) => \Gain2_mul_temp__2_n_68\,
      P(36) => \Gain2_mul_temp__2_n_69\,
      P(35) => \Gain2_mul_temp__2_n_70\,
      P(34) => \Gain2_mul_temp__2_n_71\,
      P(33) => \Gain2_mul_temp__2_n_72\,
      P(32) => \Gain2_mul_temp__2_n_73\,
      P(31) => \Gain2_mul_temp__2_n_74\,
      P(30) => \Gain2_mul_temp__2_n_75\,
      P(29) => \Gain2_mul_temp__2_n_76\,
      P(28) => \Gain2_mul_temp__2_n_77\,
      P(27) => \Gain2_mul_temp__2_n_78\,
      P(26) => \Gain2_mul_temp__2_n_79\,
      P(25) => \Gain2_mul_temp__2_n_80\,
      P(24) => \Gain2_mul_temp__2_n_81\,
      P(23) => \Gain2_mul_temp__2_n_82\,
      P(22) => \Gain2_mul_temp__2_n_83\,
      P(21) => \Gain2_mul_temp__2_n_84\,
      P(20) => \Gain2_mul_temp__2_n_85\,
      P(19) => \Gain2_mul_temp__2_n_86\,
      P(18) => \Gain2_mul_temp__2_n_87\,
      P(17) => \Gain2_mul_temp__2_n_88\,
      P(16) => \Gain2_mul_temp__2_n_89\,
      P(15) => \Gain2_mul_temp__2_n_90\,
      P(14) => \Gain2_mul_temp__2_n_91\,
      P(13) => \Gain2_mul_temp__2_n_92\,
      P(12) => \Gain2_mul_temp__2_n_93\,
      P(11) => \Gain2_mul_temp__2_n_94\,
      P(10) => \Gain2_mul_temp__2_n_95\,
      P(9) => \Gain2_mul_temp__2_n_96\,
      P(8) => \Gain2_mul_temp__2_n_97\,
      P(7) => \Gain2_mul_temp__2_n_98\,
      P(6) => \Gain2_mul_temp__2_n_99\,
      P(5) => \Gain2_mul_temp__2_n_100\,
      P(4) => \Gain2_mul_temp__2_n_101\,
      P(3) => \Gain2_mul_temp__2_n_102\,
      P(2) => \Gain2_mul_temp__2_n_103\,
      P(1) => \Gain2_mul_temp__2_n_104\,
      P(0) => \Gain2_mul_temp__2_n_105\,
      PATTERNBDETECT => \NLW_Gain2_mul_temp__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_Gain2_mul_temp__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \Gain2_mul_temp__1_n_106\,
      PCIN(46) => \Gain2_mul_temp__1_n_107\,
      PCIN(45) => \Gain2_mul_temp__1_n_108\,
      PCIN(44) => \Gain2_mul_temp__1_n_109\,
      PCIN(43) => \Gain2_mul_temp__1_n_110\,
      PCIN(42) => \Gain2_mul_temp__1_n_111\,
      PCIN(41) => \Gain2_mul_temp__1_n_112\,
      PCIN(40) => \Gain2_mul_temp__1_n_113\,
      PCIN(39) => \Gain2_mul_temp__1_n_114\,
      PCIN(38) => \Gain2_mul_temp__1_n_115\,
      PCIN(37) => \Gain2_mul_temp__1_n_116\,
      PCIN(36) => \Gain2_mul_temp__1_n_117\,
      PCIN(35) => \Gain2_mul_temp__1_n_118\,
      PCIN(34) => \Gain2_mul_temp__1_n_119\,
      PCIN(33) => \Gain2_mul_temp__1_n_120\,
      PCIN(32) => \Gain2_mul_temp__1_n_121\,
      PCIN(31) => \Gain2_mul_temp__1_n_122\,
      PCIN(30) => \Gain2_mul_temp__1_n_123\,
      PCIN(29) => \Gain2_mul_temp__1_n_124\,
      PCIN(28) => \Gain2_mul_temp__1_n_125\,
      PCIN(27) => \Gain2_mul_temp__1_n_126\,
      PCIN(26) => \Gain2_mul_temp__1_n_127\,
      PCIN(25) => \Gain2_mul_temp__1_n_128\,
      PCIN(24) => \Gain2_mul_temp__1_n_129\,
      PCIN(23) => \Gain2_mul_temp__1_n_130\,
      PCIN(22) => \Gain2_mul_temp__1_n_131\,
      PCIN(21) => \Gain2_mul_temp__1_n_132\,
      PCIN(20) => \Gain2_mul_temp__1_n_133\,
      PCIN(19) => \Gain2_mul_temp__1_n_134\,
      PCIN(18) => \Gain2_mul_temp__1_n_135\,
      PCIN(17) => \Gain2_mul_temp__1_n_136\,
      PCIN(16) => \Gain2_mul_temp__1_n_137\,
      PCIN(15) => \Gain2_mul_temp__1_n_138\,
      PCIN(14) => \Gain2_mul_temp__1_n_139\,
      PCIN(13) => \Gain2_mul_temp__1_n_140\,
      PCIN(12) => \Gain2_mul_temp__1_n_141\,
      PCIN(11) => \Gain2_mul_temp__1_n_142\,
      PCIN(10) => \Gain2_mul_temp__1_n_143\,
      PCIN(9) => \Gain2_mul_temp__1_n_144\,
      PCIN(8) => \Gain2_mul_temp__1_n_145\,
      PCIN(7) => \Gain2_mul_temp__1_n_146\,
      PCIN(6) => \Gain2_mul_temp__1_n_147\,
      PCIN(5) => \Gain2_mul_temp__1_n_148\,
      PCIN(4) => \Gain2_mul_temp__1_n_149\,
      PCIN(3) => \Gain2_mul_temp__1_n_150\,
      PCIN(2) => \Gain2_mul_temp__1_n_151\,
      PCIN(1) => \Gain2_mul_temp__1_n_152\,
      PCIN(0) => \Gain2_mul_temp__1_n_153\,
      PCOUT(47 downto 0) => \NLW_Gain2_mul_temp__2_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_Gain2_mul_temp__2_UNDERFLOW_UNCONNECTED\
    );
Gain2_mul_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain2_mul_temp_carry_n_0,
      CO(2) => Gain2_mul_temp_carry_n_1,
      CO(1) => Gain2_mul_temp_carry_n_2,
      CO(0) => Gain2_mul_temp_carry_n_3,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_103\,
      DI(2) => \Gain2_mul_temp__2_n_104\,
      DI(1) => \Gain2_mul_temp__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => NLW_Gain2_mul_temp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Gain2_mul_temp_carry_i_1_n_0,
      S(2) => Gain2_mul_temp_carry_i_2_n_0,
      S(1) => Gain2_mul_temp_carry_i_3_n_0,
      S(0) => \Gain2_mul_temp__1_n_89\
    );
\Gain2_mul_temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain2_mul_temp_carry_n_0,
      CO(3) => \Gain2_mul_temp_carry__0_n_0\,
      CO(2) => \Gain2_mul_temp_carry__0_n_1\,
      CO(1) => \Gain2_mul_temp_carry__0_n_2\,
      CO(0) => \Gain2_mul_temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_99\,
      DI(2) => \Gain2_mul_temp__2_n_100\,
      DI(1) => \Gain2_mul_temp__2_n_101\,
      DI(0) => \Gain2_mul_temp__2_n_102\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__0_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__0_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__0_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__0_i_4_n_0\
    );
\Gain2_mul_temp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_99\,
      I1 => Gain2_mul_temp_n_99,
      O => \Gain2_mul_temp_carry__0_i_1_n_0\
    );
\Gain2_mul_temp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_100\,
      I1 => Gain2_mul_temp_n_100,
      O => \Gain2_mul_temp_carry__0_i_2_n_0\
    );
\Gain2_mul_temp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_101\,
      I1 => Gain2_mul_temp_n_101,
      O => \Gain2_mul_temp_carry__0_i_3_n_0\
    );
\Gain2_mul_temp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_102\,
      I1 => Gain2_mul_temp_n_102,
      O => \Gain2_mul_temp_carry__0_i_4_n_0\
    );
\Gain2_mul_temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__0_n_0\,
      CO(3) => \Gain2_mul_temp_carry__1_n_0\,
      CO(2) => \Gain2_mul_temp_carry__1_n_1\,
      CO(1) => \Gain2_mul_temp_carry__1_n_2\,
      CO(0) => \Gain2_mul_temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_95\,
      DI(2) => \Gain2_mul_temp__2_n_96\,
      DI(1) => \Gain2_mul_temp__2_n_97\,
      DI(0) => \Gain2_mul_temp__2_n_98\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__1_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__1_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__1_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__1_i_4_n_0\
    );
\Gain2_mul_temp_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__9_n_0\,
      CO(3) => \NLW_Gain2_mul_temp_carry__10_CO_UNCONNECTED\(3),
      CO(2) => \Gain2_mul_temp_carry__10_n_1\,
      CO(1) => \Gain2_mul_temp_carry__10_n_2\,
      CO(0) => \Gain2_mul_temp_carry__10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Gain2_mul_temp__2_n_60\,
      DI(1) => \Gain2_mul_temp__2_n_61\,
      DI(0) => \Gain2_mul_temp__2_n_62\,
      O(3 downto 0) => \Gain2_mul_temp__3\(63 downto 60),
      S(3) => \Gain2_mul_temp_carry__10_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__10_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__10_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__10_i_4_n_0\
    );
\Gain2_mul_temp_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__0_n_76\,
      I1 => \Gain2_mul_temp__2_n_59\,
      O => \Gain2_mul_temp_carry__10_i_1_n_0\
    );
\Gain2_mul_temp_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_60\,
      I1 => \Gain2_mul_temp__0_n_77\,
      O => \Gain2_mul_temp_carry__10_i_2_n_0\
    );
\Gain2_mul_temp_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_61\,
      I1 => \Gain2_mul_temp__0_n_78\,
      O => \Gain2_mul_temp_carry__10_i_3_n_0\
    );
\Gain2_mul_temp_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_62\,
      I1 => \Gain2_mul_temp__0_n_79\,
      O => \Gain2_mul_temp_carry__10_i_4_n_0\
    );
\Gain2_mul_temp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_95\,
      I1 => Gain2_mul_temp_n_95,
      O => \Gain2_mul_temp_carry__1_i_1_n_0\
    );
\Gain2_mul_temp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_96\,
      I1 => Gain2_mul_temp_n_96,
      O => \Gain2_mul_temp_carry__1_i_2_n_0\
    );
\Gain2_mul_temp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_97\,
      I1 => Gain2_mul_temp_n_97,
      O => \Gain2_mul_temp_carry__1_i_3_n_0\
    );
\Gain2_mul_temp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_98\,
      I1 => Gain2_mul_temp_n_98,
      O => \Gain2_mul_temp_carry__1_i_4_n_0\
    );
\Gain2_mul_temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__1_n_0\,
      CO(3) => \Gain2_mul_temp_carry__2_n_0\,
      CO(2) => \Gain2_mul_temp_carry__2_n_1\,
      CO(1) => \Gain2_mul_temp_carry__2_n_2\,
      CO(0) => \Gain2_mul_temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_91\,
      DI(2) => \Gain2_mul_temp__2_n_92\,
      DI(1) => \Gain2_mul_temp__2_n_93\,
      DI(0) => \Gain2_mul_temp__2_n_94\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__2_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__2_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__2_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__2_i_4_n_0\
    );
\Gain2_mul_temp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_91\,
      I1 => Gain2_mul_temp_n_91,
      O => \Gain2_mul_temp_carry__2_i_1_n_0\
    );
\Gain2_mul_temp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_92\,
      I1 => Gain2_mul_temp_n_92,
      O => \Gain2_mul_temp_carry__2_i_2_n_0\
    );
\Gain2_mul_temp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_93\,
      I1 => Gain2_mul_temp_n_93,
      O => \Gain2_mul_temp_carry__2_i_3_n_0\
    );
\Gain2_mul_temp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_94\,
      I1 => Gain2_mul_temp_n_94,
      O => \Gain2_mul_temp_carry__2_i_4_n_0\
    );
\Gain2_mul_temp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__2_n_0\,
      CO(3) => \Gain2_mul_temp_carry__3_n_0\,
      CO(2) => \Gain2_mul_temp_carry__3_n_1\,
      CO(1) => \Gain2_mul_temp_carry__3_n_2\,
      CO(0) => \Gain2_mul_temp_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_87\,
      DI(2) => \Gain2_mul_temp__2_n_88\,
      DI(1) => \Gain2_mul_temp__2_n_89\,
      DI(0) => \Gain2_mul_temp__2_n_90\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__3_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__3_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__3_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__3_i_4_n_0\
    );
\Gain2_mul_temp_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_87\,
      I1 => \Gain2_mul_temp__0_n_104\,
      O => \Gain2_mul_temp_carry__3_i_1_n_0\
    );
\Gain2_mul_temp_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_88\,
      I1 => \Gain2_mul_temp__0_n_105\,
      O => \Gain2_mul_temp_carry__3_i_2_n_0\
    );
\Gain2_mul_temp_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_89\,
      I1 => Gain2_mul_temp_n_89,
      O => \Gain2_mul_temp_carry__3_i_3_n_0\
    );
\Gain2_mul_temp_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_90\,
      I1 => Gain2_mul_temp_n_90,
      O => \Gain2_mul_temp_carry__3_i_4_n_0\
    );
\Gain2_mul_temp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__3_n_0\,
      CO(3) => \Gain2_mul_temp_carry__4_n_0\,
      CO(2) => \Gain2_mul_temp_carry__4_n_1\,
      CO(1) => \Gain2_mul_temp_carry__4_n_2\,
      CO(0) => \Gain2_mul_temp_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_83\,
      DI(2) => \Gain2_mul_temp__2_n_84\,
      DI(1) => \Gain2_mul_temp__2_n_85\,
      DI(0) => \Gain2_mul_temp__2_n_86\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__4_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__4_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__4_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__4_i_4_n_0\
    );
\Gain2_mul_temp_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_83\,
      I1 => \Gain2_mul_temp__0_n_100\,
      O => \Gain2_mul_temp_carry__4_i_1_n_0\
    );
\Gain2_mul_temp_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_84\,
      I1 => \Gain2_mul_temp__0_n_101\,
      O => \Gain2_mul_temp_carry__4_i_2_n_0\
    );
\Gain2_mul_temp_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_85\,
      I1 => \Gain2_mul_temp__0_n_102\,
      O => \Gain2_mul_temp_carry__4_i_3_n_0\
    );
\Gain2_mul_temp_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_86\,
      I1 => \Gain2_mul_temp__0_n_103\,
      O => \Gain2_mul_temp_carry__4_i_4_n_0\
    );
\Gain2_mul_temp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__4_n_0\,
      CO(3) => \Gain2_mul_temp_carry__5_n_0\,
      CO(2) => \Gain2_mul_temp_carry__5_n_1\,
      CO(1) => \Gain2_mul_temp_carry__5_n_2\,
      CO(0) => \Gain2_mul_temp_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_79\,
      DI(2) => \Gain2_mul_temp__2_n_80\,
      DI(1) => \Gain2_mul_temp__2_n_81\,
      DI(0) => \Gain2_mul_temp__2_n_82\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__5_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__5_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__5_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__5_i_4_n_0\
    );
\Gain2_mul_temp_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_79\,
      I1 => \Gain2_mul_temp__0_n_96\,
      O => \Gain2_mul_temp_carry__5_i_1_n_0\
    );
\Gain2_mul_temp_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_80\,
      I1 => \Gain2_mul_temp__0_n_97\,
      O => \Gain2_mul_temp_carry__5_i_2_n_0\
    );
\Gain2_mul_temp_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_81\,
      I1 => \Gain2_mul_temp__0_n_98\,
      O => \Gain2_mul_temp_carry__5_i_3_n_0\
    );
\Gain2_mul_temp_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_82\,
      I1 => \Gain2_mul_temp__0_n_99\,
      O => \Gain2_mul_temp_carry__5_i_4_n_0\
    );
\Gain2_mul_temp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__5_n_0\,
      CO(3) => \Gain2_mul_temp_carry__6_n_0\,
      CO(2) => \Gain2_mul_temp_carry__6_n_1\,
      CO(1) => \Gain2_mul_temp_carry__6_n_2\,
      CO(0) => \Gain2_mul_temp_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_75\,
      DI(2) => \Gain2_mul_temp__2_n_76\,
      DI(1) => \Gain2_mul_temp__2_n_77\,
      DI(0) => \Gain2_mul_temp__2_n_78\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__6_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__6_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__6_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__6_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__6_i_4_n_0\
    );
\Gain2_mul_temp_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_75\,
      I1 => \Gain2_mul_temp__0_n_92\,
      O => \Gain2_mul_temp_carry__6_i_1_n_0\
    );
\Gain2_mul_temp_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_76\,
      I1 => \Gain2_mul_temp__0_n_93\,
      O => \Gain2_mul_temp_carry__6_i_2_n_0\
    );
\Gain2_mul_temp_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_77\,
      I1 => \Gain2_mul_temp__0_n_94\,
      O => \Gain2_mul_temp_carry__6_i_3_n_0\
    );
\Gain2_mul_temp_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_78\,
      I1 => \Gain2_mul_temp__0_n_95\,
      O => \Gain2_mul_temp_carry__6_i_4_n_0\
    );
\Gain2_mul_temp_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__6_n_0\,
      CO(3) => \Gain2_mul_temp_carry__7_n_0\,
      CO(2) => \Gain2_mul_temp_carry__7_n_1\,
      CO(1) => \Gain2_mul_temp_carry__7_n_2\,
      CO(0) => \Gain2_mul_temp_carry__7_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_71\,
      DI(2) => \Gain2_mul_temp__2_n_72\,
      DI(1) => \Gain2_mul_temp__2_n_73\,
      DI(0) => \Gain2_mul_temp__2_n_74\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__7_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__7_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__7_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__7_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__7_i_4_n_0\
    );
\Gain2_mul_temp_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_71\,
      I1 => \Gain2_mul_temp__0_n_88\,
      O => \Gain2_mul_temp_carry__7_i_1_n_0\
    );
\Gain2_mul_temp_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_72\,
      I1 => \Gain2_mul_temp__0_n_89\,
      O => \Gain2_mul_temp_carry__7_i_2_n_0\
    );
\Gain2_mul_temp_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_73\,
      I1 => \Gain2_mul_temp__0_n_90\,
      O => \Gain2_mul_temp_carry__7_i_3_n_0\
    );
\Gain2_mul_temp_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_74\,
      I1 => \Gain2_mul_temp__0_n_91\,
      O => \Gain2_mul_temp_carry__7_i_4_n_0\
    );
\Gain2_mul_temp_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__7_n_0\,
      CO(3) => \Gain2_mul_temp_carry__8_n_0\,
      CO(2) => \Gain2_mul_temp_carry__8_n_1\,
      CO(1) => \Gain2_mul_temp_carry__8_n_2\,
      CO(0) => \Gain2_mul_temp_carry__8_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_67\,
      DI(2) => \Gain2_mul_temp__2_n_68\,
      DI(1) => \Gain2_mul_temp__2_n_69\,
      DI(0) => \Gain2_mul_temp__2_n_70\,
      O(3 downto 0) => \NLW_Gain2_mul_temp_carry__8_O_UNCONNECTED\(3 downto 0),
      S(3) => \Gain2_mul_temp_carry__8_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__8_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__8_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__8_i_4_n_0\
    );
\Gain2_mul_temp_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_67\,
      I1 => \Gain2_mul_temp__0_n_84\,
      O => \Gain2_mul_temp_carry__8_i_1_n_0\
    );
\Gain2_mul_temp_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_68\,
      I1 => \Gain2_mul_temp__0_n_85\,
      O => \Gain2_mul_temp_carry__8_i_2_n_0\
    );
\Gain2_mul_temp_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_69\,
      I1 => \Gain2_mul_temp__0_n_86\,
      O => \Gain2_mul_temp_carry__8_i_3_n_0\
    );
\Gain2_mul_temp_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_70\,
      I1 => \Gain2_mul_temp__0_n_87\,
      O => \Gain2_mul_temp_carry__8_i_4_n_0\
    );
\Gain2_mul_temp_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain2_mul_temp_carry__8_n_0\,
      CO(3) => \Gain2_mul_temp_carry__9_n_0\,
      CO(2) => \Gain2_mul_temp_carry__9_n_1\,
      CO(1) => \Gain2_mul_temp_carry__9_n_2\,
      CO(0) => \Gain2_mul_temp_carry__9_n_3\,
      CYINIT => '0',
      DI(3) => \Gain2_mul_temp__2_n_63\,
      DI(2) => \Gain2_mul_temp__2_n_64\,
      DI(1) => \Gain2_mul_temp__2_n_65\,
      DI(0) => \Gain2_mul_temp__2_n_66\,
      O(3) => \Gain2_mul_temp__3\(59),
      O(2 downto 0) => \NLW_Gain2_mul_temp_carry__9_O_UNCONNECTED\(2 downto 0),
      S(3) => \Gain2_mul_temp_carry__9_i_1_n_0\,
      S(2) => \Gain2_mul_temp_carry__9_i_2_n_0\,
      S(1) => \Gain2_mul_temp_carry__9_i_3_n_0\,
      S(0) => \Gain2_mul_temp_carry__9_i_4_n_0\
    );
\Gain2_mul_temp_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_63\,
      I1 => \Gain2_mul_temp__0_n_80\,
      O => \Gain2_mul_temp_carry__9_i_1_n_0\
    );
\Gain2_mul_temp_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_64\,
      I1 => \Gain2_mul_temp__0_n_81\,
      O => \Gain2_mul_temp_carry__9_i_2_n_0\
    );
\Gain2_mul_temp_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_65\,
      I1 => \Gain2_mul_temp__0_n_82\,
      O => \Gain2_mul_temp_carry__9_i_3_n_0\
    );
\Gain2_mul_temp_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_66\,
      I1 => \Gain2_mul_temp__0_n_83\,
      O => \Gain2_mul_temp_carry__9_i_4_n_0\
    );
Gain2_mul_temp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_103\,
      I1 => Gain2_mul_temp_n_103,
      O => Gain2_mul_temp_carry_i_1_n_0
    );
Gain2_mul_temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_104\,
      I1 => Gain2_mul_temp_n_104,
      O => Gain2_mul_temp_carry_i_2_n_0
    );
Gain2_mul_temp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain2_mul_temp__2_n_105\,
      I1 => Gain2_mul_temp_n_105,
      O => Gain2_mul_temp_carry_i_3_n_0
    );
Gain3_add_temp: unisim.vcomponents.DSP48E1
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
      CREG => 0,
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
      A(29) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(28) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(27) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(26) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(25) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(24) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(23) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(22) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(21) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(20) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(19) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(18) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(17) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(16) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(15) => \Unit_Delay2_out1_reg[1][15]_rep_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[1]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain3_add_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111110010111101111",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain3_add_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => \Gain3_mul_temp__0\(28),
      C(46) => \Gain3_mul_temp__0\(28),
      C(45) => \Gain3_mul_temp__0\(28),
      C(44) => \Gain3_mul_temp__0\(28),
      C(43) => \Gain3_mul_temp__0\(28),
      C(42) => \Gain3_mul_temp__0\(28),
      C(41) => \Gain3_mul_temp__0\(28),
      C(40) => \Gain3_mul_temp__0\(28),
      C(39) => \Gain3_mul_temp__0\(28),
      C(38) => \Gain3_mul_temp__0\(28),
      C(37) => \Gain3_mul_temp__0\(28),
      C(36) => \Gain3_mul_temp__0\(28),
      C(35) => \Gain3_mul_temp__0\(28),
      C(34) => \Gain3_mul_temp__0\(28),
      C(33) => \Gain3_mul_temp__0\(28),
      C(32) => \Gain3_mul_temp__0\(28),
      C(31) => \Gain3_mul_temp__0\(28),
      C(30) => \Gain3_mul_temp__0\(28),
      C(29) => \Gain3_mul_temp__0\(28),
      C(28 downto 0) => \Gain3_mul_temp__0\(28 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain3_add_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain3_add_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain3_add_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_Gain3_add_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 29) => NLW_Gain3_add_temp_P_UNCONNECTED(47 downto 29),
      P(28) => Gain3_add_temp_n_77,
      P(27) => Gain3_add_temp_n_78,
      P(26) => Gain3_add_temp_n_79,
      P(25) => Gain3_add_temp_n_80,
      P(24) => Gain3_add_temp_n_81,
      P(23) => Gain3_add_temp_n_82,
      P(22) => Gain3_add_temp_n_83,
      P(21) => Gain3_add_temp_n_84,
      P(20) => Gain3_add_temp_n_85,
      P(19) => Gain3_add_temp_n_86,
      P(18) => Gain3_add_temp_n_87,
      P(17) => Gain3_add_temp_n_88,
      P(16) => Gain3_add_temp_n_89,
      P(15) => Gain3_add_temp_n_90,
      P(14) => Gain3_add_temp_n_91,
      P(13) => Gain3_add_temp_n_92,
      P(12) => Gain3_add_temp_n_93,
      P(11) => Gain3_add_temp_n_94,
      P(10) => Gain3_add_temp_n_95,
      P(9) => Gain3_add_temp_n_96,
      P(8) => Gain3_add_temp_n_97,
      P(7) => Gain3_add_temp_n_98,
      P(6) => Gain3_add_temp_n_99,
      P(5) => Gain3_add_temp_n_100,
      P(4) => Gain3_add_temp_n_101,
      P(3) => Gain3_add_temp_n_102,
      P(2) => Gain3_add_temp_n_103,
      P(1) => Gain3_add_temp_n_104,
      P(0) => Gain3_add_temp_n_105,
      PATTERNBDETECT => NLW_Gain3_add_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain3_add_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => Gain3_add_temp_n_106,
      PCOUT(46) => Gain3_add_temp_n_107,
      PCOUT(45) => Gain3_add_temp_n_108,
      PCOUT(44) => Gain3_add_temp_n_109,
      PCOUT(43) => Gain3_add_temp_n_110,
      PCOUT(42) => Gain3_add_temp_n_111,
      PCOUT(41) => Gain3_add_temp_n_112,
      PCOUT(40) => Gain3_add_temp_n_113,
      PCOUT(39) => Gain3_add_temp_n_114,
      PCOUT(38) => Gain3_add_temp_n_115,
      PCOUT(37) => Gain3_add_temp_n_116,
      PCOUT(36) => Gain3_add_temp_n_117,
      PCOUT(35) => Gain3_add_temp_n_118,
      PCOUT(34) => Gain3_add_temp_n_119,
      PCOUT(33) => Gain3_add_temp_n_120,
      PCOUT(32) => Gain3_add_temp_n_121,
      PCOUT(31) => Gain3_add_temp_n_122,
      PCOUT(30) => Gain3_add_temp_n_123,
      PCOUT(29) => Gain3_add_temp_n_124,
      PCOUT(28) => Gain3_add_temp_n_125,
      PCOUT(27) => Gain3_add_temp_n_126,
      PCOUT(26) => Gain3_add_temp_n_127,
      PCOUT(25) => Gain3_add_temp_n_128,
      PCOUT(24) => Gain3_add_temp_n_129,
      PCOUT(23) => Gain3_add_temp_n_130,
      PCOUT(22) => Gain3_add_temp_n_131,
      PCOUT(21) => Gain3_add_temp_n_132,
      PCOUT(20) => Gain3_add_temp_n_133,
      PCOUT(19) => Gain3_add_temp_n_134,
      PCOUT(18) => Gain3_add_temp_n_135,
      PCOUT(17) => Gain3_add_temp_n_136,
      PCOUT(16) => Gain3_add_temp_n_137,
      PCOUT(15) => Gain3_add_temp_n_138,
      PCOUT(14) => Gain3_add_temp_n_139,
      PCOUT(13) => Gain3_add_temp_n_140,
      PCOUT(12) => Gain3_add_temp_n_141,
      PCOUT(11) => Gain3_add_temp_n_142,
      PCOUT(10) => Gain3_add_temp_n_143,
      PCOUT(9) => Gain3_add_temp_n_144,
      PCOUT(8) => Gain3_add_temp_n_145,
      PCOUT(7) => Gain3_add_temp_n_146,
      PCOUT(6) => Gain3_add_temp_n_147,
      PCOUT(5) => Gain3_add_temp_n_148,
      PCOUT(4) => Gain3_add_temp_n_149,
      PCOUT(3) => Gain3_add_temp_n_150,
      PCOUT(2) => Gain3_add_temp_n_151,
      PCOUT(1) => Gain3_add_temp_n_152,
      PCOUT(0) => Gain3_add_temp_n_153,
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
      UNDERFLOW => NLW_Gain3_add_temp_UNDERFLOW_UNCONNECTED
    );
Gain3_add_temp_1: unisim.vcomponents.DSP48E1
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
      A(29 downto 0) => B"000000000000000101111110000001",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain3_add_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      B(16) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      B(15) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      B(14 downto 0) => \Unit_Delay2_out1_reg[2]\(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain3_add_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain3_add_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain3_add_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain3_add_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_Gain3_add_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 29) => NLW_Gain3_add_temp_1_P_UNCONNECTED(47 downto 29),
      P(28) => Gain3_add_temp_1_n_77,
      P(27) => Gain3_add_temp_1_n_78,
      P(26) => Gain3_add_temp_1_n_79,
      P(25) => Gain3_add_temp_1_n_80,
      P(24) => Gain3_add_temp_1_n_81,
      P(23) => Gain3_add_temp_1_n_82,
      P(22) => Gain3_add_temp_1_n_83,
      P(21) => Gain3_add_temp_1_n_84,
      P(20) => Gain3_add_temp_1_n_85,
      P(19) => Gain3_add_temp_1_n_86,
      P(18) => Gain3_add_temp_1_n_87,
      P(17) => Gain3_add_temp_1_n_88,
      P(16) => Gain3_add_temp_1_n_89,
      P(15) => Gain3_add_temp_1_n_90,
      P(14) => Gain3_add_temp_1_n_91,
      P(13) => Gain3_add_temp_1_n_92,
      P(12) => Gain3_add_temp_1_n_93,
      P(11) => Gain3_add_temp_1_n_94,
      P(10) => Gain3_add_temp_1_n_95,
      P(9) => Gain3_add_temp_1_n_96,
      P(8) => Gain3_add_temp_1_n_97,
      P(7) => Gain3_add_temp_1_n_98,
      P(6) => Gain3_add_temp_1_n_99,
      P(5) => Gain3_add_temp_1_n_100,
      P(4) => Gain3_add_temp_1_n_101,
      P(3) => Gain3_add_temp_1_n_102,
      P(2) => Gain3_add_temp_1_n_103,
      P(1) => Gain3_add_temp_1_n_104,
      P(0) => Gain3_add_temp_1_n_105,
      PATTERNBDETECT => NLW_Gain3_add_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain3_add_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => Gain3_add_temp_n_106,
      PCIN(46) => Gain3_add_temp_n_107,
      PCIN(45) => Gain3_add_temp_n_108,
      PCIN(44) => Gain3_add_temp_n_109,
      PCIN(43) => Gain3_add_temp_n_110,
      PCIN(42) => Gain3_add_temp_n_111,
      PCIN(41) => Gain3_add_temp_n_112,
      PCIN(40) => Gain3_add_temp_n_113,
      PCIN(39) => Gain3_add_temp_n_114,
      PCIN(38) => Gain3_add_temp_n_115,
      PCIN(37) => Gain3_add_temp_n_116,
      PCIN(36) => Gain3_add_temp_n_117,
      PCIN(35) => Gain3_add_temp_n_118,
      PCIN(34) => Gain3_add_temp_n_119,
      PCIN(33) => Gain3_add_temp_n_120,
      PCIN(32) => Gain3_add_temp_n_121,
      PCIN(31) => Gain3_add_temp_n_122,
      PCIN(30) => Gain3_add_temp_n_123,
      PCIN(29) => Gain3_add_temp_n_124,
      PCIN(28) => Gain3_add_temp_n_125,
      PCIN(27) => Gain3_add_temp_n_126,
      PCIN(26) => Gain3_add_temp_n_127,
      PCIN(25) => Gain3_add_temp_n_128,
      PCIN(24) => Gain3_add_temp_n_129,
      PCIN(23) => Gain3_add_temp_n_130,
      PCIN(22) => Gain3_add_temp_n_131,
      PCIN(21) => Gain3_add_temp_n_132,
      PCIN(20) => Gain3_add_temp_n_133,
      PCIN(19) => Gain3_add_temp_n_134,
      PCIN(18) => Gain3_add_temp_n_135,
      PCIN(17) => Gain3_add_temp_n_136,
      PCIN(16) => Gain3_add_temp_n_137,
      PCIN(15) => Gain3_add_temp_n_138,
      PCIN(14) => Gain3_add_temp_n_139,
      PCIN(13) => Gain3_add_temp_n_140,
      PCIN(12) => Gain3_add_temp_n_141,
      PCIN(11) => Gain3_add_temp_n_142,
      PCIN(10) => Gain3_add_temp_n_143,
      PCIN(9) => Gain3_add_temp_n_144,
      PCIN(8) => Gain3_add_temp_n_145,
      PCIN(7) => Gain3_add_temp_n_146,
      PCIN(6) => Gain3_add_temp_n_147,
      PCIN(5) => Gain3_add_temp_n_148,
      PCIN(4) => Gain3_add_temp_n_149,
      PCIN(3) => Gain3_add_temp_n_150,
      PCIN(2) => Gain3_add_temp_n_151,
      PCIN(1) => Gain3_add_temp_n_152,
      PCIN(0) => Gain3_add_temp_n_153,
      PCOUT(47) => Gain3_add_temp_1_n_106,
      PCOUT(46) => Gain3_add_temp_1_n_107,
      PCOUT(45) => Gain3_add_temp_1_n_108,
      PCOUT(44) => Gain3_add_temp_1_n_109,
      PCOUT(43) => Gain3_add_temp_1_n_110,
      PCOUT(42) => Gain3_add_temp_1_n_111,
      PCOUT(41) => Gain3_add_temp_1_n_112,
      PCOUT(40) => Gain3_add_temp_1_n_113,
      PCOUT(39) => Gain3_add_temp_1_n_114,
      PCOUT(38) => Gain3_add_temp_1_n_115,
      PCOUT(37) => Gain3_add_temp_1_n_116,
      PCOUT(36) => Gain3_add_temp_1_n_117,
      PCOUT(35) => Gain3_add_temp_1_n_118,
      PCOUT(34) => Gain3_add_temp_1_n_119,
      PCOUT(33) => Gain3_add_temp_1_n_120,
      PCOUT(32) => Gain3_add_temp_1_n_121,
      PCOUT(31) => Gain3_add_temp_1_n_122,
      PCOUT(30) => Gain3_add_temp_1_n_123,
      PCOUT(29) => Gain3_add_temp_1_n_124,
      PCOUT(28) => Gain3_add_temp_1_n_125,
      PCOUT(27) => Gain3_add_temp_1_n_126,
      PCOUT(26) => Gain3_add_temp_1_n_127,
      PCOUT(25) => Gain3_add_temp_1_n_128,
      PCOUT(24) => Gain3_add_temp_1_n_129,
      PCOUT(23) => Gain3_add_temp_1_n_130,
      PCOUT(22) => Gain3_add_temp_1_n_131,
      PCOUT(21) => Gain3_add_temp_1_n_132,
      PCOUT(20) => Gain3_add_temp_1_n_133,
      PCOUT(19) => Gain3_add_temp_1_n_134,
      PCOUT(18) => Gain3_add_temp_1_n_135,
      PCOUT(17) => Gain3_add_temp_1_n_136,
      PCOUT(16) => Gain3_add_temp_1_n_137,
      PCOUT(15) => Gain3_add_temp_1_n_138,
      PCOUT(14) => Gain3_add_temp_1_n_139,
      PCOUT(13) => Gain3_add_temp_1_n_140,
      PCOUT(12) => Gain3_add_temp_1_n_141,
      PCOUT(11) => Gain3_add_temp_1_n_142,
      PCOUT(10) => Gain3_add_temp_1_n_143,
      PCOUT(9) => Gain3_add_temp_1_n_144,
      PCOUT(8) => Gain3_add_temp_1_n_145,
      PCOUT(7) => Gain3_add_temp_1_n_146,
      PCOUT(6) => Gain3_add_temp_1_n_147,
      PCOUT(5) => Gain3_add_temp_1_n_148,
      PCOUT(4) => Gain3_add_temp_1_n_149,
      PCOUT(3) => Gain3_add_temp_1_n_150,
      PCOUT(2) => Gain3_add_temp_1_n_151,
      PCOUT(1) => Gain3_add_temp_1_n_152,
      PCOUT(0) => Gain3_add_temp_1_n_153,
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
      UNDERFLOW => NLW_Gain3_add_temp_1_UNDERFLOW_UNCONNECTED
    );
Gain3_add_temp_2: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(28) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(27) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(26) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(25) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(24) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(23) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(22) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(21) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(20) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(19) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(18) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(17) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(16) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(15) => \Unit_Delay2_out1_reg[3][15]_rep_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[3]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain3_add_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000001001010101000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain3_add_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain3_add_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain3_add_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain3_add_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_Gain3_add_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 29) => NLW_Gain3_add_temp_2_P_UNCONNECTED(47 downto 29),
      P(28) => Gain3_add_temp_2_n_77,
      P(27) => Gain3_add_temp_2_n_78,
      P(26) => Gain3_add_temp_2_n_79,
      P(25) => Gain3_add_temp_2_n_80,
      P(24) => Gain3_add_temp_2_n_81,
      P(23) => Gain3_add_temp_2_n_82,
      P(22) => Gain3_add_temp_2_n_83,
      P(21) => Gain3_add_temp_2_n_84,
      P(20) => Gain3_add_temp_2_n_85,
      P(19) => Gain3_add_temp_2_n_86,
      P(18) => Gain3_add_temp_2_n_87,
      P(17) => Gain3_add_temp_2_n_88,
      P(16) => Gain3_add_temp_2_n_89,
      P(15) => Gain3_add_temp_2_n_90,
      P(14) => Gain3_add_temp_2_n_91,
      P(13) => Gain3_add_temp_2_n_92,
      P(12) => Gain3_add_temp_2_n_93,
      P(11) => Gain3_add_temp_2_n_94,
      P(10) => Gain3_add_temp_2_n_95,
      P(9) => Gain3_add_temp_2_n_96,
      P(8) => Gain3_add_temp_2_n_97,
      P(7) => Gain3_add_temp_2_n_98,
      P(6) => Gain3_add_temp_2_n_99,
      P(5) => Gain3_add_temp_2_n_100,
      P(4) => Gain3_add_temp_2_n_101,
      P(3) => Gain3_add_temp_2_n_102,
      P(2) => Gain3_add_temp_2_n_103,
      P(1) => Gain3_add_temp_2_n_104,
      P(0) => Gain3_add_temp_2_n_105,
      PATTERNBDETECT => NLW_Gain3_add_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain3_add_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => Gain3_add_temp_1_n_106,
      PCIN(46) => Gain3_add_temp_1_n_107,
      PCIN(45) => Gain3_add_temp_1_n_108,
      PCIN(44) => Gain3_add_temp_1_n_109,
      PCIN(43) => Gain3_add_temp_1_n_110,
      PCIN(42) => Gain3_add_temp_1_n_111,
      PCIN(41) => Gain3_add_temp_1_n_112,
      PCIN(40) => Gain3_add_temp_1_n_113,
      PCIN(39) => Gain3_add_temp_1_n_114,
      PCIN(38) => Gain3_add_temp_1_n_115,
      PCIN(37) => Gain3_add_temp_1_n_116,
      PCIN(36) => Gain3_add_temp_1_n_117,
      PCIN(35) => Gain3_add_temp_1_n_118,
      PCIN(34) => Gain3_add_temp_1_n_119,
      PCIN(33) => Gain3_add_temp_1_n_120,
      PCIN(32) => Gain3_add_temp_1_n_121,
      PCIN(31) => Gain3_add_temp_1_n_122,
      PCIN(30) => Gain3_add_temp_1_n_123,
      PCIN(29) => Gain3_add_temp_1_n_124,
      PCIN(28) => Gain3_add_temp_1_n_125,
      PCIN(27) => Gain3_add_temp_1_n_126,
      PCIN(26) => Gain3_add_temp_1_n_127,
      PCIN(25) => Gain3_add_temp_1_n_128,
      PCIN(24) => Gain3_add_temp_1_n_129,
      PCIN(23) => Gain3_add_temp_1_n_130,
      PCIN(22) => Gain3_add_temp_1_n_131,
      PCIN(21) => Gain3_add_temp_1_n_132,
      PCIN(20) => Gain3_add_temp_1_n_133,
      PCIN(19) => Gain3_add_temp_1_n_134,
      PCIN(18) => Gain3_add_temp_1_n_135,
      PCIN(17) => Gain3_add_temp_1_n_136,
      PCIN(16) => Gain3_add_temp_1_n_137,
      PCIN(15) => Gain3_add_temp_1_n_138,
      PCIN(14) => Gain3_add_temp_1_n_139,
      PCIN(13) => Gain3_add_temp_1_n_140,
      PCIN(12) => Gain3_add_temp_1_n_141,
      PCIN(11) => Gain3_add_temp_1_n_142,
      PCIN(10) => Gain3_add_temp_1_n_143,
      PCIN(9) => Gain3_add_temp_1_n_144,
      PCIN(8) => Gain3_add_temp_1_n_145,
      PCIN(7) => Gain3_add_temp_1_n_146,
      PCIN(6) => Gain3_add_temp_1_n_147,
      PCIN(5) => Gain3_add_temp_1_n_148,
      PCIN(4) => Gain3_add_temp_1_n_149,
      PCIN(3) => Gain3_add_temp_1_n_150,
      PCIN(2) => Gain3_add_temp_1_n_151,
      PCIN(1) => Gain3_add_temp_1_n_152,
      PCIN(0) => Gain3_add_temp_1_n_153,
      PCOUT(47 downto 0) => NLW_Gain3_add_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain3_add_temp_2_UNDERFLOW_UNCONNECTED
    );
Gain3_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[0]\(15),
      A(28) => \Unit_Delay2_out1_reg[0]\(15),
      A(27) => \Unit_Delay2_out1_reg[0]\(15),
      A(26) => \Unit_Delay2_out1_reg[0]\(15),
      A(25) => \Unit_Delay2_out1_reg[0]\(15),
      A(24) => \Unit_Delay2_out1_reg[0]\(15),
      A(23) => \Unit_Delay2_out1_reg[0]\(15),
      A(22) => \Unit_Delay2_out1_reg[0]\(15),
      A(21) => \Unit_Delay2_out1_reg[0]\(15),
      A(20) => \Unit_Delay2_out1_reg[0]\(15),
      A(19) => \Unit_Delay2_out1_reg[0]\(15),
      A(18) => \Unit_Delay2_out1_reg[0]\(15),
      A(17) => \Unit_Delay2_out1_reg[0]\(15),
      A(16) => \Unit_Delay2_out1_reg[0]\(15),
      A(15 downto 0) => \Unit_Delay2_out1_reg[0]\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain3_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111101011101101001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain3_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain3_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain3_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain3_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain3_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_Gain3_mul_temp_P_UNCONNECTED(47 downto 31),
      P(30) => Gain3_mul_temp_n_75,
      P(29) => Gain3_mul_temp_n_76,
      P(28 downto 0) => \Gain3_mul_temp__0\(28 downto 0),
      PATTERNBDETECT => NLW_Gain3_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain3_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain3_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain3_mul_temp_UNDERFLOW_UNCONNECTED
    );
Gain5_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29) => Sum3_out1(15),
      A(28) => Sum3_out1(15),
      A(27) => Sum3_out1(15),
      A(26) => Sum3_out1(15),
      A(25) => Sum3_out1(15),
      A(24) => Sum3_out1(15),
      A(23) => Sum3_out1(15),
      A(22) => Sum3_out1(15),
      A(21) => Sum3_out1(15),
      A(20) => Sum3_out1(15),
      A(19) => Sum3_out1(15),
      A(18) => Sum3_out1(15),
      A(17) => Sum3_out1(15),
      A(16) => Sum3_out1(15),
      A(15) => Sum3_out1(15),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain5_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000110100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain5_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain5_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain5_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain5_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain5_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 23) => NLW_Gain5_mul_temp_P_UNCONNECTED(47 downto 23),
      P(22 downto 14) => \Sum6_add_cast[0]\(8 downto 0),
      P(13) => Gain5_mul_temp_n_92,
      P(12) => Gain5_mul_temp_n_93,
      P(11) => Gain5_mul_temp_n_94,
      P(10) => Gain5_mul_temp_n_95,
      P(9) => Gain5_mul_temp_n_96,
      P(8) => Gain5_mul_temp_n_97,
      P(7) => Gain5_mul_temp_n_98,
      P(6) => Gain5_mul_temp_n_99,
      P(5) => Gain5_mul_temp_n_100,
      P(4) => Gain5_mul_temp_n_101,
      P(3) => Gain5_mul_temp_n_102,
      P(2) => Gain5_mul_temp_n_103,
      P(1) => Gain5_mul_temp_n_104,
      P(0) => Gain5_mul_temp_n_105,
      PATTERNBDETECT => NLW_Gain5_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain5_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain5_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain5_mul_temp_UNDERFLOW_UNCONNECTED
    );
Gain5_mul_temp_1: unisim.vcomponents.DSP48E1
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
      A(29) => Sum3_out1(15),
      A(28) => Sum3_out1(15),
      A(27) => Sum3_out1(15),
      A(26) => Sum3_out1(15),
      A(25) => Sum3_out1(15),
      A(24) => Sum3_out1(15),
      A(23) => Sum3_out1(15),
      A(22) => Sum3_out1(15),
      A(21) => Sum3_out1(15),
      A(20) => Sum3_out1(15),
      A(19) => Sum3_out1(15),
      A(18) => Sum3_out1(15),
      A(17) => Sum3_out1(15),
      A(16) => Sum3_out1(15),
      A(15) => Sum3_out1(15),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain5_mul_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000010010101000110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain5_mul_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain5_mul_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain5_mul_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain5_mul_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain5_mul_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_Gain5_mul_temp_1_P_UNCONNECTED(47 downto 31),
      P(30) => Gain5_mul_temp_1_n_75,
      P(29) => Gain5_mul_temp_1_n_76,
      P(28 downto 14) => \Sum6_add_cast[1]\(14 downto 0),
      P(13) => Gain5_mul_temp_1_n_92,
      P(12) => Gain5_mul_temp_1_n_93,
      P(11) => Gain5_mul_temp_1_n_94,
      P(10) => Gain5_mul_temp_1_n_95,
      P(9) => Gain5_mul_temp_1_n_96,
      P(8) => Gain5_mul_temp_1_n_97,
      P(7) => Gain5_mul_temp_1_n_98,
      P(6) => Gain5_mul_temp_1_n_99,
      P(5) => Gain5_mul_temp_1_n_100,
      P(4) => Gain5_mul_temp_1_n_101,
      P(3) => Gain5_mul_temp_1_n_102,
      P(2) => Gain5_mul_temp_1_n_103,
      P(1) => Gain5_mul_temp_1_n_104,
      P(0) => Gain5_mul_temp_1_n_105,
      PATTERNBDETECT => NLW_Gain5_mul_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain5_mul_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain5_mul_temp_1_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain5_mul_temp_1_UNDERFLOW_UNCONNECTED
    );
Gain5_mul_temp_2: unisim.vcomponents.DSP48E1
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
      A(29) => Sum3_out1(15),
      A(28) => Sum3_out1(15),
      A(27) => Sum3_out1(15),
      A(26) => Sum3_out1(15),
      A(25) => Sum3_out1(15),
      A(24) => Sum3_out1(15),
      A(23) => Sum3_out1(15),
      A(22) => Sum3_out1(15),
      A(21) => Sum3_out1(15),
      A(20) => Sum3_out1(15),
      A(19) => Sum3_out1(15),
      A(18) => Sum3_out1(15),
      A(17) => Sum3_out1(15),
      A(16) => Sum3_out1(15),
      A(15) => Sum3_out1(15),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain5_mul_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001101001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain5_mul_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain5_mul_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain5_mul_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain5_mul_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain5_mul_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_Gain5_mul_temp_2_P_UNCONNECTED(47 downto 24),
      P(23 downto 14) => \Sum6_add_cast[2]\(9 downto 0),
      P(13) => Gain5_mul_temp_2_n_92,
      P(12) => Gain5_mul_temp_2_n_93,
      P(11) => Gain5_mul_temp_2_n_94,
      P(10) => Gain5_mul_temp_2_n_95,
      P(9) => Gain5_mul_temp_2_n_96,
      P(8) => Gain5_mul_temp_2_n_97,
      P(7) => Gain5_mul_temp_2_n_98,
      P(6) => Gain5_mul_temp_2_n_99,
      P(5) => Gain5_mul_temp_2_n_100,
      P(4) => Gain5_mul_temp_2_n_101,
      P(3) => Gain5_mul_temp_2_n_102,
      P(2) => Gain5_mul_temp_2_n_103,
      P(1) => Gain5_mul_temp_2_n_104,
      P(0) => Gain5_mul_temp_2_n_105,
      PATTERNBDETECT => NLW_Gain5_mul_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain5_mul_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain5_mul_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain5_mul_temp_2_UNDERFLOW_UNCONNECTED
    );
Gain5_mul_temp_3: unisim.vcomponents.DSP48E1
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
      A(29) => Sum3_out1(15),
      A(28) => Sum3_out1(15),
      A(27) => Sum3_out1(15),
      A(26) => Sum3_out1(15),
      A(25) => Sum3_out1(15),
      A(24) => Sum3_out1(15),
      A(23) => Sum3_out1(15),
      A(22) => Sum3_out1(15),
      A(21) => Sum3_out1(15),
      A(20) => Sum3_out1(15),
      A(19) => Sum3_out1(15),
      A(18) => Sum3_out1(15),
      A(17) => Sum3_out1(15),
      A(16) => Sum3_out1(15),
      A(15) => Sum3_out1(15),
      A(14 downto 0) => A(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain5_mul_temp_3_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000101110011111011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain5_mul_temp_3_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain5_mul_temp_3_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain5_mul_temp_3_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain5_mul_temp_3_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain5_mul_temp_3_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Gain5_mul_temp_3_P_UNCONNECTED(47 downto 32),
      P(31) => Gain5_mul_temp_3_n_74,
      P(30) => Gain5_mul_temp_3_n_75,
      P(29) => Gain5_mul_temp_3_n_76,
      P(28 downto 14) => \Sum6_add_cast[3]\(14 downto 0),
      P(13) => Gain5_mul_temp_3_n_92,
      P(12) => Gain5_mul_temp_3_n_93,
      P(11) => Gain5_mul_temp_3_n_94,
      P(10) => Gain5_mul_temp_3_n_95,
      P(9) => Gain5_mul_temp_3_n_96,
      P(8) => Gain5_mul_temp_3_n_97,
      P(7) => Gain5_mul_temp_3_n_98,
      P(6) => Gain5_mul_temp_3_n_99,
      P(5) => Gain5_mul_temp_3_n_100,
      P(4) => Gain5_mul_temp_3_n_101,
      P(3) => Gain5_mul_temp_3_n_102,
      P(2) => Gain5_mul_temp_3_n_103,
      P(1) => Gain5_mul_temp_3_n_104,
      P(0) => Gain5_mul_temp_3_n_105,
      PATTERNBDETECT => NLW_Gain5_mul_temp_3_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain5_mul_temp_3_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain5_mul_temp_3_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain5_mul_temp_3_UNDERFLOW_UNCONNECTED
    );
\Gain6_1_0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Gain6_1_0__0_carry_n_0\,
      CO(2) => \Gain6_1_0__0_carry_n_1\,
      CO(1) => \Gain6_1_0__0_carry_n_2\,
      CO(0) => \Gain6_1_0__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_1_0__0_carry_i_1_n_0\,
      DI(2) => \Gain6_1_0__0_carry_i_2_n_0\,
      DI(1) => \Gain6_1_0__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \Gain6_out1[1]\(3 downto 0),
      S(3) => \Gain6_1_0__0_carry_i_4_n_0\,
      S(2) => \Gain6_1_0__0_carry_i_5_n_0\,
      S(1) => \Gain6_1_0__0_carry_i_6_n_0\,
      S(0) => \Gain6_1_0__0_carry_i_7_n_0\
    );
\Gain6_1_0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_1_0__0_carry_n_0\,
      CO(3) => \Gain6_1_0__0_carry__0_n_0\,
      CO(2) => \Gain6_1_0__0_carry__0_n_1\,
      CO(1) => \Gain6_1_0__0_carry__0_n_2\,
      CO(0) => \Gain6_1_0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_1_0__0_carry__0_i_1_n_0\,
      DI(2) => \Gain6_1_0__0_carry__0_i_2_n_0\,
      DI(1) => \Gain6_1_0__0_carry__0_i_3_n_0\,
      DI(0) => \Gain6_1_0__0_carry__0_i_4_n_0\,
      O(3 downto 0) => \Gain6_out1[1]\(7 downto 4),
      S(3) => \Gain6_1_0__0_carry__0_i_5_n_0\,
      S(2) => \Gain6_1_0__0_carry__0_i_6_n_0\,
      S(1) => \Gain6_1_0__0_carry__0_i_7_n_0\,
      S(0) => \Gain6_1_0__0_carry__0_i_8_n_0\
    );
\Gain6_1_0__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(5),
      I1 => tmp_Gain6_dotp_2_2(5),
      I2 => tmp_Gain6_dotp_1_2(6),
      I3 => tmp_Gain6_dotp_2_2(6),
      O => \Gain6_1_0__0_carry__0_i_1_n_0\
    );
\Gain6_1_0__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(4),
      I1 => tmp_Gain6_dotp_2_2(4),
      I2 => tmp_Gain6_dotp_1_2(5),
      I3 => tmp_Gain6_dotp_2_2(5),
      O => \Gain6_1_0__0_carry__0_i_2_n_0\
    );
\Gain6_1_0__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(3),
      I1 => tmp_Gain6_dotp_2_2(3),
      I2 => tmp_Gain6_dotp_1_2(4),
      I3 => tmp_Gain6_dotp_2_2(4),
      O => \Gain6_1_0__0_carry__0_i_3_n_0\
    );
\Gain6_1_0__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(2),
      I1 => tmp_Gain6_dotp_2_2(2),
      I2 => tmp_Gain6_dotp_1_2(3),
      I3 => tmp_Gain6_dotp_2_2(3),
      O => \Gain6_1_0__0_carry__0_i_4_n_0\
    );
\Gain6_1_0__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(5),
      I1 => tmp_Gain6_dotp_1_2(5),
      I2 => tmp_Gain6_dotp_2_2(7),
      I3 => tmp_Gain6_dotp_1_2(7),
      I4 => tmp_Gain6_dotp_2_2(6),
      I5 => tmp_Gain6_dotp_1_2(6),
      O => \Gain6_1_0__0_carry__0_i_5_n_0\
    );
\Gain6_1_0__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(4),
      I1 => tmp_Gain6_dotp_1_2(4),
      I2 => tmp_Gain6_dotp_2_2(6),
      I3 => tmp_Gain6_dotp_1_2(6),
      I4 => tmp_Gain6_dotp_2_2(5),
      I5 => tmp_Gain6_dotp_1_2(5),
      O => \Gain6_1_0__0_carry__0_i_6_n_0\
    );
\Gain6_1_0__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(3),
      I1 => tmp_Gain6_dotp_1_2(3),
      I2 => tmp_Gain6_dotp_2_2(5),
      I3 => tmp_Gain6_dotp_1_2(5),
      I4 => tmp_Gain6_dotp_2_2(4),
      I5 => tmp_Gain6_dotp_1_2(4),
      O => \Gain6_1_0__0_carry__0_i_7_n_0\
    );
\Gain6_1_0__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(2),
      I1 => tmp_Gain6_dotp_1_2(2),
      I2 => tmp_Gain6_dotp_2_2(4),
      I3 => tmp_Gain6_dotp_1_2(4),
      I4 => tmp_Gain6_dotp_2_2(3),
      I5 => tmp_Gain6_dotp_1_2(3),
      O => \Gain6_1_0__0_carry__0_i_8_n_0\
    );
\Gain6_1_0__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_1_0__0_carry__0_n_0\,
      CO(3) => \Gain6_1_0__0_carry__1_n_0\,
      CO(2) => \Gain6_1_0__0_carry__1_n_1\,
      CO(1) => \Gain6_1_0__0_carry__1_n_2\,
      CO(0) => \Gain6_1_0__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_1_0__0_carry__1_i_1_n_0\,
      DI(2) => \Gain6_1_0__0_carry__1_i_2_n_0\,
      DI(1) => \Gain6_1_0__0_carry__1_i_3_n_0\,
      DI(0) => \Gain6_1_0__0_carry__1_i_4_n_0\,
      O(3 downto 0) => \Gain6_out1[1]\(11 downto 8),
      S(3) => \Gain6_1_0__0_carry__1_i_5_n_0\,
      S(2) => \Gain6_1_0__0_carry__1_i_6_n_0\,
      S(1) => \Gain6_1_0__0_carry__1_i_7_n_0\,
      S(0) => \Gain6_1_0__0_carry__1_i_8_n_0\
    );
\Gain6_1_0__0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(9),
      I1 => tmp_Gain6_dotp_2_2(9),
      I2 => tmp_Gain6_dotp_1_2(10),
      I3 => tmp_Gain6_dotp_2_2(10),
      O => \Gain6_1_0__0_carry__1_i_1_n_0\
    );
\Gain6_1_0__0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(8),
      I1 => tmp_Gain6_dotp_2_2(8),
      I2 => tmp_Gain6_dotp_1_2(9),
      I3 => tmp_Gain6_dotp_2_2(9),
      O => \Gain6_1_0__0_carry__1_i_2_n_0\
    );
\Gain6_1_0__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(7),
      I1 => tmp_Gain6_dotp_2_2(7),
      I2 => tmp_Gain6_dotp_1_2(8),
      I3 => tmp_Gain6_dotp_2_2(8),
      O => \Gain6_1_0__0_carry__1_i_3_n_0\
    );
\Gain6_1_0__0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(6),
      I1 => tmp_Gain6_dotp_2_2(6),
      I2 => tmp_Gain6_dotp_1_2(7),
      I3 => tmp_Gain6_dotp_2_2(7),
      O => \Gain6_1_0__0_carry__1_i_4_n_0\
    );
\Gain6_1_0__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(9),
      I1 => tmp_Gain6_dotp_1_2(9),
      I2 => tmp_Gain6_dotp_2_2(11),
      I3 => tmp_Gain6_dotp_1_2(11),
      I4 => tmp_Gain6_dotp_2_2(10),
      I5 => tmp_Gain6_dotp_1_2(10),
      O => \Gain6_1_0__0_carry__1_i_5_n_0\
    );
\Gain6_1_0__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(8),
      I1 => tmp_Gain6_dotp_1_2(8),
      I2 => tmp_Gain6_dotp_2_2(10),
      I3 => tmp_Gain6_dotp_1_2(10),
      I4 => tmp_Gain6_dotp_2_2(9),
      I5 => tmp_Gain6_dotp_1_2(9),
      O => \Gain6_1_0__0_carry__1_i_6_n_0\
    );
\Gain6_1_0__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(7),
      I1 => tmp_Gain6_dotp_1_2(7),
      I2 => tmp_Gain6_dotp_2_2(9),
      I3 => tmp_Gain6_dotp_1_2(9),
      I4 => tmp_Gain6_dotp_2_2(8),
      I5 => tmp_Gain6_dotp_1_2(8),
      O => \Gain6_1_0__0_carry__1_i_7_n_0\
    );
\Gain6_1_0__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(6),
      I1 => tmp_Gain6_dotp_1_2(6),
      I2 => tmp_Gain6_dotp_2_2(8),
      I3 => tmp_Gain6_dotp_1_2(8),
      I4 => tmp_Gain6_dotp_2_2(7),
      I5 => tmp_Gain6_dotp_1_2(7),
      O => \Gain6_1_0__0_carry__1_i_8_n_0\
    );
\Gain6_1_0__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_1_0__0_carry__1_n_0\,
      CO(3) => \NLW_Gain6_1_0__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Gain6_1_0__0_carry__2_n_1\,
      CO(1) => \Gain6_1_0__0_carry__2_n_2\,
      CO(0) => \Gain6_1_0__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => tmp_Gain6_dotp_1_2(13 downto 12),
      DI(0) => \Gain6_1_0__0_carry__2_i_1_n_0\,
      O(3 downto 0) => \Gain6_out1[1]\(15 downto 12),
      S(3) => \Gain6_1_0__0_carry__2_i_2_n_0\,
      S(2) => \Gain6_1_0__0_carry__2_i_3_n_0\,
      S(1) => \Gain6_1_0__0_carry__2_i_4_n_0\,
      S(0) => \Gain6_1_0__0_carry__2_i_5_n_0\
    );
\Gain6_1_0__0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD4"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(11),
      I1 => tmp_Gain6_dotp_1_2(11),
      I2 => tmp_Gain6_dotp_1_2(10),
      I3 => tmp_Gain6_dotp_2_2(10),
      O => \Gain6_1_0__0_carry__2_i_1_n_0\
    );
\Gain6_1_0__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(14),
      I1 => tmp_Gain6_dotp_1_2(15),
      O => \Gain6_1_0__0_carry__2_i_2_n_0\
    );
\Gain6_1_0__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(13),
      I1 => tmp_Gain6_dotp_1_2(14),
      O => \Gain6_1_0__0_carry__2_i_3_n_0\
    );
\Gain6_1_0__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(12),
      I1 => tmp_Gain6_dotp_1_2(13),
      O => \Gain6_1_0__0_carry__2_i_4_n_0\
    );
\Gain6_1_0__0_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_2(10),
      I1 => tmp_Gain6_dotp_1_2(10),
      I2 => tmp_Gain6_dotp_1_2(11),
      I3 => tmp_Gain6_dotp_2_2(11),
      I4 => tmp_Gain6_dotp_1_2(12),
      O => \Gain6_1_0__0_carry__2_i_5_n_0\
    );
\Gain6_1_0__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(2),
      I1 => tmp_Gain6_dotp_2_2(2),
      I2 => \Unit_Delay2_out1_reg[3]\(15),
      O => \Gain6_1_0__0_carry_i_1_n_0\
    );
\Gain6_1_0__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[3]\(15),
      I1 => tmp_Gain6_dotp_2_2(2),
      I2 => tmp_Gain6_dotp_1_2(2),
      O => \Gain6_1_0__0_carry_i_2_n_0\
    );
\Gain6_1_0__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(0),
      I1 => tmp_Gain6_dotp_2_2(0),
      I2 => \Unit_Delay2_out1_reg[3]\(13),
      O => \Gain6_1_0__0_carry_i_3_n_0\
    );
\Gain6_1_0__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693C3C96"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[3]\(15),
      I1 => tmp_Gain6_dotp_2_2(3),
      I2 => tmp_Gain6_dotp_1_2(3),
      I3 => tmp_Gain6_dotp_2_2(2),
      I4 => tmp_Gain6_dotp_1_2(2),
      O => \Gain6_1_0__0_carry_i_4_n_0\
    );
\Gain6_1_0__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[3]\(15),
      I1 => tmp_Gain6_dotp_2_2(2),
      I2 => tmp_Gain6_dotp_1_2(2),
      I3 => \Unit_Delay2_out1_reg[3]\(14),
      I4 => tmp_Gain6_dotp_2_2(1),
      I5 => tmp_Gain6_dotp_1_2(1),
      O => \Gain6_1_0__0_carry_i_5_n_0\
    );
\Gain6_1_0__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Gain6_1_0__0_carry_i_3_n_0\,
      I1 => tmp_Gain6_dotp_2_2(1),
      I2 => tmp_Gain6_dotp_1_2(1),
      I3 => \Unit_Delay2_out1_reg[3]\(14),
      O => \Gain6_1_0__0_carry_i_6_n_0\
    );
\Gain6_1_0__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_2(0),
      I1 => tmp_Gain6_dotp_2_2(0),
      I2 => \Unit_Delay2_out1_reg[3]\(13),
      O => \Gain6_1_0__0_carry_i_7_n_0\
    );
Gain6_2_0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain6_2_0_carry_n_0,
      CO(2) => Gain6_2_0_carry_n_1,
      CO(1) => Gain6_2_0_carry_n_2,
      CO(0) => Gain6_2_0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain6_dotp_3_1(3 downto 0),
      O(3 downto 0) => \Gain6_out1[2]\(3 downto 0),
      S(3) => Gain6_2_0_carry_i_1_n_0,
      S(2) => Gain6_2_0_carry_i_2_n_0,
      S(1) => Gain6_2_0_carry_i_3_n_0,
      S(0) => Gain6_2_0_carry_i_4_n_0
    );
\Gain6_2_0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain6_2_0_carry_n_0,
      CO(3) => \Gain6_2_0_carry__0_n_0\,
      CO(2) => \Gain6_2_0_carry__0_n_1\,
      CO(1) => \Gain6_2_0_carry__0_n_2\,
      CO(0) => \Gain6_2_0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain6_dotp_3_1(7 downto 4),
      O(3 downto 0) => \Gain6_out1[2]\(7 downto 4),
      S(3) => \Gain6_2_0_carry__0_i_1_n_0\,
      S(2) => \Gain6_2_0_carry__0_i_2_n_0\,
      S(1) => \Gain6_2_0_carry__0_i_3_n_0\,
      S(0) => \Gain6_2_0_carry__0_i_4_n_0\
    );
\Gain6_2_0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(7),
      I1 => tmp_Gain6_dotp_2_1(7),
      O => \Gain6_2_0_carry__0_i_1_n_0\
    );
\Gain6_2_0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(6),
      I1 => tmp_Gain6_dotp_2_1(6),
      O => \Gain6_2_0_carry__0_i_2_n_0\
    );
\Gain6_2_0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(5),
      I1 => tmp_Gain6_dotp_2_1(5),
      O => \Gain6_2_0_carry__0_i_3_n_0\
    );
\Gain6_2_0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(4),
      I1 => tmp_Gain6_dotp_2_1(4),
      O => \Gain6_2_0_carry__0_i_4_n_0\
    );
\Gain6_2_0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_2_0_carry__0_n_0\,
      CO(3) => \Gain6_2_0_carry__1_n_0\,
      CO(2) => \Gain6_2_0_carry__1_n_1\,
      CO(1) => \Gain6_2_0_carry__1_n_2\,
      CO(0) => \Gain6_2_0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_Gain6_dotp_2_1(10),
      DI(2) => \Gain6_2_0_carry__1_i_1_n_0\,
      DI(1 downto 0) => tmp_Gain6_dotp_3_1(9 downto 8),
      O(3 downto 0) => \Gain6_out1[2]\(11 downto 8),
      S(3) => \Gain6_2_0_carry__1_i_2_n_0\,
      S(2) => \Gain6_2_0_carry__1_i_3_n_0\,
      S(1) => \Gain6_2_0_carry__1_i_4_n_0\,
      S(0) => \Gain6_2_0_carry__1_i_5_n_0\
    );
\Gain6_2_0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(10),
      O => \Gain6_2_0_carry__1_i_1_n_0\
    );
\Gain6_2_0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(10),
      I1 => tmp_Gain6_dotp_2_1(11),
      O => \Gain6_2_0_carry__1_i_2_n_0\
    );
\Gain6_2_0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(10),
      I1 => tmp_Gain6_dotp_3_1(10),
      O => \Gain6_2_0_carry__1_i_3_n_0\
    );
\Gain6_2_0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(9),
      I1 => tmp_Gain6_dotp_2_1(9),
      O => \Gain6_2_0_carry__1_i_4_n_0\
    );
\Gain6_2_0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(8),
      I1 => tmp_Gain6_dotp_2_1(8),
      O => \Gain6_2_0_carry__1_i_5_n_0\
    );
\Gain6_2_0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_2_0_carry__1_n_0\,
      CO(3) => \NLW_Gain6_2_0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Gain6_2_0_carry__2_n_1\,
      CO(1) => \Gain6_2_0_carry__2_n_2\,
      CO(0) => \Gain6_2_0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_Gain6_dotp_2_1(13 downto 11),
      O(3 downto 0) => \Gain6_out1[2]\(15 downto 12),
      S(3) => \Gain6_2_0_carry__2_i_1_n_0\,
      S(2) => \Gain6_2_0_carry__2_i_2_n_0\,
      S(1) => \Gain6_2_0_carry__2_i_3_n_0\,
      S(0) => \Gain6_2_0_carry__2_i_4_n_0\
    );
\Gain6_2_0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(15),
      I1 => tmp_Gain6_dotp_2_1(14),
      O => \Gain6_2_0_carry__2_i_1_n_0\
    );
\Gain6_2_0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(13),
      I1 => tmp_Gain6_dotp_2_1(14),
      O => \Gain6_2_0_carry__2_i_2_n_0\
    );
\Gain6_2_0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(12),
      I1 => tmp_Gain6_dotp_2_1(13),
      O => \Gain6_2_0_carry__2_i_3_n_0\
    );
\Gain6_2_0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain6_dotp_2_1(11),
      I1 => tmp_Gain6_dotp_2_1(12),
      O => \Gain6_2_0_carry__2_i_4_n_0\
    );
Gain6_2_0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(3),
      I1 => tmp_Gain6_dotp_2_1(3),
      O => Gain6_2_0_carry_i_1_n_0
    );
Gain6_2_0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(2),
      I1 => tmp_Gain6_dotp_2_1(2),
      O => Gain6_2_0_carry_i_2_n_0
    );
Gain6_2_0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(1),
      I1 => tmp_Gain6_dotp_2_1(1),
      O => Gain6_2_0_carry_i_3_n_0
    );
Gain6_2_0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain6_dotp_3_1(0),
      I1 => tmp_Gain6_dotp_2_1(0),
      O => Gain6_2_0_carry_i_4_n_0
    );
\Gain6_3_0__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Gain6_3_0__1_carry_n_0\,
      CO(2) => \Gain6_3_0__1_carry_n_1\,
      CO(1) => \Gain6_3_0__1_carry_n_2\,
      CO(0) => \Gain6_3_0__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_3_0__1_carry_i_1_n_0\,
      DI(2) => \Gain6_3_0__1_carry_i_2_n_0\,
      DI(1) => \Gain6_3_0__1_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \Gain6_out1[3]\(3 downto 0),
      S(3) => \Gain6_3_0__1_carry_i_4_n_0\,
      S(2) => \Gain6_3_0__1_carry_i_5_n_0\,
      S(1) => \Gain6_3_0__1_carry_i_6_n_0\,
      S(0) => \Gain6_3_0__1_carry_i_7_n_0\
    );
\Gain6_3_0__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_3_0__1_carry_n_0\,
      CO(3) => \Gain6_3_0__1_carry__0_n_0\,
      CO(2) => \Gain6_3_0__1_carry__0_n_1\,
      CO(1) => \Gain6_3_0__1_carry__0_n_2\,
      CO(0) => \Gain6_3_0__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_3_0__1_carry__0_i_1_n_0\,
      DI(2) => \Gain6_3_0__1_carry__0_i_2_n_0\,
      DI(1) => \Gain6_3_0__1_carry__0_i_3_n_0\,
      DI(0) => \Gain6_3_0__1_carry__0_i_4_n_0\,
      O(3 downto 0) => \Gain6_out1[3]\(7 downto 4),
      S(3) => \Gain6_3_0__1_carry__0_i_5_n_0\,
      S(2) => \Gain6_3_0__1_carry__0_i_6_n_0\,
      S(1) => \Gain6_3_0__1_carry__0_i_7_n_0\,
      S(0) => \Gain6_3_0__1_carry__0_i_8_n_0\
    );
\Gain6_3_0__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_85,
      I1 => tmp_Gain6_dotp_2(6),
      I2 => tmp_Gain6_dotp_3(6),
      O => \Gain6_3_0__1_carry__0_i_1_n_0\
    );
\Gain6_3_0__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_86,
      I1 => tmp_Gain6_dotp_2(5),
      I2 => tmp_Gain6_dotp_3(5),
      O => \Gain6_3_0__1_carry__0_i_2_n_0\
    );
\Gain6_3_0__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_87,
      I1 => tmp_Gain6_dotp_2(4),
      I2 => tmp_Gain6_dotp_3(4),
      O => \Gain6_3_0__1_carry__0_i_3_n_0\
    );
\Gain6_3_0__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_88,
      I1 => tmp_Gain6_dotp_2(3),
      I2 => tmp_Gain6_dotp_3(3),
      O => \Gain6_3_0__1_carry__0_i_4_n_0\
    );
\Gain6_3_0__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_84,
      I1 => tmp_Gain6_dotp_2(7),
      I2 => tmp_Gain6_dotp_3(7),
      I3 => \Gain6_3_0__1_carry__0_i_1_n_0\,
      O => \Gain6_3_0__1_carry__0_i_5_n_0\
    );
\Gain6_3_0__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_85,
      I1 => tmp_Gain6_dotp_2(6),
      I2 => tmp_Gain6_dotp_3(6),
      I3 => \Gain6_3_0__1_carry__0_i_2_n_0\,
      O => \Gain6_3_0__1_carry__0_i_6_n_0\
    );
\Gain6_3_0__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_86,
      I1 => tmp_Gain6_dotp_2(5),
      I2 => tmp_Gain6_dotp_3(5),
      I3 => \Gain6_3_0__1_carry__0_i_3_n_0\,
      O => \Gain6_3_0__1_carry__0_i_7_n_0\
    );
\Gain6_3_0__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_87,
      I1 => tmp_Gain6_dotp_2(4),
      I2 => tmp_Gain6_dotp_3(4),
      I3 => \Gain6_3_0__1_carry__0_i_4_n_0\,
      O => \Gain6_3_0__1_carry__0_i_8_n_0\
    );
\Gain6_3_0__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_3_0__1_carry__0_n_0\,
      CO(3) => \Gain6_3_0__1_carry__1_n_0\,
      CO(2) => \Gain6_3_0__1_carry__1_n_1\,
      CO(1) => \Gain6_3_0__1_carry__1_n_2\,
      CO(0) => \Gain6_3_0__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_3_0__1_carry__1_i_1_n_0\,
      DI(2) => \Gain6_3_0__1_carry__1_i_2_n_0\,
      DI(1) => \Gain6_3_0__1_carry__1_i_3_n_0\,
      DI(0) => \Gain6_3_0__1_carry__1_i_4_n_0\,
      O(3 downto 0) => \Gain6_out1[3]\(11 downto 8),
      S(3) => \Gain6_3_0__1_carry__1_i_5_n_0\,
      S(2) => \Gain6_3_0__1_carry__1_i_6_n_0\,
      S(1) => \Gain6_3_0__1_carry__1_i_7_n_0\,
      S(0) => \Gain6_3_0__1_carry__1_i_8_n_0\
    );
\Gain6_3_0__1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => tmp_Gain6_dotp_10,
      I1 => tmp_Gain6_dotp_2(9),
      I2 => tmp_Gain6_dotp_2(10),
      I3 => tmp_Gain6_dotp_3(10),
      O => \Gain6_3_0__1_carry__1_i_1_n_0\
    );
\Gain6_3_0__1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(9),
      I1 => tmp_Gain6_dotp_10,
      I2 => tmp_Gain6_dotp_2(9),
      O => \Gain6_3_0__1_carry__1_i_2_n_0\
    );
\Gain6_3_0__1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tmp_Gain6_dotp_10,
      I1 => tmp_Gain6_dotp_2(9),
      I2 => tmp_Gain6_dotp_3(9),
      O => \Gain6_3_0__1_carry__1_i_3_n_0\
    );
\Gain6_3_0__1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_84,
      I1 => tmp_Gain6_dotp_2(7),
      I2 => tmp_Gain6_dotp_3(7),
      O => \Gain6_3_0__1_carry__1_i_4_n_0\
    );
\Gain6_3_0__1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B44B0FF00FF04BB4"
    )
        port map (
      I0 => tmp_Gain6_dotp_2(9),
      I1 => tmp_Gain6_dotp_10,
      I2 => tmp_Gain6_dotp_3(11),
      I3 => tmp_Gain6_dotp_2(11),
      I4 => tmp_Gain6_dotp_3(10),
      I5 => tmp_Gain6_dotp_2(10),
      O => \Gain6_3_0__1_carry__1_i_5_n_0\
    );
\Gain6_3_0__1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C69963C"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(9),
      I1 => tmp_Gain6_dotp_3(10),
      I2 => tmp_Gain6_dotp_2(10),
      I3 => tmp_Gain6_dotp_2(9),
      I4 => tmp_Gain6_dotp_10,
      O => \Gain6_3_0__1_carry__1_i_6_n_0\
    );
\Gain6_3_0__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(9),
      I1 => tmp_Gain6_dotp_2(9),
      I2 => tmp_Gain6_dotp_10,
      I3 => tmp_Gain6_dotp_3(8),
      I4 => tmp_Gain6_dotp_2(8),
      I5 => mul_Gain6_dotp_1_mul_temp_n_83,
      O => \Gain6_3_0__1_carry__1_i_7_n_0\
    );
\Gain6_3_0__1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \Gain6_3_0__1_carry__1_i_4_n_0\,
      I1 => tmp_Gain6_dotp_2(8),
      I2 => mul_Gain6_dotp_1_mul_temp_n_83,
      I3 => tmp_Gain6_dotp_3(8),
      O => \Gain6_3_0__1_carry__1_i_8_n_0\
    );
\Gain6_3_0__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain6_3_0__1_carry__1_n_0\,
      CO(3) => \NLW_Gain6_3_0__1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Gain6_3_0__1_carry__2_n_1\,
      CO(1) => \Gain6_3_0__1_carry__2_n_2\,
      CO(0) => \Gain6_3_0__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Gain6_3_0__1_carry__2_i_1_n_0\,
      DI(1) => \Gain6_3_0__1_carry__2_i_2_n_0\,
      DI(0) => \Gain6_3_0__1_carry__2_i_3_n_0\,
      O(3 downto 0) => \Gain6_out1[3]\(15 downto 12),
      S(3) => \Gain6_3_0__1_carry__2_i_4_n_0\,
      S(2) => \Gain6_3_0__1_carry__2_i_5_n_0\,
      S(1) => \Gain6_3_0__1_carry__2_i_6_n_0\,
      S(0) => \Gain6_3_0__1_carry__2_i_7_n_0\
    );
\Gain6_3_0__1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_2(12),
      I1 => tmp_Gain6_dotp_3(12),
      I2 => tmp_Gain6_dotp_2(13),
      I3 => tmp_Gain6_dotp_3(13),
      O => \Gain6_3_0__1_carry__2_i_1_n_0\
    );
\Gain6_3_0__1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_2(11),
      I1 => tmp_Gain6_dotp_3(11),
      I2 => tmp_Gain6_dotp_2(12),
      I3 => tmp_Gain6_dotp_3(12),
      O => \Gain6_3_0__1_carry__2_i_2_n_0\
    );
\Gain6_3_0__1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => tmp_Gain6_dotp_2(10),
      I1 => tmp_Gain6_dotp_3(10),
      I2 => tmp_Gain6_dotp_2(11),
      I3 => tmp_Gain6_dotp_3(11),
      O => \Gain6_3_0__1_carry__2_i_3_n_0\
    );
\Gain6_3_0__1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(13),
      I1 => tmp_Gain6_dotp_2(13),
      I2 => tmp_Gain6_dotp_3(15),
      I3 => tmp_Gain6_dotp_2(15),
      I4 => tmp_Gain6_dotp_3(14),
      I5 => tmp_Gain6_dotp_2(14),
      O => \Gain6_3_0__1_carry__2_i_4_n_0\
    );
\Gain6_3_0__1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(12),
      I1 => tmp_Gain6_dotp_2(12),
      I2 => tmp_Gain6_dotp_3(14),
      I3 => tmp_Gain6_dotp_2(14),
      I4 => tmp_Gain6_dotp_3(13),
      I5 => tmp_Gain6_dotp_2(13),
      O => \Gain6_3_0__1_carry__2_i_5_n_0\
    );
\Gain6_3_0__1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(11),
      I1 => tmp_Gain6_dotp_2(11),
      I2 => tmp_Gain6_dotp_3(13),
      I3 => tmp_Gain6_dotp_2(13),
      I4 => tmp_Gain6_dotp_3(12),
      I5 => tmp_Gain6_dotp_2(12),
      O => \Gain6_3_0__1_carry__2_i_6_n_0\
    );
\Gain6_3_0__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_3(10),
      I1 => tmp_Gain6_dotp_2(10),
      I2 => tmp_Gain6_dotp_3(12),
      I3 => tmp_Gain6_dotp_2(12),
      I4 => tmp_Gain6_dotp_3(11),
      I5 => tmp_Gain6_dotp_2(11),
      O => \Gain6_3_0__1_carry__2_i_7_n_0\
    );
\Gain6_3_0__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_89,
      I1 => tmp_Gain6_dotp_2(2),
      I2 => tmp_Gain6_dotp_3(2),
      O => \Gain6_3_0__1_carry_i_1_n_0\
    );
\Gain6_3_0__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_90,
      I1 => tmp_Gain6_dotp_2(1),
      I2 => tmp_Gain6_dotp_3(1),
      O => \Gain6_3_0__1_carry_i_2_n_0\
    );
\Gain6_3_0__1_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_91,
      I1 => tmp_Gain6_dotp_2(0),
      I2 => tmp_Gain6_dotp_3(0),
      O => \Gain6_3_0__1_carry_i_3_n_0\
    );
\Gain6_3_0__1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_88,
      I1 => tmp_Gain6_dotp_2(3),
      I2 => tmp_Gain6_dotp_3(3),
      I3 => \Gain6_3_0__1_carry_i_1_n_0\,
      O => \Gain6_3_0__1_carry_i_4_n_0\
    );
\Gain6_3_0__1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_89,
      I1 => tmp_Gain6_dotp_2(2),
      I2 => tmp_Gain6_dotp_3(2),
      I3 => \Gain6_3_0__1_carry_i_2_n_0\,
      O => \Gain6_3_0__1_carry_i_5_n_0\
    );
\Gain6_3_0__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_90,
      I1 => tmp_Gain6_dotp_2(1),
      I2 => tmp_Gain6_dotp_3(1),
      I3 => \Gain6_3_0__1_carry_i_3_n_0\,
      O => \Gain6_3_0__1_carry_i_6_n_0\
    );
\Gain6_3_0__1_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => mul_Gain6_dotp_1_mul_temp_n_91,
      I1 => tmp_Gain6_dotp_2(0),
      I2 => tmp_Gain6_dotp_3(0),
      O => \Gain6_3_0__1_carry_i_7_n_0\
    );
Gain8_0_0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain8_0_0_carry_n_0,
      CO(2) => Gain8_0_0_carry_n_1,
      CO(1) => Gain8_0_0_carry_n_2,
      CO(0) => Gain8_0_0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => tmp_Gain8_dotp_0_3(2 downto 1),
      DI(1) => Gain8_0_0_carry_i_1_n_0,
      DI(0) => tmp_Gain8_dotp_0_3(0),
      O(3 downto 0) => \Gain8_out1[0]\(3 downto 0),
      S(3) => Gain8_0_0_carry_i_2_n_0,
      S(2) => Gain8_0_0_carry_i_3_n_0,
      S(1) => Gain8_0_0_carry_i_4_n_0,
      S(0) => Gain8_0_0_carry_i_5_n_0
    );
\Gain8_0_0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain8_0_0_carry_n_0,
      CO(3) => \Gain8_0_0_carry__0_n_0\,
      CO(2) => \Gain8_0_0_carry__0_n_1\,
      CO(1) => \Gain8_0_0_carry__0_n_2\,
      CO(0) => \Gain8_0_0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_0_3(6 downto 3),
      O(3 downto 0) => \Gain8_out1[0]\(7 downto 4),
      S(3) => \Gain8_0_0_carry__0_i_1_n_0\,
      S(2) => \Gain8_0_0_carry__0_i_2_n_0\,
      S(1) => \Gain8_0_0_carry__0_i_3_n_0\,
      S(0) => \Gain8_0_0_carry__0_i_4_n_0\
    );
\Gain8_0_0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(6),
      I1 => tmp_Gain8_dotp_0_3(7),
      O => \Gain8_0_0_carry__0_i_1_n_0\
    );
\Gain8_0_0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(5),
      I1 => tmp_Gain8_dotp_0_3(6),
      O => \Gain8_0_0_carry__0_i_2_n_0\
    );
\Gain8_0_0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(4),
      I1 => tmp_Gain8_dotp_0_3(5),
      O => \Gain8_0_0_carry__0_i_3_n_0\
    );
\Gain8_0_0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(3),
      I1 => tmp_Gain8_dotp_0_3(4),
      O => \Gain8_0_0_carry__0_i_4_n_0\
    );
\Gain8_0_0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_0_0_carry__0_n_0\,
      CO(3) => \Gain8_0_0_carry__1_n_0\,
      CO(2) => \NLW_Gain8_0_0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \Gain8_0_0_carry__1_n_2\,
      CO(0) => \Gain8_0_0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_Gain8_dotp_0_3(9 downto 7),
      O(3) => \NLW_Gain8_0_0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \Gain8_out1[0]\(10 downto 8),
      S(3) => '1',
      S(2) => \Gain8_0_0_carry__1_i_1_n_0\,
      S(1) => \Gain8_0_0_carry__1_i_2_n_0\,
      S(0) => \Gain8_0_0_carry__1_i_3_n_0\
    );
\Gain8_0_0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(9),
      I1 => tmp_Gain8_dotp_0_3(10),
      O => \Gain8_0_0_carry__1_i_1_n_0\
    );
\Gain8_0_0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(8),
      I1 => tmp_Gain8_dotp_0_3(9),
      O => \Gain8_0_0_carry__1_i_2_n_0\
    );
\Gain8_0_0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(7),
      I1 => tmp_Gain8_dotp_0_3(8),
      O => \Gain8_0_0_carry__1_i_3_n_0\
    );
Gain8_0_0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(1),
      O => Gain8_0_0_carry_i_1_n_0
    );
Gain8_0_0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(2),
      I1 => tmp_Gain8_dotp_0_3(3),
      O => Gain8_0_0_carry_i_2_n_0
    );
Gain8_0_0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(1),
      I1 => tmp_Gain8_dotp_0_3(2),
      O => Gain8_0_0_carry_i_3_n_0
    );
Gain8_0_0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_3(1),
      I1 => Sum_sub_temp(14),
      I2 => Sum_sub_temp(12),
      I3 => Sum_sub_temp(10),
      I4 => Sum_sub_temp(11),
      I5 => Sum_sub_temp(13),
      O => Gain8_0_0_carry_i_4_n_0
    );
Gain8_0_0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => Sum_sub_temp(14),
      I1 => Sum_sub_temp(12),
      I2 => Sum_sub_temp(10),
      I3 => Sum_sub_temp(11),
      I4 => Sum_sub_temp(13),
      I5 => tmp_Gain8_dotp_0_3(0),
      O => Gain8_0_0_carry_i_5_n_0
    );
Gain8_1_0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain8_1_0_carry_n_0,
      CO(2) => Gain8_1_0_carry_n_1,
      CO(1) => Gain8_1_0_carry_n_2,
      CO(0) => Gain8_1_0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_1_2(3 downto 0),
      O(3 downto 0) => \Gain8_out1[1]\(3 downto 0),
      S(3) => Gain8_1_0_carry_i_1_n_0,
      S(2) => Gain8_1_0_carry_i_2_n_0,
      S(1) => Gain8_1_0_carry_i_3_n_0,
      S(0) => Gain8_1_0_carry_i_4_n_0
    );
\Gain8_1_0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain8_1_0_carry_n_0,
      CO(3) => \Gain8_1_0_carry__0_n_0\,
      CO(2) => \Gain8_1_0_carry__0_n_1\,
      CO(1) => \Gain8_1_0_carry__0_n_2\,
      CO(0) => \Gain8_1_0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_1_2(7 downto 4),
      O(3 downto 0) => \Gain8_out1[1]\(7 downto 4),
      S(3) => \Gain8_1_0_carry__0_i_1_n_0\,
      S(2) => \Gain8_1_0_carry__0_i_2_n_0\,
      S(1) => \Gain8_1_0_carry__0_i_3_n_0\,
      S(0) => \Gain8_1_0_carry__0_i_4_n_0\
    );
\Gain8_1_0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(7),
      I1 => tmp_Gain8_dotp_0_2(7),
      O => \Gain8_1_0_carry__0_i_1_n_0\
    );
\Gain8_1_0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(6),
      I1 => tmp_Gain8_dotp_0_2(6),
      O => \Gain8_1_0_carry__0_i_2_n_0\
    );
\Gain8_1_0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(5),
      I1 => tmp_Gain8_dotp_0_2(5),
      O => \Gain8_1_0_carry__0_i_3_n_0\
    );
\Gain8_1_0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(4),
      I1 => tmp_Gain8_dotp_0_2(4),
      O => \Gain8_1_0_carry__0_i_4_n_0\
    );
\Gain8_1_0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_1_0_carry__0_n_0\,
      CO(3) => \Gain8_1_0_carry__1_n_0\,
      CO(2) => \Gain8_1_0_carry__1_n_1\,
      CO(1) => \Gain8_1_0_carry__1_n_2\,
      CO(0) => \Gain8_1_0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => tmp_Gain8_dotp_0_2(10 downto 9),
      DI(1) => \Gain8_1_0_carry__1_i_1_n_0\,
      DI(0) => tmp_Gain8_dotp_1_2(8),
      O(3 downto 0) => \Gain8_out1[1]\(11 downto 8),
      S(3) => \Gain8_1_0_carry__1_i_2_n_0\,
      S(2) => \Gain8_1_0_carry__1_i_3_n_0\,
      S(1) => \Gain8_1_0_carry__1_i_4_n_0\,
      S(0) => \Gain8_1_0_carry__1_i_5_n_0\
    );
\Gain8_1_0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(9),
      O => \Gain8_1_0_carry__1_i_1_n_0\
    );
\Gain8_1_0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(10),
      I1 => tmp_Gain8_dotp_0_2(11),
      O => \Gain8_1_0_carry__1_i_2_n_0\
    );
\Gain8_1_0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(9),
      I1 => tmp_Gain8_dotp_0_2(10),
      O => \Gain8_1_0_carry__1_i_3_n_0\
    );
\Gain8_1_0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(9),
      I1 => tmp_Gain8_dotp_1_2(9),
      O => \Gain8_1_0_carry__1_i_4_n_0\
    );
\Gain8_1_0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(8),
      I1 => tmp_Gain8_dotp_0_2(8),
      O => \Gain8_1_0_carry__1_i_5_n_0\
    );
\Gain8_1_0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_1_0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_Gain8_1_0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Gain8_1_0_carry__2_n_2\,
      CO(0) => \Gain8_1_0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => tmp_Gain8_dotp_0_2(12 downto 11),
      O(3) => \NLW_Gain8_1_0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \Gain8_out1[1]\(14 downto 12),
      S(3) => '0',
      S(2) => \Gain8_1_0_carry__2_i_1_n_0\,
      S(1) => \Gain8_1_0_carry__2_i_2_n_0\,
      S(0) => \Gain8_1_0_carry__2_i_3_n_0\
    );
\Gain8_1_0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(13),
      I1 => tmp_Gain8_dotp_0_2(14),
      O => \Gain8_1_0_carry__2_i_1_n_0\
    );
\Gain8_1_0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(12),
      I1 => tmp_Gain8_dotp_0_2(13),
      O => \Gain8_1_0_carry__2_i_2_n_0\
    );
\Gain8_1_0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_0_2(11),
      I1 => tmp_Gain8_dotp_0_2(12),
      O => \Gain8_1_0_carry__2_i_3_n_0\
    );
Gain8_1_0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(3),
      I1 => tmp_Gain8_dotp_0_2(3),
      O => Gain8_1_0_carry_i_1_n_0
    );
Gain8_1_0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(2),
      I1 => tmp_Gain8_dotp_0_2(2),
      O => Gain8_1_0_carry_i_2_n_0
    );
Gain8_1_0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(1),
      I1 => tmp_Gain8_dotp_0_2(1),
      O => Gain8_1_0_carry_i_3_n_0
    );
Gain8_1_0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_2(0),
      I1 => tmp_Gain8_dotp_0_2(0),
      O => Gain8_1_0_carry_i_4_n_0
    );
Gain8_2_0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain8_2_0_carry_n_0,
      CO(2) => Gain8_2_0_carry_n_1,
      CO(1) => Gain8_2_0_carry_n_2,
      CO(0) => Gain8_2_0_carry_n_3,
      CYINIT => '0',
      DI(3) => tmp_Gain8_dotp_1_1(2),
      DI(2) => Gain8_2_0_carry_i_1_n_0,
      DI(1 downto 0) => tmp_Gain8_dotp_1_1(1 downto 0),
      O(3 downto 0) => \Gain8_out1[2]\(3 downto 0),
      S(3) => Gain8_2_0_carry_i_2_n_0,
      S(2) => Gain8_2_0_carry_i_3_n_0,
      S(1) => Gain8_2_0_carry_i_4_n_0,
      S(0) => Gain8_2_0_carry_i_5_n_0
    );
\Gain8_2_0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain8_2_0_carry_n_0,
      CO(3) => \Gain8_2_0_carry__0_n_0\,
      CO(2) => \Gain8_2_0_carry__0_n_1\,
      CO(1) => \Gain8_2_0_carry__0_n_2\,
      CO(0) => \Gain8_2_0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_1_1(6 downto 3),
      O(3 downto 0) => \Gain8_out1[2]\(7 downto 4),
      S(3) => \Gain8_2_0_carry__0_i_1_n_0\,
      S(2) => \Gain8_2_0_carry__0_i_2_n_0\,
      S(1) => \Gain8_2_0_carry__0_i_3_n_0\,
      S(0) => \Gain8_2_0_carry__0_i_4_n_0\
    );
\Gain8_2_0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(6),
      I1 => tmp_Gain8_dotp_1_1(7),
      O => \Gain8_2_0_carry__0_i_1_n_0\
    );
\Gain8_2_0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(5),
      I1 => tmp_Gain8_dotp_1_1(6),
      O => \Gain8_2_0_carry__0_i_2_n_0\
    );
\Gain8_2_0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(4),
      I1 => tmp_Gain8_dotp_1_1(5),
      O => \Gain8_2_0_carry__0_i_3_n_0\
    );
\Gain8_2_0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(3),
      I1 => tmp_Gain8_dotp_1_1(4),
      O => \Gain8_2_0_carry__0_i_4_n_0\
    );
\Gain8_2_0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_2_0_carry__0_n_0\,
      CO(3) => \Gain8_2_0_carry__1_n_0\,
      CO(2) => \NLW_Gain8_2_0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \Gain8_2_0_carry__1_n_2\,
      CO(0) => \Gain8_2_0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_Gain8_dotp_1_1(9 downto 7),
      O(3) => \NLW_Gain8_2_0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \Gain8_out1[2]\(10 downto 8),
      S(3) => '1',
      S(2) => \Gain8_2_0_carry__1_i_1_n_0\,
      S(1) => \Gain8_2_0_carry__1_i_2_n_0\,
      S(0) => \Gain8_2_0_carry__1_i_3_n_0\
    );
\Gain8_2_0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(9),
      I1 => tmp_Gain8_dotp_1_1(10),
      O => \Gain8_2_0_carry__1_i_1_n_0\
    );
\Gain8_2_0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(8),
      I1 => tmp_Gain8_dotp_1_1(9),
      O => \Gain8_2_0_carry__1_i_2_n_0\
    );
\Gain8_2_0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(7),
      I1 => tmp_Gain8_dotp_1_1(8),
      O => \Gain8_2_0_carry__1_i_3_n_0\
    );
Gain8_2_0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(61),
      I1 => \Gain2_mul_temp__3\(60),
      I2 => \Gain2_mul_temp__3\(63),
      I3 => \Gain2_mul_temp__3\(59),
      I4 => \Gain2_mul_temp__3\(62),
      O => Gain8_2_0_carry_i_1_n_0
    );
Gain8_2_0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(2),
      I1 => tmp_Gain8_dotp_1_1(3),
      O => Gain8_2_0_carry_i_2_n_0
    );
Gain8_2_0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(62),
      I1 => \Gain2_mul_temp__3\(59),
      I2 => \Gain2_mul_temp__3\(63),
      I3 => \Gain2_mul_temp__3\(60),
      I4 => \Gain2_mul_temp__3\(61),
      I5 => tmp_Gain8_dotp_1_1(2),
      O => Gain8_2_0_carry_i_3_n_0
    );
Gain8_2_0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(62),
      I1 => \Gain2_mul_temp__3\(59),
      I2 => \Gain2_mul_temp__3\(60),
      I3 => \Gain2_mul_temp__3\(63),
      I4 => \Gain2_mul_temp__3\(61),
      I5 => tmp_Gain8_dotp_1_1(1),
      O => Gain8_2_0_carry_i_4_n_0
    );
Gain8_2_0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => tmp_Gain8_dotp_1_1(0),
      I1 => \Gain2_mul_temp__3\(62),
      I2 => \Gain2_mul_temp__3\(59),
      I3 => \Gain2_mul_temp__3\(60),
      I4 => \Gain2_mul_temp__3\(63),
      I5 => \Gain2_mul_temp__3\(61),
      O => Gain8_2_0_carry_i_5_n_0
    );
Gain8_3_0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain8_3_0_carry_n_0,
      CO(2) => Gain8_3_0_carry_n_1,
      CO(1) => Gain8_3_0_carry_n_2,
      CO(0) => Gain8_3_0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_1(3 downto 0),
      O(3 downto 0) => \Gain8_out1[3]\(3 downto 0),
      S(3) => Gain8_3_0_carry_i_1_n_0,
      S(2) => Gain8_3_0_carry_i_2_n_0,
      S(1) => Gain8_3_0_carry_i_3_n_0,
      S(0) => Gain8_3_0_carry_i_4_n_0
    );
\Gain8_3_0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Gain8_3_0_carry_n_0,
      CO(3) => \Gain8_3_0_carry__0_n_0\,
      CO(2) => \Gain8_3_0_carry__0_n_1\,
      CO(1) => \Gain8_3_0_carry__0_n_2\,
      CO(0) => \Gain8_3_0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_Gain8_dotp_1(7 downto 4),
      O(3 downto 0) => \Gain8_out1[3]\(7 downto 4),
      S(3) => \Gain8_3_0_carry__0_i_1_n_0\,
      S(2) => \Gain8_3_0_carry__0_i_2_n_0\,
      S(1) => \Gain8_3_0_carry__0_i_3_n_0\,
      S(0) => \Gain8_3_0_carry__0_i_4_n_0\
    );
\Gain8_3_0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(7),
      I1 => tmp_Gain8_dotp_0(7),
      O => \Gain8_3_0_carry__0_i_1_n_0\
    );
\Gain8_3_0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(6),
      I1 => tmp_Gain8_dotp_0(6),
      O => \Gain8_3_0_carry__0_i_2_n_0\
    );
\Gain8_3_0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(5),
      I1 => tmp_Gain8_dotp_0(5),
      O => \Gain8_3_0_carry__0_i_3_n_0\
    );
\Gain8_3_0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(4),
      I1 => tmp_Gain8_dotp_0(4),
      O => \Gain8_3_0_carry__0_i_4_n_0\
    );
\Gain8_3_0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_3_0_carry__0_n_0\,
      CO(3) => \Gain8_3_0_carry__1_n_0\,
      CO(2) => \Gain8_3_0_carry__1_n_1\,
      CO(1) => \Gain8_3_0_carry__1_n_2\,
      CO(0) => \Gain8_3_0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => tmp_Gain8_dotp_1(10),
      DI(2) => \Gain8_3_0_carry__1_i_1_n_0\,
      DI(1) => tmp_Gain8_dotp_0(9),
      DI(0) => tmp_Gain8_dotp_1(8),
      O(3 downto 0) => \Gain8_out1[3]\(11 downto 8),
      S(3) => \Gain8_3_0_carry__1_i_2_n_0\,
      S(2) => \Gain8_3_0_carry__1_i_3_n_0\,
      S(1) => \Gain8_3_0_carry__1_i_4_n_0\,
      S(0) => \Gain8_3_0_carry__1_i_5_n_0\
    );
\Gain8_3_0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_Gain8_dotp_0(9),
      O => \Gain8_3_0_carry__1_i_1_n_0\
    );
\Gain8_3_0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(10),
      I1 => tmp_Gain8_dotp_1(11),
      O => \Gain8_3_0_carry__1_i_2_n_0\
    );
\Gain8_3_0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_0(9),
      I1 => tmp_Gain8_dotp_1(10),
      O => \Gain8_3_0_carry__1_i_3_n_0\
    );
\Gain8_3_0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_0(9),
      I1 => tmp_Gain8_dotp_1(9),
      O => \Gain8_3_0_carry__1_i_4_n_0\
    );
\Gain8_3_0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(8),
      I1 => tmp_Gain8_dotp_0(8),
      O => \Gain8_3_0_carry__1_i_5_n_0\
    );
\Gain8_3_0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Gain8_3_0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_Gain8_3_0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Gain8_3_0_carry__2_n_2\,
      CO(0) => \Gain8_3_0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => tmp_Gain8_dotp_1(12 downto 11),
      O(3) => \NLW_Gain8_3_0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \Gain8_out1[3]\(14 downto 12),
      S(3) => '0',
      S(2) => \Gain8_3_0_carry__2_i_1_n_0\,
      S(1) => \Gain8_3_0_carry__2_i_2_n_0\,
      S(0) => \Gain8_3_0_carry__2_i_3_n_0\
    );
\Gain8_3_0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(13),
      I1 => tmp_Gain8_dotp_1(14),
      O => \Gain8_3_0_carry__2_i_1_n_0\
    );
\Gain8_3_0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(12),
      I1 => tmp_Gain8_dotp_1(13),
      O => \Gain8_3_0_carry__2_i_2_n_0\
    );
\Gain8_3_0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(11),
      I1 => tmp_Gain8_dotp_1(12),
      O => \Gain8_3_0_carry__2_i_3_n_0\
    );
Gain8_3_0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(3),
      I1 => tmp_Gain8_dotp_0(3),
      O => Gain8_3_0_carry_i_1_n_0
    );
Gain8_3_0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(2),
      I1 => tmp_Gain8_dotp_0(2),
      O => Gain8_3_0_carry_i_2_n_0
    );
Gain8_3_0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(1),
      I1 => tmp_Gain8_dotp_0(1),
      O => Gain8_3_0_carry_i_3_n_0
    );
Gain8_3_0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_Gain8_dotp_1(0),
      I1 => tmp_Gain8_dotp_0(0),
      O => Gain8_3_0_carry_i_4_n_0
    );
Gain_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => \Gain1_mul_temp__3\(63 downto 59),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Gain_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000111101100011010",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Gain_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Gain_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Gain_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Gain_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Gain_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Gain_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Gain_mul_temp_n_74,
      P(30) => Gain_mul_temp_n_75,
      P(29) => Gain_mul_temp_n_76,
      P(28) => Gain_mul_temp_n_77,
      P(27) => Gain_mul_temp_n_78,
      P(26) => Gain_mul_temp_n_79,
      P(25) => Gain_mul_temp_n_80,
      P(24) => Gain_mul_temp_n_81,
      P(23) => Gain_mul_temp_n_82,
      P(22) => Gain_mul_temp_n_83,
      P(21) => Gain_mul_temp_n_84,
      P(20) => Gain_mul_temp_n_85,
      P(19) => Gain_mul_temp_n_86,
      P(18) => Gain_mul_temp_n_87,
      P(17) => Gain_mul_temp_n_88,
      P(16) => Gain_mul_temp_n_89,
      P(15) => Gain_mul_temp_n_90,
      P(14) => Gain_mul_temp_n_91,
      P(13) => Gain_mul_temp_n_92,
      P(12) => Gain_mul_temp_n_93,
      P(11) => Gain_mul_temp_n_94,
      P(10) => Gain_mul_temp_n_95,
      P(9) => Gain_mul_temp_n_96,
      P(8) => Gain_mul_temp_n_97,
      P(7) => Gain_mul_temp_n_98,
      P(6) => Gain_mul_temp_n_99,
      P(5) => Gain_mul_temp_n_100,
      P(4) => Gain_mul_temp_n_101,
      P(3) => Gain_mul_temp_n_102,
      P(2) => Gain_mul_temp_n_103,
      P(1) => Gain_mul_temp_n_104,
      P(0) => Gain_mul_temp_n_105,
      PATTERNBDETECT => NLW_Gain_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Gain_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Gain_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Gain_mul_temp_UNDERFLOW_UNCONNECTED
    );
Gain_mul_temp_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_2_n_0,
      CO(3) => NLW_Gain_mul_temp_i_1_CO_UNCONNECTED(3),
      CO(2) => Gain_mul_temp_i_1_n_1,
      CO(1) => Gain_mul_temp_i_1_n_2,
      CO(0) => Gain_mul_temp_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Gain1_mul_temp__2_n_60\,
      DI(1) => \Gain1_mul_temp__2_n_61\,
      DI(0) => \Gain1_mul_temp__2_n_62\,
      O(3 downto 0) => \Gain1_mul_temp__3\(63 downto 60),
      S(3) => Gain_mul_temp_i_3_n_0,
      S(2) => Gain_mul_temp_i_4_n_0,
      S(1) => Gain_mul_temp_i_5_n_0,
      S(0) => Gain_mul_temp_i_6_n_0
    );
Gain_mul_temp_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_65\,
      I1 => \Gain1_mul_temp__0_n_82\,
      O => Gain_mul_temp_i_10_n_0
    );
Gain_mul_temp_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_66\,
      I1 => \Gain1_mul_temp__0_n_83\,
      O => Gain_mul_temp_i_11_n_0
    );
Gain_mul_temp_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_17_n_0,
      CO(3) => Gain_mul_temp_i_12_n_0,
      CO(2) => Gain_mul_temp_i_12_n_1,
      CO(1) => Gain_mul_temp_i_12_n_2,
      CO(0) => Gain_mul_temp_i_12_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_71\,
      DI(2) => \Gain1_mul_temp__2_n_72\,
      DI(1) => \Gain1_mul_temp__2_n_73\,
      DI(0) => \Gain1_mul_temp__2_n_74\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_18_n_0,
      S(2) => Gain_mul_temp_i_19_n_0,
      S(1) => Gain_mul_temp_i_20_n_0,
      S(0) => Gain_mul_temp_i_21_n_0
    );
Gain_mul_temp_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_67\,
      I1 => \Gain1_mul_temp__0_n_84\,
      O => Gain_mul_temp_i_13_n_0
    );
Gain_mul_temp_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_68\,
      I1 => \Gain1_mul_temp__0_n_85\,
      O => Gain_mul_temp_i_14_n_0
    );
Gain_mul_temp_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_69\,
      I1 => \Gain1_mul_temp__0_n_86\,
      O => Gain_mul_temp_i_15_n_0
    );
Gain_mul_temp_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_70\,
      I1 => \Gain1_mul_temp__0_n_87\,
      O => Gain_mul_temp_i_16_n_0
    );
Gain_mul_temp_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_22_n_0,
      CO(3) => Gain_mul_temp_i_17_n_0,
      CO(2) => Gain_mul_temp_i_17_n_1,
      CO(1) => Gain_mul_temp_i_17_n_2,
      CO(0) => Gain_mul_temp_i_17_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_75\,
      DI(2) => \Gain1_mul_temp__2_n_76\,
      DI(1) => \Gain1_mul_temp__2_n_77\,
      DI(0) => \Gain1_mul_temp__2_n_78\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_17_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_23_n_0,
      S(2) => Gain_mul_temp_i_24_n_0,
      S(1) => Gain_mul_temp_i_25_n_0,
      S(0) => Gain_mul_temp_i_26_n_0
    );
Gain_mul_temp_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_71\,
      I1 => \Gain1_mul_temp__0_n_88\,
      O => Gain_mul_temp_i_18_n_0
    );
Gain_mul_temp_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_72\,
      I1 => \Gain1_mul_temp__0_n_89\,
      O => Gain_mul_temp_i_19_n_0
    );
Gain_mul_temp_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_7_n_0,
      CO(3) => Gain_mul_temp_i_2_n_0,
      CO(2) => Gain_mul_temp_i_2_n_1,
      CO(1) => Gain_mul_temp_i_2_n_2,
      CO(0) => Gain_mul_temp_i_2_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_63\,
      DI(2) => \Gain1_mul_temp__2_n_64\,
      DI(1) => \Gain1_mul_temp__2_n_65\,
      DI(0) => \Gain1_mul_temp__2_n_66\,
      O(3) => \Gain1_mul_temp__3\(59),
      O(2 downto 0) => NLW_Gain_mul_temp_i_2_O_UNCONNECTED(2 downto 0),
      S(3) => Gain_mul_temp_i_8_n_0,
      S(2) => Gain_mul_temp_i_9_n_0,
      S(1) => Gain_mul_temp_i_10_n_0,
      S(0) => Gain_mul_temp_i_11_n_0
    );
Gain_mul_temp_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_73\,
      I1 => \Gain1_mul_temp__0_n_90\,
      O => Gain_mul_temp_i_20_n_0
    );
Gain_mul_temp_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_74\,
      I1 => \Gain1_mul_temp__0_n_91\,
      O => Gain_mul_temp_i_21_n_0
    );
Gain_mul_temp_i_22: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_27_n_0,
      CO(3) => Gain_mul_temp_i_22_n_0,
      CO(2) => Gain_mul_temp_i_22_n_1,
      CO(1) => Gain_mul_temp_i_22_n_2,
      CO(0) => Gain_mul_temp_i_22_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_79\,
      DI(2) => \Gain1_mul_temp__2_n_80\,
      DI(1) => \Gain1_mul_temp__2_n_81\,
      DI(0) => \Gain1_mul_temp__2_n_82\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_22_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_28_n_0,
      S(2) => Gain_mul_temp_i_29_n_0,
      S(1) => Gain_mul_temp_i_30_n_0,
      S(0) => Gain_mul_temp_i_31_n_0
    );
Gain_mul_temp_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_75\,
      I1 => \Gain1_mul_temp__0_n_92\,
      O => Gain_mul_temp_i_23_n_0
    );
Gain_mul_temp_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_76\,
      I1 => \Gain1_mul_temp__0_n_93\,
      O => Gain_mul_temp_i_24_n_0
    );
Gain_mul_temp_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_77\,
      I1 => \Gain1_mul_temp__0_n_94\,
      O => Gain_mul_temp_i_25_n_0
    );
Gain_mul_temp_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_78\,
      I1 => \Gain1_mul_temp__0_n_95\,
      O => Gain_mul_temp_i_26_n_0
    );
Gain_mul_temp_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_32_n_0,
      CO(3) => Gain_mul_temp_i_27_n_0,
      CO(2) => Gain_mul_temp_i_27_n_1,
      CO(1) => Gain_mul_temp_i_27_n_2,
      CO(0) => Gain_mul_temp_i_27_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_83\,
      DI(2) => \Gain1_mul_temp__2_n_84\,
      DI(1) => \Gain1_mul_temp__2_n_85\,
      DI(0) => \Gain1_mul_temp__2_n_86\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_27_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_33_n_0,
      S(2) => Gain_mul_temp_i_34_n_0,
      S(1) => Gain_mul_temp_i_35_n_0,
      S(0) => Gain_mul_temp_i_36_n_0
    );
Gain_mul_temp_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_79\,
      I1 => \Gain1_mul_temp__0_n_96\,
      O => Gain_mul_temp_i_28_n_0
    );
Gain_mul_temp_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_80\,
      I1 => \Gain1_mul_temp__0_n_97\,
      O => Gain_mul_temp_i_29_n_0
    );
Gain_mul_temp_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_59\,
      I1 => \Gain1_mul_temp__0_n_76\,
      O => Gain_mul_temp_i_3_n_0
    );
Gain_mul_temp_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_81\,
      I1 => \Gain1_mul_temp__0_n_98\,
      O => Gain_mul_temp_i_30_n_0
    );
Gain_mul_temp_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_82\,
      I1 => \Gain1_mul_temp__0_n_99\,
      O => Gain_mul_temp_i_31_n_0
    );
Gain_mul_temp_i_32: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_37_n_0,
      CO(3) => Gain_mul_temp_i_32_n_0,
      CO(2) => Gain_mul_temp_i_32_n_1,
      CO(1) => Gain_mul_temp_i_32_n_2,
      CO(0) => Gain_mul_temp_i_32_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_87\,
      DI(2) => \Gain1_mul_temp__2_n_88\,
      DI(1) => \Gain1_mul_temp__2_n_89\,
      DI(0) => \Gain1_mul_temp__2_n_90\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_32_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_38_n_0,
      S(2) => Gain_mul_temp_i_39_n_0,
      S(1) => Gain_mul_temp_i_40_n_0,
      S(0) => Gain_mul_temp_i_41_n_0
    );
Gain_mul_temp_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_83\,
      I1 => \Gain1_mul_temp__0_n_100\,
      O => Gain_mul_temp_i_33_n_0
    );
Gain_mul_temp_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_84\,
      I1 => \Gain1_mul_temp__0_n_101\,
      O => Gain_mul_temp_i_34_n_0
    );
Gain_mul_temp_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_85\,
      I1 => \Gain1_mul_temp__0_n_102\,
      O => Gain_mul_temp_i_35_n_0
    );
Gain_mul_temp_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_86\,
      I1 => \Gain1_mul_temp__0_n_103\,
      O => Gain_mul_temp_i_36_n_0
    );
Gain_mul_temp_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_42_n_0,
      CO(3) => Gain_mul_temp_i_37_n_0,
      CO(2) => Gain_mul_temp_i_37_n_1,
      CO(1) => Gain_mul_temp_i_37_n_2,
      CO(0) => Gain_mul_temp_i_37_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_91\,
      DI(2) => \Gain1_mul_temp__2_n_92\,
      DI(1) => \Gain1_mul_temp__2_n_93\,
      DI(0) => \Gain1_mul_temp__2_n_94\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_37_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_43_n_0,
      S(2) => Gain_mul_temp_i_44_n_0,
      S(1) => Gain_mul_temp_i_45_n_0,
      S(0) => Gain_mul_temp_i_46_n_0
    );
Gain_mul_temp_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_87\,
      I1 => \Gain1_mul_temp__0_n_104\,
      O => Gain_mul_temp_i_38_n_0
    );
Gain_mul_temp_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_88\,
      I1 => \Gain1_mul_temp__0_n_105\,
      O => Gain_mul_temp_i_39_n_0
    );
Gain_mul_temp_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_60\,
      I1 => \Gain1_mul_temp__0_n_77\,
      O => Gain_mul_temp_i_4_n_0
    );
Gain_mul_temp_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_89\,
      I1 => Gain1_mul_temp_n_89,
      O => Gain_mul_temp_i_40_n_0
    );
Gain_mul_temp_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_90\,
      I1 => Gain1_mul_temp_n_90,
      O => Gain_mul_temp_i_41_n_0
    );
Gain_mul_temp_i_42: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_47_n_0,
      CO(3) => Gain_mul_temp_i_42_n_0,
      CO(2) => Gain_mul_temp_i_42_n_1,
      CO(1) => Gain_mul_temp_i_42_n_2,
      CO(0) => Gain_mul_temp_i_42_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_95\,
      DI(2) => \Gain1_mul_temp__2_n_96\,
      DI(1) => \Gain1_mul_temp__2_n_97\,
      DI(0) => \Gain1_mul_temp__2_n_98\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_42_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_48_n_0,
      S(2) => Gain_mul_temp_i_49_n_0,
      S(1) => Gain_mul_temp_i_50_n_0,
      S(0) => Gain_mul_temp_i_51_n_0
    );
Gain_mul_temp_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_91\,
      I1 => Gain1_mul_temp_n_91,
      O => Gain_mul_temp_i_43_n_0
    );
Gain_mul_temp_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_92\,
      I1 => Gain1_mul_temp_n_92,
      O => Gain_mul_temp_i_44_n_0
    );
Gain_mul_temp_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_93\,
      I1 => Gain1_mul_temp_n_93,
      O => Gain_mul_temp_i_45_n_0
    );
Gain_mul_temp_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_94\,
      I1 => Gain1_mul_temp_n_94,
      O => Gain_mul_temp_i_46_n_0
    );
Gain_mul_temp_i_47: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_52_n_0,
      CO(3) => Gain_mul_temp_i_47_n_0,
      CO(2) => Gain_mul_temp_i_47_n_1,
      CO(1) => Gain_mul_temp_i_47_n_2,
      CO(0) => Gain_mul_temp_i_47_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_99\,
      DI(2) => \Gain1_mul_temp__2_n_100\,
      DI(1) => \Gain1_mul_temp__2_n_101\,
      DI(0) => \Gain1_mul_temp__2_n_102\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_47_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_53_n_0,
      S(2) => Gain_mul_temp_i_54_n_0,
      S(1) => Gain_mul_temp_i_55_n_0,
      S(0) => Gain_mul_temp_i_56_n_0
    );
Gain_mul_temp_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_95\,
      I1 => Gain1_mul_temp_n_95,
      O => Gain_mul_temp_i_48_n_0
    );
Gain_mul_temp_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_96\,
      I1 => Gain1_mul_temp_n_96,
      O => Gain_mul_temp_i_49_n_0
    );
Gain_mul_temp_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_61\,
      I1 => \Gain1_mul_temp__0_n_78\,
      O => Gain_mul_temp_i_5_n_0
    );
Gain_mul_temp_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_97\,
      I1 => Gain1_mul_temp_n_97,
      O => Gain_mul_temp_i_50_n_0
    );
Gain_mul_temp_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_98\,
      I1 => Gain1_mul_temp_n_98,
      O => Gain_mul_temp_i_51_n_0
    );
Gain_mul_temp_i_52: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Gain_mul_temp_i_52_n_0,
      CO(2) => Gain_mul_temp_i_52_n_1,
      CO(1) => Gain_mul_temp_i_52_n_2,
      CO(0) => Gain_mul_temp_i_52_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_103\,
      DI(2) => \Gain1_mul_temp__2_n_104\,
      DI(1) => \Gain1_mul_temp__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => NLW_Gain_mul_temp_i_52_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_57_n_0,
      S(2) => Gain_mul_temp_i_58_n_0,
      S(1) => Gain_mul_temp_i_59_n_0,
      S(0) => \Gain1_mul_temp__1_n_89\
    );
Gain_mul_temp_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_99\,
      I1 => Gain1_mul_temp_n_99,
      O => Gain_mul_temp_i_53_n_0
    );
Gain_mul_temp_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_100\,
      I1 => Gain1_mul_temp_n_100,
      O => Gain_mul_temp_i_54_n_0
    );
Gain_mul_temp_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_101\,
      I1 => Gain1_mul_temp_n_101,
      O => Gain_mul_temp_i_55_n_0
    );
Gain_mul_temp_i_56: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_102\,
      I1 => Gain1_mul_temp_n_102,
      O => Gain_mul_temp_i_56_n_0
    );
Gain_mul_temp_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_103\,
      I1 => Gain1_mul_temp_n_103,
      O => Gain_mul_temp_i_57_n_0
    );
Gain_mul_temp_i_58: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_104\,
      I1 => Gain1_mul_temp_n_104,
      O => Gain_mul_temp_i_58_n_0
    );
Gain_mul_temp_i_59: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_105\,
      I1 => Gain1_mul_temp_n_105,
      O => Gain_mul_temp_i_59_n_0
    );
Gain_mul_temp_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_62\,
      I1 => \Gain1_mul_temp__0_n_79\,
      O => Gain_mul_temp_i_6_n_0
    );
Gain_mul_temp_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => Gain_mul_temp_i_12_n_0,
      CO(3) => Gain_mul_temp_i_7_n_0,
      CO(2) => Gain_mul_temp_i_7_n_1,
      CO(1) => Gain_mul_temp_i_7_n_2,
      CO(0) => Gain_mul_temp_i_7_n_3,
      CYINIT => '0',
      DI(3) => \Gain1_mul_temp__2_n_67\,
      DI(2) => \Gain1_mul_temp__2_n_68\,
      DI(1) => \Gain1_mul_temp__2_n_69\,
      DI(0) => \Gain1_mul_temp__2_n_70\,
      O(3 downto 0) => NLW_Gain_mul_temp_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => Gain_mul_temp_i_13_n_0,
      S(2) => Gain_mul_temp_i_14_n_0,
      S(1) => Gain_mul_temp_i_15_n_0,
      S(0) => Gain_mul_temp_i_16_n_0
    );
Gain_mul_temp_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_63\,
      I1 => \Gain1_mul_temp__0_n_80\,
      O => Gain_mul_temp_i_8_n_0
    );
Gain_mul_temp_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain1_mul_temp__2_n_64\,
      I1 => \Gain1_mul_temp__0_n_81\,
      O => Gain_mul_temp_i_9_n_0
    );
Multiply_mul_temp: unisim.vcomponents.DSP48E1
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
      A(15 downto 13) => B(15 downto 13),
      A(12 downto 0) => B"0000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_Multiply_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001000001100010010",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_Multiply_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_Multiply_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_Multiply_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_Multiply_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_Multiply_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_Multiply_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => Multiply_mul_temp_n_74,
      P(30 downto 19) => Multiply_out1(15 downto 4),
      P(18 downto 17) => \^pwm\(1 downto 0),
      P(16) => Multiply_mul_temp_n_89,
      P(15) => Multiply_mul_temp_n_90,
      P(14) => Multiply_mul_temp_n_91,
      P(13) => Multiply_mul_temp_n_92,
      P(12) => Multiply_mul_temp_n_93,
      P(11) => Multiply_mul_temp_n_94,
      P(10) => Multiply_mul_temp_n_95,
      P(9) => Multiply_mul_temp_n_96,
      P(8) => Multiply_mul_temp_n_97,
      P(7) => Multiply_mul_temp_n_98,
      P(6) => Multiply_mul_temp_n_99,
      P(5) => Multiply_mul_temp_n_100,
      P(4) => Multiply_mul_temp_n_101,
      P(3) => Multiply_mul_temp_n_102,
      P(2) => Multiply_mul_temp_n_103,
      P(1) => Multiply_mul_temp_n_104,
      P(0) => Multiply_mul_temp_n_105,
      PATTERNBDETECT => NLW_Multiply_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_Multiply_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_Multiply_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_Multiply_mul_temp_UNDERFLOW_UNCONNECTED
    );
Sum1_add_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_Sum1_add_temp_carry_CO_UNCONNECTED(3 downto 2),
      CO(1) => Sum1_add_temp_carry_n_2,
      CO(0) => Sum1_add_temp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3) => NLW_Sum1_add_temp_carry_O_UNCONNECTED(3),
      O(2 downto 0) => B(15 downto 13),
      S(3) => '0',
      S(2) => Sum1_add_temp_carry_i_1_n_0,
      S(1) => Sum1_add_temp_carry_i_2_n_0,
      S(0) => '0'
    );
Sum1_add_temp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Sum3_out1(15),
      I1 => dtc_out_62,
      O => Sum1_add_temp_carry_i_1_n_0
    );
Sum1_add_temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dtc_out_62,
      I1 => Sum3_out1(15),
      O => Sum1_add_temp_carry_i_2_n_0
    );
\Sum3_sub_temp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum3_sub_temp__0_carry_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry_n_3\,
      CYINIT => \Sum3_sub_temp__0_carry_i_1_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Sum3_sub_temp__0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \Sum3_sub_temp__0_carry_i_2_n_0\,
      S(2) => \Sum3_sub_temp__0_carry_i_3_n_0\,
      S(1) => \Sum3_sub_temp__0_carry_i_4_n_0\,
      S(0) => \Sum3_sub_temp__0_carry_i_5_n_0\
    );
\Sum3_sub_temp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry_n_0\,
      CO(3) => \Sum3_sub_temp__0_carry__0_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry__0_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry__0_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Sum3_sub_temp__0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Sum3_sub_temp__0_carry__0_i_1_n_0\,
      S(2) => \Sum3_sub_temp__0_carry__0_i_2_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__0_i_3_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__0_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_88,
      O => \Sum3_sub_temp__0_carry__0_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_89,
      O => \Sum3_sub_temp__0_carry__0_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_90,
      O => \Sum3_sub_temp__0_carry__0_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_91,
      O => \Sum3_sub_temp__0_carry__0_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry__0_n_0\,
      CO(3) => \Sum3_sub_temp__0_carry__1_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry__1_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry__1_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => Gain3_add_temp_2_n_92,
      DI(2 downto 0) => B"000",
      O(3) => A(0),
      O(2 downto 0) => \NLW_Sum3_sub_temp__0_carry__1_O_UNCONNECTED\(2 downto 0),
      S(3) => \Sum3_sub_temp__0_carry__1_i_1_n_0\,
      S(2) => \Sum3_sub_temp__0_carry__1_i_2_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__1_i_3_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__1_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_92,
      I1 => Gain_mul_temp_n_84,
      O => \Sum3_sub_temp__0_carry__1_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_85,
      O => \Sum3_sub_temp__0_carry__1_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_86,
      O => \Sum3_sub_temp__0_carry__1_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_87,
      O => \Sum3_sub_temp__0_carry__1_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry__1_n_0\,
      CO(3) => \Sum3_sub_temp__0_carry__2_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry__2_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry__2_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => Gain3_add_temp_2_n_88,
      DI(2) => \Sum3_sub_temp__0_carry__2_i_1_n_0\,
      DI(1) => \Sum3_sub_temp__0_carry__2_i_2_n_0\,
      DI(0) => \Sum3_sub_temp__0_carry__2_i_3_n_0\,
      O(3 downto 0) => A(4 downto 1),
      S(3) => \Sum3_sub_temp__0_carry__2_i_4_n_0\,
      S(2) => \Sum3_sub_temp__0_carry__2_i_5_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__2_i_6_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__2_i_7_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Gain_mul_temp_n_81,
      I1 => Gain3_add_temp_2_n_89,
      O => \Sum3_sub_temp__0_carry__2_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain3_add_temp_2_n_91,
      I1 => Gain_mul_temp_n_83,
      O => \Sum3_sub_temp__0_carry__2_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain3_add_temp_2_n_92,
      O => \Sum3_sub_temp__0_carry__2_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => Gain3_add_temp_2_n_89,
      I1 => Gain_mul_temp_n_81,
      I2 => Gain3_add_temp_2_n_88,
      O => \Sum3_sub_temp__0_carry__2_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => Gain3_add_temp_2_n_89,
      I1 => Gain_mul_temp_n_81,
      I2 => Gain_mul_temp_n_82,
      I3 => Gain3_add_temp_2_n_90,
      O => \Sum3_sub_temp__0_carry__2_i_5_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => Gain_mul_temp_n_83,
      I1 => Gain3_add_temp_2_n_91,
      I2 => Gain3_add_temp_2_n_90,
      I3 => Gain_mul_temp_n_82,
      O => \Sum3_sub_temp__0_carry__2_i_6_n_0\
    );
\Sum3_sub_temp__0_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Gain3_add_temp_2_n_92,
      I1 => Gain3_add_temp_2_n_91,
      I2 => Gain_mul_temp_n_83,
      O => \Sum3_sub_temp__0_carry__2_i_7_n_0\
    );
\Sum3_sub_temp__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry__2_n_0\,
      CO(3) => \Sum3_sub_temp__0_carry__3_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry__3_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry__3_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => Gain3_add_temp_2_n_84,
      DI(2) => Gain3_add_temp_2_n_85,
      DI(1) => Gain3_add_temp_2_n_86,
      DI(0) => Gain3_add_temp_2_n_87,
      O(3 downto 0) => A(8 downto 5),
      S(3) => \Sum3_sub_temp__0_carry__3_i_1_n_0\,
      S(2) => \Sum3_sub_temp__0_carry__3_i_2_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__3_i_3_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__3_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_85,
      I1 => Gain3_add_temp_2_n_84,
      O => \Sum3_sub_temp__0_carry__3_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_86,
      I1 => Gain3_add_temp_2_n_85,
      O => \Sum3_sub_temp__0_carry__3_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_87,
      I1 => Gain3_add_temp_2_n_86,
      O => \Sum3_sub_temp__0_carry__3_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_88,
      I1 => Gain3_add_temp_2_n_87,
      O => \Sum3_sub_temp__0_carry__3_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry__3_n_0\,
      CO(3) => \Sum3_sub_temp__0_carry__4_n_0\,
      CO(2) => \Sum3_sub_temp__0_carry__4_n_1\,
      CO(1) => \Sum3_sub_temp__0_carry__4_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => Gain3_add_temp_2_n_80,
      DI(2) => Gain3_add_temp_2_n_81,
      DI(1) => Gain3_add_temp_2_n_82,
      DI(0) => Gain3_add_temp_2_n_83,
      O(3 downto 0) => A(12 downto 9),
      S(3) => \Sum3_sub_temp__0_carry__4_i_1_n_0\,
      S(2) => \Sum3_sub_temp__0_carry__4_i_2_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__4_i_3_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__4_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_81,
      I1 => Gain3_add_temp_2_n_80,
      O => \Sum3_sub_temp__0_carry__4_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_82,
      I1 => Gain3_add_temp_2_n_81,
      O => \Sum3_sub_temp__0_carry__4_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_83,
      I1 => Gain3_add_temp_2_n_82,
      O => \Sum3_sub_temp__0_carry__4_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_84,
      I1 => Gain3_add_temp_2_n_83,
      O => \Sum3_sub_temp__0_carry__4_i_4_n_0\
    );
\Sum3_sub_temp__0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum3_sub_temp__0_carry__4_n_0\,
      CO(3 downto 2) => \NLW_Sum3_sub_temp__0_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Sum3_sub_temp__0_carry__5_n_2\,
      CO(0) => \Sum3_sub_temp__0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Gain3_add_temp_2_n_78,
      DI(0) => Gain3_add_temp_2_n_79,
      O(3) => \NLW_Sum3_sub_temp__0_carry__5_O_UNCONNECTED\(3),
      O(2) => Sum3_out1(15),
      O(1 downto 0) => A(14 downto 13),
      S(3) => '0',
      S(2) => \Sum3_sub_temp__0_carry__5_i_1_n_0\,
      S(1) => \Sum3_sub_temp__0_carry__5_i_2_n_0\,
      S(0) => \Sum3_sub_temp__0_carry__5_i_3_n_0\
    );
\Sum3_sub_temp__0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_78,
      I1 => Gain3_add_temp_2_n_77,
      O => \Sum3_sub_temp__0_carry__5_i_1_n_0\
    );
\Sum3_sub_temp__0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_79,
      I1 => Gain3_add_temp_2_n_78,
      O => \Sum3_sub_temp__0_carry__5_i_2_n_0\
    );
\Sum3_sub_temp__0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Gain3_add_temp_2_n_80,
      I1 => Gain3_add_temp_2_n_79,
      O => \Sum3_sub_temp__0_carry__5_i_3_n_0\
    );
\Sum3_sub_temp__0_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_96,
      O => \Sum3_sub_temp__0_carry_i_1_n_0\
    );
\Sum3_sub_temp__0_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_92,
      O => \Sum3_sub_temp__0_carry_i_2_n_0\
    );
\Sum3_sub_temp__0_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_93,
      O => \Sum3_sub_temp__0_carry_i_3_n_0\
    );
\Sum3_sub_temp__0_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_94,
      O => \Sum3_sub_temp__0_carry_i_4_n_0\
    );
\Sum3_sub_temp__0_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Gain_mul_temp_n_95,
      O => \Sum3_sub_temp__0_carry_i_5_n_0\
    );
\Sum4_add_temp[0]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum4_add_temp[0]_carry_n_0\,
      CO(2) => \Sum4_add_temp[0]_carry_n_1\,
      CO(1) => \Sum4_add_temp[0]_carry_n_2\,
      CO(0) => \Sum4_add_temp[0]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \Sum6_add_temp[0]\(3 downto 1),
      DI(0) => '0',
      O(3 downto 1) => \Sum4_out1[0]\(2 downto 0),
      O(0) => \NLW_Sum4_add_temp[0]_carry_O_UNCONNECTED\(0),
      S(3) => \Sum4_add_temp[0]_carry_i_1_n_0\,
      S(2) => \Sum4_add_temp[0]_carry_i_2_n_0\,
      S(1) => \Sum4_add_temp[0]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[0]\(0)
    );
\Sum4_add_temp[0]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[0]_carry_n_0\,
      CO(3) => \Sum4_add_temp[0]_carry__0_n_0\,
      CO(2) => \Sum4_add_temp[0]_carry__0_n_1\,
      CO(1) => \Sum4_add_temp[0]_carry__0_n_2\,
      CO(0) => \Sum4_add_temp[0]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[0]\(7 downto 4),
      O(3 downto 0) => \Sum4_out1[0]\(6 downto 3),
      S(3) => \Sum4_add_temp[0]_carry__0_i_1_n_0\,
      S(2) => \Sum4_add_temp[0]_carry__0_i_2_n_0\,
      S(1) => \Sum4_add_temp[0]_carry__0_i_3_n_0\,
      S(0) => \Sum4_add_temp[0]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[0]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(7),
      I1 => sum_Gain6_dotp_2_3(6),
      O => \Sum4_add_temp[0]_carry__0_i_1_n_0\
    );
\Sum4_add_temp[0]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(6),
      I1 => sum_Gain6_dotp_2_3(5),
      O => \Sum4_add_temp[0]_carry__0_i_2_n_0\
    );
\Sum4_add_temp[0]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(5),
      I1 => sum_Gain6_dotp_2_3(4),
      O => \Sum4_add_temp[0]_carry__0_i_3_n_0\
    );
\Sum4_add_temp[0]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(4),
      I1 => sum_Gain6_dotp_2_3(3),
      O => \Sum4_add_temp[0]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[0]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[0]_carry__0_n_0\,
      CO(3) => \Sum4_add_temp[0]_carry__1_n_0\,
      CO(2) => \Sum4_add_temp[0]_carry__1_n_1\,
      CO(1) => \Sum4_add_temp[0]_carry__1_n_2\,
      CO(0) => \Sum4_add_temp[0]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[0]\(11 downto 8),
      O(3 downto 0) => \Sum4_out1[0]\(10 downto 7),
      S(3) => \Sum4_add_temp[0]_carry__1_i_1_n_0\,
      S(2) => \Sum4_add_temp[0]_carry__1_i_2_n_0\,
      S(1) => \Sum4_add_temp[0]_carry__1_i_3_n_0\,
      S(0) => \Sum4_add_temp[0]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[0]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(11),
      I1 => sum_Gain6_dotp_2_3(10),
      O => \Sum4_add_temp[0]_carry__1_i_1_n_0\
    );
\Sum4_add_temp[0]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(10),
      I1 => sum_Gain6_dotp_2_3(9),
      O => \Sum4_add_temp[0]_carry__1_i_2_n_0\
    );
\Sum4_add_temp[0]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(9),
      I1 => sum_Gain6_dotp_2_3(8),
      O => \Sum4_add_temp[0]_carry__1_i_3_n_0\
    );
\Sum4_add_temp[0]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(8),
      I1 => sum_Gain6_dotp_2_3(7),
      O => \Sum4_add_temp[0]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[0]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[0]_carry__1_n_0\,
      CO(3) => \Sum4_add_temp[0]_carry__2_n_0\,
      CO(2) => \Sum4_add_temp[0]_carry__2_n_1\,
      CO(1) => \Sum4_add_temp[0]_carry__2_n_2\,
      CO(0) => \Sum4_add_temp[0]_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => sum_Gain6_dotp_2_3(13),
      DI(2) => \Sum4_add_temp[0]_carry__2_i_1_n_3\,
      DI(1 downto 0) => sum_Gain6_dotp_2_3(12 downto 11),
      O(3 downto 0) => \Sum4_out1[0]\(14 downto 11),
      S(3) => \Sum4_add_temp[0]_carry__2_i_2_n_0\,
      S(2) => \Sum4_add_temp[0]_carry__2_i_3_n_0\,
      S(1) => \Sum4_add_temp[0]_carry__2_i_4_n_0\,
      S(0) => \Sum4_add_temp[0]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[0]_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[0]_carry__1_n_0\,
      CO(3 downto 1) => \NLW_Sum4_add_temp[0]_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Sum4_add_temp[0]_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Sum4_add_temp[0]_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Sum4_add_temp[0]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_Gain6_dotp_2_3(13),
      I1 => sum_Gain6_dotp_2_3(14),
      O => \Sum4_add_temp[0]_carry__2_i_2_n_0\
    );
\Sum4_add_temp[0]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_Gain6_dotp_2_3(13),
      I1 => \Sum4_add_temp[0]_carry__2_i_1_n_3\,
      O => \Sum4_add_temp[0]_carry__2_i_3_n_0\
    );
\Sum4_add_temp[0]_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Sum4_add_temp[0]_carry__2_i_1_n_3\,
      I1 => sum_Gain6_dotp_2_3(12),
      O => \Sum4_add_temp[0]_carry__2_i_4_n_0\
    );
\Sum4_add_temp[0]_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Sum4_add_temp[0]_carry__2_i_1_n_3\,
      I1 => sum_Gain6_dotp_2_3(11),
      O => \Sum4_add_temp[0]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[0]_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[0]_carry__2_n_0\,
      CO(3 downto 0) => \NLW_Sum4_add_temp[0]_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Sum4_add_temp[0]_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \Sum4_out1[0]\(15),
      S(3 downto 1) => B"000",
      S(0) => \Sum4_add_temp[0]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[0]_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sum_Gain6_dotp_2_3(14),
      I1 => sum_Gain6_dotp_2_3(15),
      O => \Sum4_add_temp[0]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[0]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(3),
      I1 => sum_Gain6_dotp_2_3(2),
      O => \Sum4_add_temp[0]_carry_i_1_n_0\
    );
\Sum4_add_temp[0]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(2),
      I1 => sum_Gain6_dotp_2_3(1),
      O => \Sum4_add_temp[0]_carry_i_2_n_0\
    );
\Sum4_add_temp[0]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[0]\(1),
      I1 => sum_Gain6_dotp_2_3(0),
      O => \Sum4_add_temp[0]_carry_i_3_n_0\
    );
\Sum4_add_temp[1]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum4_add_temp[1]_carry_n_0\,
      CO(2) => \Sum4_add_temp[1]_carry_n_1\,
      CO(1) => \Sum4_add_temp[1]_carry_n_2\,
      CO(0) => \Sum4_add_temp[1]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \Sum6_add_temp[1]\(3 downto 1),
      DI(0) => '0',
      O(3 downto 1) => \Sum4_out1[1]\(2 downto 0),
      O(0) => \NLW_Sum4_add_temp[1]_carry_O_UNCONNECTED\(0),
      S(3) => \Sum4_add_temp[1]_carry_i_1_n_0\,
      S(2) => \Sum4_add_temp[1]_carry_i_2_n_0\,
      S(1) => \Sum4_add_temp[1]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[1]\(0)
    );
\Sum4_add_temp[1]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[1]_carry_n_0\,
      CO(3) => \Sum4_add_temp[1]_carry__0_n_0\,
      CO(2) => \Sum4_add_temp[1]_carry__0_n_1\,
      CO(1) => \Sum4_add_temp[1]_carry__0_n_2\,
      CO(0) => \Sum4_add_temp[1]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[1]\(7 downto 4),
      O(3 downto 0) => \Sum4_out1[1]\(6 downto 3),
      S(3) => \Sum4_add_temp[1]_carry__0_i_1_n_0\,
      S(2) => \Sum4_add_temp[1]_carry__0_i_2_n_0\,
      S(1) => \Sum4_add_temp[1]_carry__0_i_3_n_0\,
      S(0) => \Sum4_add_temp[1]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[1]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(7),
      I1 => \Gain6_out1[1]\(6),
      O => \Sum4_add_temp[1]_carry__0_i_1_n_0\
    );
\Sum4_add_temp[1]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(6),
      I1 => \Gain6_out1[1]\(5),
      O => \Sum4_add_temp[1]_carry__0_i_2_n_0\
    );
\Sum4_add_temp[1]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(5),
      I1 => \Gain6_out1[1]\(4),
      O => \Sum4_add_temp[1]_carry__0_i_3_n_0\
    );
\Sum4_add_temp[1]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(4),
      I1 => \Gain6_out1[1]\(3),
      O => \Sum4_add_temp[1]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[1]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[1]_carry__0_n_0\,
      CO(3) => \Sum4_add_temp[1]_carry__1_n_0\,
      CO(2) => \Sum4_add_temp[1]_carry__1_n_1\,
      CO(1) => \Sum4_add_temp[1]_carry__1_n_2\,
      CO(0) => \Sum4_add_temp[1]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[1]\(11 downto 8),
      O(3 downto 0) => \Sum4_out1[1]\(10 downto 7),
      S(3) => \Sum4_add_temp[1]_carry__1_i_1_n_0\,
      S(2) => \Sum4_add_temp[1]_carry__1_i_2_n_0\,
      S(1) => \Sum4_add_temp[1]_carry__1_i_3_n_0\,
      S(0) => \Sum4_add_temp[1]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[1]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(11),
      I1 => \Gain6_out1[1]\(10),
      O => \Sum4_add_temp[1]_carry__1_i_1_n_0\
    );
\Sum4_add_temp[1]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(10),
      I1 => \Gain6_out1[1]\(9),
      O => \Sum4_add_temp[1]_carry__1_i_2_n_0\
    );
\Sum4_add_temp[1]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(9),
      I1 => \Gain6_out1[1]\(8),
      O => \Sum4_add_temp[1]_carry__1_i_3_n_0\
    );
\Sum4_add_temp[1]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(8),
      I1 => \Gain6_out1[1]\(7),
      O => \Sum4_add_temp[1]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[1]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[1]_carry__1_n_0\,
      CO(3) => \Sum4_add_temp[1]_carry__2_n_0\,
      CO(2) => \Sum4_add_temp[1]_carry__2_n_1\,
      CO(1) => \Sum4_add_temp[1]_carry__2_n_2\,
      CO(0) => \Sum4_add_temp[1]_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_out1[1]\(13),
      DI(2) => \Sum4_add_temp[1]_carry__2_i_1_n_0\,
      DI(1 downto 0) => \Sum6_add_temp[1]\(13 downto 12),
      O(3 downto 0) => \Sum4_out1[1]\(14 downto 11),
      S(3) => \Sum4_add_temp[1]_carry__2_i_2_n_0\,
      S(2) => \Sum4_add_temp[1]_carry__2_i_3_n_0\,
      S(1) => \Sum4_add_temp[1]_carry__2_i_4_n_0\,
      S(0) => \Sum4_add_temp[1]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[1]_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Gain6_out1[1]\(13),
      O => \Sum4_add_temp[1]_carry__2_i_1_n_0\
    );
\Sum4_add_temp[1]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[1]\(13),
      I1 => \Gain6_out1[1]\(14),
      O => \Sum4_add_temp[1]_carry__2_i_2_n_0\
    );
\Sum4_add_temp[1]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain6_out1[1]\(13),
      I1 => \Sum6_add_temp[1]\(14),
      O => \Sum4_add_temp[1]_carry__2_i_3_n_0\
    );
\Sum4_add_temp[1]_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(13),
      I1 => \Gain6_out1[1]\(12),
      O => \Sum4_add_temp[1]_carry__2_i_4_n_0\
    );
\Sum4_add_temp[1]_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(12),
      I1 => \Gain6_out1[1]\(11),
      O => \Sum4_add_temp[1]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[1]_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[1]_carry__2_n_0\,
      CO(3 downto 0) => \NLW_Sum4_add_temp[1]_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Sum4_add_temp[1]_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \Sum4_out1[1]\(15),
      S(3 downto 1) => B"000",
      S(0) => \Sum4_add_temp[1]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[1]_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[1]\(14),
      I1 => \Gain6_out1[1]\(15),
      O => \Sum4_add_temp[1]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[1]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(3),
      I1 => \Gain6_out1[1]\(2),
      O => \Sum4_add_temp[1]_carry_i_1_n_0\
    );
\Sum4_add_temp[1]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(2),
      I1 => \Gain6_out1[1]\(1),
      O => \Sum4_add_temp[1]_carry_i_2_n_0\
    );
\Sum4_add_temp[1]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[1]\(1),
      I1 => \Gain6_out1[1]\(0),
      O => \Sum4_add_temp[1]_carry_i_3_n_0\
    );
\Sum4_add_temp[2]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum4_add_temp[2]_carry_n_0\,
      CO(2) => \Sum4_add_temp[2]_carry_n_1\,
      CO(1) => \Sum4_add_temp[2]_carry_n_2\,
      CO(0) => \Sum4_add_temp[2]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \Sum6_add_temp[2]\(3 downto 1),
      DI(0) => '0',
      O(3 downto 1) => \Sum4_out1[2]\(2 downto 0),
      O(0) => \NLW_Sum4_add_temp[2]_carry_O_UNCONNECTED\(0),
      S(3) => \Sum4_add_temp[2]_carry_i_1_n_0\,
      S(2) => \Sum4_add_temp[2]_carry_i_2_n_0\,
      S(1) => \Sum4_add_temp[2]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[2]\(0)
    );
\Sum4_add_temp[2]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[2]_carry_n_0\,
      CO(3) => \Sum4_add_temp[2]_carry__0_n_0\,
      CO(2) => \Sum4_add_temp[2]_carry__0_n_1\,
      CO(1) => \Sum4_add_temp[2]_carry__0_n_2\,
      CO(0) => \Sum4_add_temp[2]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[2]\(7 downto 4),
      O(3 downto 0) => \Sum4_out1[2]\(6 downto 3),
      S(3) => \Sum4_add_temp[2]_carry__0_i_1_n_0\,
      S(2) => \Sum4_add_temp[2]_carry__0_i_2_n_0\,
      S(1) => \Sum4_add_temp[2]_carry__0_i_3_n_0\,
      S(0) => \Sum4_add_temp[2]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[2]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(7),
      I1 => \Gain6_out1[2]\(6),
      O => \Sum4_add_temp[2]_carry__0_i_1_n_0\
    );
\Sum4_add_temp[2]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(6),
      I1 => \Gain6_out1[2]\(5),
      O => \Sum4_add_temp[2]_carry__0_i_2_n_0\
    );
\Sum4_add_temp[2]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(5),
      I1 => \Gain6_out1[2]\(4),
      O => \Sum4_add_temp[2]_carry__0_i_3_n_0\
    );
\Sum4_add_temp[2]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(4),
      I1 => \Gain6_out1[2]\(3),
      O => \Sum4_add_temp[2]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[2]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[2]_carry__0_n_0\,
      CO(3) => \Sum4_add_temp[2]_carry__1_n_0\,
      CO(2) => \Sum4_add_temp[2]_carry__1_n_1\,
      CO(1) => \Sum4_add_temp[2]_carry__1_n_2\,
      CO(0) => \Sum4_add_temp[2]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[2]\(11 downto 8),
      O(3 downto 0) => \Sum4_out1[2]\(10 downto 7),
      S(3) => \Sum4_add_temp[2]_carry__1_i_1_n_0\,
      S(2) => \Sum4_add_temp[2]_carry__1_i_2_n_0\,
      S(1) => \Sum4_add_temp[2]_carry__1_i_3_n_0\,
      S(0) => \Sum4_add_temp[2]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[2]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(11),
      I1 => \Gain6_out1[2]\(10),
      O => \Sum4_add_temp[2]_carry__1_i_1_n_0\
    );
\Sum4_add_temp[2]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(10),
      I1 => \Gain6_out1[2]\(9),
      O => \Sum4_add_temp[2]_carry__1_i_2_n_0\
    );
\Sum4_add_temp[2]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(9),
      I1 => \Gain6_out1[2]\(8),
      O => \Sum4_add_temp[2]_carry__1_i_3_n_0\
    );
\Sum4_add_temp[2]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(8),
      I1 => \Gain6_out1[2]\(7),
      O => \Sum4_add_temp[2]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[2]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[2]_carry__1_n_0\,
      CO(3) => \Sum4_add_temp[2]_carry__2_n_0\,
      CO(2) => \Sum4_add_temp[2]_carry__2_n_1\,
      CO(1) => \Sum4_add_temp[2]_carry__2_n_2\,
      CO(0) => \Sum4_add_temp[2]_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_out1[2]\(13),
      DI(2) => \Sum4_add_temp[2]_carry__2_i_1_n_3\,
      DI(1 downto 0) => \Gain6_out1[2]\(12 downto 11),
      O(3 downto 0) => \Sum4_out1[2]\(14 downto 11),
      S(3) => \Sum4_add_temp[2]_carry__2_i_2_n_0\,
      S(2) => \Sum4_add_temp[2]_carry__2_i_3_n_0\,
      S(1) => \Sum4_add_temp[2]_carry__2_i_4_n_0\,
      S(0) => \Sum4_add_temp[2]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[2]_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[2]_carry__1_n_0\,
      CO(3 downto 1) => \NLW_Sum4_add_temp[2]_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Sum4_add_temp[2]_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Sum4_add_temp[2]_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Sum4_add_temp[2]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[2]\(13),
      I1 => \Gain6_out1[2]\(14),
      O => \Sum4_add_temp[2]_carry__2_i_2_n_0\
    );
\Sum4_add_temp[2]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[2]\(13),
      I1 => \Sum4_add_temp[2]_carry__2_i_1_n_3\,
      O => \Sum4_add_temp[2]_carry__2_i_3_n_0\
    );
\Sum4_add_temp[2]_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Sum4_add_temp[2]_carry__2_i_1_n_3\,
      I1 => \Gain6_out1[2]\(12),
      O => \Sum4_add_temp[2]_carry__2_i_4_n_0\
    );
\Sum4_add_temp[2]_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Sum4_add_temp[2]_carry__2_i_1_n_3\,
      I1 => \Gain6_out1[2]\(11),
      O => \Sum4_add_temp[2]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[2]_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[2]_carry__2_n_0\,
      CO(3 downto 0) => \NLW_Sum4_add_temp[2]_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Sum4_add_temp[2]_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \Sum4_out1[2]\(15),
      S(3 downto 1) => B"000",
      S(0) => \Sum4_add_temp[2]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[2]_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[2]\(14),
      I1 => \Gain6_out1[2]\(15),
      O => \Sum4_add_temp[2]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[2]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(3),
      I1 => \Gain6_out1[2]\(2),
      O => \Sum4_add_temp[2]_carry_i_1_n_0\
    );
\Sum4_add_temp[2]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(2),
      I1 => \Gain6_out1[2]\(1),
      O => \Sum4_add_temp[2]_carry_i_2_n_0\
    );
\Sum4_add_temp[2]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[2]\(1),
      I1 => \Gain6_out1[2]\(0),
      O => \Sum4_add_temp[2]_carry_i_3_n_0\
    );
\Sum4_add_temp[3]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum4_add_temp[3]_carry_n_0\,
      CO(2) => \Sum4_add_temp[3]_carry_n_1\,
      CO(1) => \Sum4_add_temp[3]_carry_n_2\,
      CO(0) => \Sum4_add_temp[3]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \Sum6_add_temp[3]\(3 downto 1),
      DI(0) => '0',
      O(3 downto 1) => \Sum4_out1[3]\(2 downto 0),
      O(0) => \NLW_Sum4_add_temp[3]_carry_O_UNCONNECTED\(0),
      S(3) => \Sum4_add_temp[3]_carry_i_1_n_0\,
      S(2) => \Sum4_add_temp[3]_carry_i_2_n_0\,
      S(1) => \Sum4_add_temp[3]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[3]\(0)
    );
\Sum4_add_temp[3]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[3]_carry_n_0\,
      CO(3) => \Sum4_add_temp[3]_carry__0_n_0\,
      CO(2) => \Sum4_add_temp[3]_carry__0_n_1\,
      CO(1) => \Sum4_add_temp[3]_carry__0_n_2\,
      CO(0) => \Sum4_add_temp[3]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[3]\(7 downto 4),
      O(3 downto 0) => \Sum4_out1[3]\(6 downto 3),
      S(3) => \Sum4_add_temp[3]_carry__0_i_1_n_0\,
      S(2) => \Sum4_add_temp[3]_carry__0_i_2_n_0\,
      S(1) => \Sum4_add_temp[3]_carry__0_i_3_n_0\,
      S(0) => \Sum4_add_temp[3]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[3]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(7),
      I1 => \Gain6_out1[3]\(6),
      O => \Sum4_add_temp[3]_carry__0_i_1_n_0\
    );
\Sum4_add_temp[3]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(6),
      I1 => \Gain6_out1[3]\(5),
      O => \Sum4_add_temp[3]_carry__0_i_2_n_0\
    );
\Sum4_add_temp[3]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(5),
      I1 => \Gain6_out1[3]\(4),
      O => \Sum4_add_temp[3]_carry__0_i_3_n_0\
    );
\Sum4_add_temp[3]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(4),
      I1 => \Gain6_out1[3]\(3),
      O => \Sum4_add_temp[3]_carry__0_i_4_n_0\
    );
\Sum4_add_temp[3]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[3]_carry__0_n_0\,
      CO(3) => \Sum4_add_temp[3]_carry__1_n_0\,
      CO(2) => \Sum4_add_temp[3]_carry__1_n_1\,
      CO(1) => \Sum4_add_temp[3]_carry__1_n_2\,
      CO(0) => \Sum4_add_temp[3]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_temp[3]\(11 downto 8),
      O(3 downto 0) => \Sum4_out1[3]\(10 downto 7),
      S(3) => \Sum4_add_temp[3]_carry__1_i_1_n_0\,
      S(2) => \Sum4_add_temp[3]_carry__1_i_2_n_0\,
      S(1) => \Sum4_add_temp[3]_carry__1_i_3_n_0\,
      S(0) => \Sum4_add_temp[3]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[3]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(11),
      I1 => \Gain6_out1[3]\(10),
      O => \Sum4_add_temp[3]_carry__1_i_1_n_0\
    );
\Sum4_add_temp[3]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(10),
      I1 => \Gain6_out1[3]\(9),
      O => \Sum4_add_temp[3]_carry__1_i_2_n_0\
    );
\Sum4_add_temp[3]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(9),
      I1 => \Gain6_out1[3]\(8),
      O => \Sum4_add_temp[3]_carry__1_i_3_n_0\
    );
\Sum4_add_temp[3]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(8),
      I1 => \Gain6_out1[3]\(7),
      O => \Sum4_add_temp[3]_carry__1_i_4_n_0\
    );
\Sum4_add_temp[3]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[3]_carry__1_n_0\,
      CO(3) => \Sum4_add_temp[3]_carry__2_n_0\,
      CO(2) => \Sum4_add_temp[3]_carry__2_n_1\,
      CO(1) => \Sum4_add_temp[3]_carry__2_n_2\,
      CO(0) => \Sum4_add_temp[3]_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \Gain6_out1[3]\(13),
      DI(2) => \Sum4_add_temp[3]_carry__2_i_1_n_0\,
      DI(1 downto 0) => \Sum6_add_temp[3]\(13 downto 12),
      O(3 downto 0) => \Sum4_out1[3]\(14 downto 11),
      S(3) => \Sum4_add_temp[3]_carry__2_i_2_n_0\,
      S(2) => \Sum4_add_temp[3]_carry__2_i_3_n_0\,
      S(1) => \Sum4_add_temp[3]_carry__2_i_4_n_0\,
      S(0) => \Sum4_add_temp[3]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[3]_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Gain6_out1[3]\(13),
      O => \Sum4_add_temp[3]_carry__2_i_1_n_0\
    );
\Sum4_add_temp[3]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[3]\(13),
      I1 => \Gain6_out1[3]\(14),
      O => \Sum4_add_temp[3]_carry__2_i_2_n_0\
    );
\Sum4_add_temp[3]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain6_out1[3]\(13),
      I1 => \Sum6_add_temp[3]\(14),
      O => \Sum4_add_temp[3]_carry__2_i_3_n_0\
    );
\Sum4_add_temp[3]_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(13),
      I1 => \Gain6_out1[3]\(12),
      O => \Sum4_add_temp[3]_carry__2_i_4_n_0\
    );
\Sum4_add_temp[3]_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(12),
      I1 => \Gain6_out1[3]\(11),
      O => \Sum4_add_temp[3]_carry__2_i_5_n_0\
    );
\Sum4_add_temp[3]_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum4_add_temp[3]_carry__2_n_0\,
      CO(3 downto 0) => \NLW_Sum4_add_temp[3]_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_Sum4_add_temp[3]_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => \Sum4_out1[3]\(15),
      S(3 downto 1) => B"000",
      S(0) => \Sum4_add_temp[3]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[3]_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain6_out1[3]\(14),
      I1 => \Gain6_out1[3]\(15),
      O => \Sum4_add_temp[3]_carry__3_i_1_n_0\
    );
\Sum4_add_temp[3]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(3),
      I1 => \Gain6_out1[3]\(2),
      O => \Sum4_add_temp[3]_carry_i_1_n_0\
    );
\Sum4_add_temp[3]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(2),
      I1 => \Gain6_out1[3]\(1),
      O => \Sum4_add_temp[3]_carry_i_2_n_0\
    );
\Sum4_add_temp[3]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_temp[3]\(1),
      I1 => \Gain6_out1[3]\(0),
      O => \Sum4_add_temp[3]_carry_i_3_n_0\
    );
\Sum6_add_temp[0]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum6_add_temp[0]_carry_n_0\,
      CO(2) => \Sum6_add_temp[0]_carry_n_1\,
      CO(1) => \Sum6_add_temp[0]_carry_n_2\,
      CO(0) => \Sum6_add_temp[0]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[0]\(3 downto 0),
      O(3 downto 0) => \Sum6_add_temp[0]\(3 downto 0),
      S(3) => \Sum6_add_temp[0]_carry_i_1_n_0\,
      S(2) => \Sum6_add_temp[0]_carry_i_2_n_0\,
      S(1) => \Sum6_add_temp[0]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[0]_carry_i_4_n_0\
    );
\Sum6_add_temp[0]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[0]_carry_n_0\,
      CO(3) => \Sum6_add_temp[0]_carry__0_n_0\,
      CO(2) => \Sum6_add_temp[0]_carry__0_n_1\,
      CO(1) => \Sum6_add_temp[0]_carry__0_n_2\,
      CO(0) => \Sum6_add_temp[0]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[0]\(7 downto 4),
      O(3 downto 0) => \Sum6_add_temp[0]\(7 downto 4),
      S(3) => \Sum6_add_temp[0]_carry__0_i_1_n_0\,
      S(2) => \Sum6_add_temp[0]_carry__0_i_2_n_0\,
      S(1) => \Sum6_add_temp[0]_carry__0_i_3_n_0\,
      S(0) => \Sum6_add_temp[0]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[0]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(7),
      I1 => \Gain8_out1[0]\(7),
      O => \Sum6_add_temp[0]_carry__0_i_1_n_0\
    );
\Sum6_add_temp[0]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(6),
      I1 => \Gain8_out1[0]\(6),
      O => \Sum6_add_temp[0]_carry__0_i_2_n_0\
    );
\Sum6_add_temp[0]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(5),
      I1 => \Gain8_out1[0]\(5),
      O => \Sum6_add_temp[0]_carry__0_i_3_n_0\
    );
\Sum6_add_temp[0]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(4),
      I1 => \Gain8_out1[0]\(4),
      O => \Sum6_add_temp[0]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[0]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[0]_carry__0_n_0\,
      CO(3) => \Sum6_add_temp[0]_carry__1_n_0\,
      CO(2) => \Sum6_add_temp[0]_carry__1_n_1\,
      CO(1) => \Sum6_add_temp[0]_carry__1_n_2\,
      CO(0) => \Sum6_add_temp[0]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \Gain8_out1[0]\(10 downto 8),
      DI(0) => \Sum6_add_temp[0]_carry__1_i_1_n_0\,
      O(3 downto 0) => \Sum6_add_temp[0]\(11 downto 8),
      S(3) => \Sum6_add_temp[0]_carry__1_i_2_n_0\,
      S(2) => \Sum6_add_temp[0]_carry__1_i_3_n_0\,
      S(1) => \Sum6_add_temp[0]_carry__1_i_4_n_0\,
      S(0) => \Sum6_add_temp[0]_carry__1_i_5_n_0\
    );
\Sum6_add_temp[0]_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Gain8_out1[0]\(8),
      O => \Sum6_add_temp[0]_carry__1_i_1_n_0\
    );
\Sum6_add_temp[0]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain8_out1[0]\(10),
      I1 => \Gain8_0_0_carry__1_n_0\,
      O => \Sum6_add_temp[0]_carry__1_i_2_n_0\
    );
\Sum6_add_temp[0]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain8_out1[0]\(9),
      I1 => \Gain8_out1[0]\(10),
      O => \Sum6_add_temp[0]_carry__1_i_3_n_0\
    );
\Sum6_add_temp[0]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain8_out1[0]\(8),
      I1 => \Gain8_out1[0]\(9),
      O => \Sum6_add_temp[0]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[0]_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain8_out1[0]\(8),
      I1 => \Sum6_add_cast[0]\(8),
      O => \Sum6_add_temp[0]_carry__1_i_5_n_0\
    );
\Sum6_add_temp[0]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(3),
      I1 => \Gain8_out1[0]\(3),
      O => \Sum6_add_temp[0]_carry_i_1_n_0\
    );
\Sum6_add_temp[0]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(2),
      I1 => \Gain8_out1[0]\(2),
      O => \Sum6_add_temp[0]_carry_i_2_n_0\
    );
\Sum6_add_temp[0]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(1),
      I1 => \Gain8_out1[0]\(1),
      O => \Sum6_add_temp[0]_carry_i_3_n_0\
    );
\Sum6_add_temp[0]_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[0]\(0),
      I1 => \Gain8_out1[0]\(0),
      O => \Sum6_add_temp[0]_carry_i_4_n_0\
    );
\Sum6_add_temp[1]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum6_add_temp[1]_carry_n_0\,
      CO(2) => \Sum6_add_temp[1]_carry_n_1\,
      CO(1) => \Sum6_add_temp[1]_carry_n_2\,
      CO(0) => \Sum6_add_temp[1]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[1]\(3 downto 0),
      O(3 downto 0) => \Sum6_add_temp[1]\(3 downto 0),
      S(3) => \Sum6_add_temp[1]_carry_i_1_n_0\,
      S(2) => \Sum6_add_temp[1]_carry_i_2_n_0\,
      S(1) => \Sum6_add_temp[1]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[1]_carry_i_4_n_0\
    );
\Sum6_add_temp[1]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[1]_carry_n_0\,
      CO(3) => \Sum6_add_temp[1]_carry__0_n_0\,
      CO(2) => \Sum6_add_temp[1]_carry__0_n_1\,
      CO(1) => \Sum6_add_temp[1]_carry__0_n_2\,
      CO(0) => \Sum6_add_temp[1]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[1]\(7 downto 4),
      O(3 downto 0) => \Sum6_add_temp[1]\(7 downto 4),
      S(3) => \Sum6_add_temp[1]_carry__0_i_1_n_0\,
      S(2) => \Sum6_add_temp[1]_carry__0_i_2_n_0\,
      S(1) => \Sum6_add_temp[1]_carry__0_i_3_n_0\,
      S(0) => \Sum6_add_temp[1]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[1]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(7),
      I1 => \Gain8_out1[1]\(7),
      O => \Sum6_add_temp[1]_carry__0_i_1_n_0\
    );
\Sum6_add_temp[1]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(6),
      I1 => \Gain8_out1[1]\(6),
      O => \Sum6_add_temp[1]_carry__0_i_2_n_0\
    );
\Sum6_add_temp[1]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(5),
      I1 => \Gain8_out1[1]\(5),
      O => \Sum6_add_temp[1]_carry__0_i_3_n_0\
    );
\Sum6_add_temp[1]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(4),
      I1 => \Gain8_out1[1]\(4),
      O => \Sum6_add_temp[1]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[1]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[1]_carry__0_n_0\,
      CO(3) => \Sum6_add_temp[1]_carry__1_n_0\,
      CO(2) => \Sum6_add_temp[1]_carry__1_n_1\,
      CO(1) => \Sum6_add_temp[1]_carry__1_n_2\,
      CO(0) => \Sum6_add_temp[1]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[1]\(11 downto 8),
      O(3 downto 0) => \Sum6_add_temp[1]\(11 downto 8),
      S(3) => \Sum6_add_temp[1]_carry__1_i_1_n_0\,
      S(2) => \Sum6_add_temp[1]_carry__1_i_2_n_0\,
      S(1) => \Sum6_add_temp[1]_carry__1_i_3_n_0\,
      S(0) => \Sum6_add_temp[1]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[1]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(11),
      I1 => \Gain8_out1[1]\(11),
      O => \Sum6_add_temp[1]_carry__1_i_1_n_0\
    );
\Sum6_add_temp[1]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(10),
      I1 => \Gain8_out1[1]\(10),
      O => \Sum6_add_temp[1]_carry__1_i_2_n_0\
    );
\Sum6_add_temp[1]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(9),
      I1 => \Gain8_out1[1]\(9),
      O => \Sum6_add_temp[1]_carry__1_i_3_n_0\
    );
\Sum6_add_temp[1]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(8),
      I1 => \Gain8_out1[1]\(8),
      O => \Sum6_add_temp[1]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[1]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[1]_carry__1_n_0\,
      CO(3 downto 2) => \NLW_Sum6_add_temp[1]_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Sum6_add_temp[1]_carry__2_n_2\,
      CO(0) => \Sum6_add_temp[1]_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \Sum6_add_cast[1]\(13 downto 12),
      O(3) => \NLW_Sum6_add_temp[1]_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \Sum6_add_temp[1]\(14 downto 12),
      S(3) => '0',
      S(2) => \Sum6_add_temp[1]_carry__2_i_1_n_0\,
      S(1) => \Sum6_add_temp[1]_carry__2_i_2_n_0\,
      S(0) => \Sum6_add_temp[1]_carry__2_i_3_n_0\
    );
\Sum6_add_temp[1]_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(14),
      I1 => \Gain8_out1[1]\(14),
      O => \Sum6_add_temp[1]_carry__2_i_1_n_0\
    );
\Sum6_add_temp[1]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(13),
      I1 => \Gain8_out1[1]\(13),
      O => \Sum6_add_temp[1]_carry__2_i_2_n_0\
    );
\Sum6_add_temp[1]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(12),
      I1 => \Gain8_out1[1]\(12),
      O => \Sum6_add_temp[1]_carry__2_i_3_n_0\
    );
\Sum6_add_temp[1]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(3),
      I1 => \Gain8_out1[1]\(3),
      O => \Sum6_add_temp[1]_carry_i_1_n_0\
    );
\Sum6_add_temp[1]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(2),
      I1 => \Gain8_out1[1]\(2),
      O => \Sum6_add_temp[1]_carry_i_2_n_0\
    );
\Sum6_add_temp[1]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(1),
      I1 => \Gain8_out1[1]\(1),
      O => \Sum6_add_temp[1]_carry_i_3_n_0\
    );
\Sum6_add_temp[1]_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[1]\(0),
      I1 => \Gain8_out1[1]\(0),
      O => \Sum6_add_temp[1]_carry_i_4_n_0\
    );
\Sum6_add_temp[2]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum6_add_temp[2]_carry_n_0\,
      CO(2) => \Sum6_add_temp[2]_carry_n_1\,
      CO(1) => \Sum6_add_temp[2]_carry_n_2\,
      CO(0) => \Sum6_add_temp[2]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[2]\(3 downto 0),
      O(3 downto 0) => \Sum6_add_temp[2]\(3 downto 0),
      S(3) => \Sum6_add_temp[2]_carry_i_1_n_0\,
      S(2) => \Sum6_add_temp[2]_carry_i_2_n_0\,
      S(1) => \Sum6_add_temp[2]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[2]_carry_i_4_n_0\
    );
\Sum6_add_temp[2]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[2]_carry_n_0\,
      CO(3) => \Sum6_add_temp[2]_carry__0_n_0\,
      CO(2) => \Sum6_add_temp[2]_carry__0_n_1\,
      CO(1) => \Sum6_add_temp[2]_carry__0_n_2\,
      CO(0) => \Sum6_add_temp[2]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[2]\(7 downto 4),
      O(3 downto 0) => \Sum6_add_temp[2]\(7 downto 4),
      S(3) => \Sum6_add_temp[2]_carry__0_i_1_n_0\,
      S(2) => \Sum6_add_temp[2]_carry__0_i_2_n_0\,
      S(1) => \Sum6_add_temp[2]_carry__0_i_3_n_0\,
      S(0) => \Sum6_add_temp[2]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[2]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(7),
      I1 => \Gain8_out1[2]\(7),
      O => \Sum6_add_temp[2]_carry__0_i_1_n_0\
    );
\Sum6_add_temp[2]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(6),
      I1 => \Gain8_out1[2]\(6),
      O => \Sum6_add_temp[2]_carry__0_i_2_n_0\
    );
\Sum6_add_temp[2]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(5),
      I1 => \Gain8_out1[2]\(5),
      O => \Sum6_add_temp[2]_carry__0_i_3_n_0\
    );
\Sum6_add_temp[2]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(4),
      I1 => \Gain8_out1[2]\(4),
      O => \Sum6_add_temp[2]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[2]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[2]_carry__0_n_0\,
      CO(3) => \Sum6_add_temp[2]_carry__1_n_0\,
      CO(2) => \Sum6_add_temp[2]_carry__1_n_1\,
      CO(1) => \Sum6_add_temp[2]_carry__1_n_2\,
      CO(0) => \Sum6_add_temp[2]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \Gain8_out1[2]\(10 downto 9),
      DI(1) => \Sum6_add_temp[2]_carry__1_i_1_n_0\,
      DI(0) => \Sum6_add_cast[2]\(8),
      O(3 downto 0) => \Sum6_add_temp[2]\(11 downto 8),
      S(3) => \Sum6_add_temp[2]_carry__1_i_2_n_0\,
      S(2) => \Sum6_add_temp[2]_carry__1_i_3_n_0\,
      S(1) => \Sum6_add_temp[2]_carry__1_i_4_n_0\,
      S(0) => \Sum6_add_temp[2]_carry__1_i_5_n_0\
    );
\Sum6_add_temp[2]_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Gain8_out1[2]\(9),
      O => \Sum6_add_temp[2]_carry__1_i_1_n_0\
    );
\Sum6_add_temp[2]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain8_out1[2]\(10),
      I1 => \Gain8_2_0_carry__1_n_0\,
      O => \Sum6_add_temp[2]_carry__1_i_2_n_0\
    );
\Sum6_add_temp[2]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Gain8_out1[2]\(9),
      I1 => \Gain8_out1[2]\(10),
      O => \Sum6_add_temp[2]_carry__1_i_3_n_0\
    );
\Sum6_add_temp[2]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Gain8_out1[2]\(9),
      I1 => \Sum6_add_cast[2]\(9),
      O => \Sum6_add_temp[2]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[2]_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(8),
      I1 => \Gain8_out1[2]\(8),
      O => \Sum6_add_temp[2]_carry__1_i_5_n_0\
    );
\Sum6_add_temp[2]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(3),
      I1 => \Gain8_out1[2]\(3),
      O => \Sum6_add_temp[2]_carry_i_1_n_0\
    );
\Sum6_add_temp[2]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(2),
      I1 => \Gain8_out1[2]\(2),
      O => \Sum6_add_temp[2]_carry_i_2_n_0\
    );
\Sum6_add_temp[2]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(1),
      I1 => \Gain8_out1[2]\(1),
      O => \Sum6_add_temp[2]_carry_i_3_n_0\
    );
\Sum6_add_temp[2]_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[2]\(0),
      I1 => \Gain8_out1[2]\(0),
      O => \Sum6_add_temp[2]_carry_i_4_n_0\
    );
\Sum6_add_temp[3]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Sum6_add_temp[3]_carry_n_0\,
      CO(2) => \Sum6_add_temp[3]_carry_n_1\,
      CO(1) => \Sum6_add_temp[3]_carry_n_2\,
      CO(0) => \Sum6_add_temp[3]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[3]\(3 downto 0),
      O(3 downto 0) => \Sum6_add_temp[3]\(3 downto 0),
      S(3) => \Sum6_add_temp[3]_carry_i_1_n_0\,
      S(2) => \Sum6_add_temp[3]_carry_i_2_n_0\,
      S(1) => \Sum6_add_temp[3]_carry_i_3_n_0\,
      S(0) => \Sum6_add_temp[3]_carry_i_4_n_0\
    );
\Sum6_add_temp[3]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[3]_carry_n_0\,
      CO(3) => \Sum6_add_temp[3]_carry__0_n_0\,
      CO(2) => \Sum6_add_temp[3]_carry__0_n_1\,
      CO(1) => \Sum6_add_temp[3]_carry__0_n_2\,
      CO(0) => \Sum6_add_temp[3]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[3]\(7 downto 4),
      O(3 downto 0) => \Sum6_add_temp[3]\(7 downto 4),
      S(3) => \Sum6_add_temp[3]_carry__0_i_1_n_0\,
      S(2) => \Sum6_add_temp[3]_carry__0_i_2_n_0\,
      S(1) => \Sum6_add_temp[3]_carry__0_i_3_n_0\,
      S(0) => \Sum6_add_temp[3]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[3]_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(7),
      I1 => \Gain8_out1[3]\(7),
      O => \Sum6_add_temp[3]_carry__0_i_1_n_0\
    );
\Sum6_add_temp[3]_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(6),
      I1 => \Gain8_out1[3]\(6),
      O => \Sum6_add_temp[3]_carry__0_i_2_n_0\
    );
\Sum6_add_temp[3]_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(5),
      I1 => \Gain8_out1[3]\(5),
      O => \Sum6_add_temp[3]_carry__0_i_3_n_0\
    );
\Sum6_add_temp[3]_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(4),
      I1 => \Gain8_out1[3]\(4),
      O => \Sum6_add_temp[3]_carry__0_i_4_n_0\
    );
\Sum6_add_temp[3]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[3]_carry__0_n_0\,
      CO(3) => \Sum6_add_temp[3]_carry__1_n_0\,
      CO(2) => \Sum6_add_temp[3]_carry__1_n_1\,
      CO(1) => \Sum6_add_temp[3]_carry__1_n_2\,
      CO(0) => \Sum6_add_temp[3]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Sum6_add_cast[3]\(11 downto 8),
      O(3 downto 0) => \Sum6_add_temp[3]\(11 downto 8),
      S(3) => \Sum6_add_temp[3]_carry__1_i_1_n_0\,
      S(2) => \Sum6_add_temp[3]_carry__1_i_2_n_0\,
      S(1) => \Sum6_add_temp[3]_carry__1_i_3_n_0\,
      S(0) => \Sum6_add_temp[3]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[3]_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(11),
      I1 => \Gain8_out1[3]\(11),
      O => \Sum6_add_temp[3]_carry__1_i_1_n_0\
    );
\Sum6_add_temp[3]_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(10),
      I1 => \Gain8_out1[3]\(10),
      O => \Sum6_add_temp[3]_carry__1_i_2_n_0\
    );
\Sum6_add_temp[3]_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(9),
      I1 => \Gain8_out1[3]\(9),
      O => \Sum6_add_temp[3]_carry__1_i_3_n_0\
    );
\Sum6_add_temp[3]_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(8),
      I1 => \Gain8_out1[3]\(8),
      O => \Sum6_add_temp[3]_carry__1_i_4_n_0\
    );
\Sum6_add_temp[3]_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum6_add_temp[3]_carry__1_n_0\,
      CO(3 downto 2) => \NLW_Sum6_add_temp[3]_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Sum6_add_temp[3]_carry__2_n_2\,
      CO(0) => \Sum6_add_temp[3]_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \Sum6_add_cast[3]\(13 downto 12),
      O(3) => \NLW_Sum6_add_temp[3]_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => \Sum6_add_temp[3]\(14 downto 12),
      S(3) => '0',
      S(2) => \Sum6_add_temp[3]_carry__2_i_1_n_0\,
      S(1) => \Sum6_add_temp[3]_carry__2_i_2_n_0\,
      S(0) => \Sum6_add_temp[3]_carry__2_i_3_n_0\
    );
\Sum6_add_temp[3]_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(14),
      I1 => \Gain8_out1[3]\(14),
      O => \Sum6_add_temp[3]_carry__2_i_1_n_0\
    );
\Sum6_add_temp[3]_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(13),
      I1 => \Gain8_out1[3]\(13),
      O => \Sum6_add_temp[3]_carry__2_i_2_n_0\
    );
\Sum6_add_temp[3]_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(12),
      I1 => \Gain8_out1[3]\(12),
      O => \Sum6_add_temp[3]_carry__2_i_3_n_0\
    );
\Sum6_add_temp[3]_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(3),
      I1 => \Gain8_out1[3]\(3),
      O => \Sum6_add_temp[3]_carry_i_1_n_0\
    );
\Sum6_add_temp[3]_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(2),
      I1 => \Gain8_out1[3]\(2),
      O => \Sum6_add_temp[3]_carry_i_2_n_0\
    );
\Sum6_add_temp[3]_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(1),
      I1 => \Gain8_out1[3]\(1),
      O => \Sum6_add_temp[3]_carry_i_3_n_0\
    );
\Sum6_add_temp[3]_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Sum6_add_cast[3]\(0),
      I1 => \Gain8_out1[3]\(0),
      O => \Sum6_add_temp[3]_carry_i_4_n_0\
    );
Sum_sub_temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Sum_sub_temp_carry_n_0,
      CO(2) => Sum_sub_temp_carry_n_1,
      CO(1) => Sum_sub_temp_carry_n_2,
      CO(0) => Sum_sub_temp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => angle(3 downto 0),
      O(3 downto 0) => NLW_Sum_sub_temp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => Sum_sub_temp_carry_i_1_n_0,
      S(2) => Sum_sub_temp_carry_i_2_n_0,
      S(1) => Sum_sub_temp_carry_i_3_n_0,
      S(0) => Sum_sub_temp_carry_i_4_n_0
    );
\Sum_sub_temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Sum_sub_temp_carry_n_0,
      CO(3) => \Sum_sub_temp_carry__0_n_0\,
      CO(2) => \Sum_sub_temp_carry__0_n_1\,
      CO(1) => \Sum_sub_temp_carry__0_n_2\,
      CO(0) => \Sum_sub_temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angle(7 downto 4),
      O(3 downto 0) => \NLW_Sum_sub_temp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \Sum_sub_temp_carry__0_i_1_n_0\,
      S(2) => \Sum_sub_temp_carry__0_i_2_n_0\,
      S(1) => \Sum_sub_temp_carry__0_i_3_n_0\,
      S(0) => \Sum_sub_temp_carry__0_i_4_n_0\
    );
\Sum_sub_temp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(7),
      I1 => desired_angle(7),
      O => \Sum_sub_temp_carry__0_i_1_n_0\
    );
\Sum_sub_temp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(6),
      I1 => desired_angle(6),
      O => \Sum_sub_temp_carry__0_i_2_n_0\
    );
\Sum_sub_temp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(5),
      I1 => desired_angle(5),
      O => \Sum_sub_temp_carry__0_i_3_n_0\
    );
\Sum_sub_temp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(4),
      I1 => desired_angle(4),
      O => \Sum_sub_temp_carry__0_i_4_n_0\
    );
\Sum_sub_temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_sub_temp_carry__0_n_0\,
      CO(3) => \Sum_sub_temp_carry__1_n_0\,
      CO(2) => \Sum_sub_temp_carry__1_n_1\,
      CO(1) => \Sum_sub_temp_carry__1_n_2\,
      CO(0) => \Sum_sub_temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => angle(11 downto 8),
      O(3 downto 2) => Sum_sub_temp(11 downto 10),
      O(1 downto 0) => \NLW_Sum_sub_temp_carry__1_O_UNCONNECTED\(1 downto 0),
      S(3) => \Sum_sub_temp_carry__1_i_1_n_0\,
      S(2) => \Sum_sub_temp_carry__1_i_2_n_0\,
      S(1) => \Sum_sub_temp_carry__1_i_3_n_0\,
      S(0) => \Sum_sub_temp_carry__1_i_4_n_0\
    );
\Sum_sub_temp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(11),
      I1 => desired_angle(11),
      O => \Sum_sub_temp_carry__1_i_1_n_0\
    );
\Sum_sub_temp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(10),
      I1 => desired_angle(10),
      O => \Sum_sub_temp_carry__1_i_2_n_0\
    );
\Sum_sub_temp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(9),
      I1 => desired_angle(9),
      O => \Sum_sub_temp_carry__1_i_3_n_0\
    );
\Sum_sub_temp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(8),
      I1 => desired_angle(8),
      O => \Sum_sub_temp_carry__1_i_4_n_0\
    );
\Sum_sub_temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sum_sub_temp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_Sum_sub_temp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Sum_sub_temp_carry__2_n_2\,
      CO(0) => \Sum_sub_temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => angle(13 downto 12),
      O(3) => \NLW_Sum_sub_temp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => Sum_sub_temp(14 downto 12),
      S(3) => '0',
      S(2) => \Sum_sub_temp_carry__2_i_1_n_0\,
      S(1) => \Sum_sub_temp_carry__2_i_2_n_0\,
      S(0) => \Sum_sub_temp_carry__2_i_3_n_0\
    );
\Sum_sub_temp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(14),
      I1 => desired_angle(14),
      O => \Sum_sub_temp_carry__2_i_1_n_0\
    );
\Sum_sub_temp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(13),
      I1 => desired_angle(13),
      O => \Sum_sub_temp_carry__2_i_2_n_0\
    );
\Sum_sub_temp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(12),
      I1 => desired_angle(12),
      O => \Sum_sub_temp_carry__2_i_3_n_0\
    );
Sum_sub_temp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(3),
      I1 => desired_angle(3),
      O => Sum_sub_temp_carry_i_1_n_0
    );
Sum_sub_temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(2),
      I1 => desired_angle(2),
      O => Sum_sub_temp_carry_i_2_n_0
    );
Sum_sub_temp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(1),
      I1 => desired_angle(1),
      O => Sum_sub_temp_carry_i_3_n_0
    );
Sum_sub_temp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => angle(0),
      I1 => desired_angle(0),
      O => Sum_sub_temp_carry_i_4_n_0
    );
\Unit_Delay2_out1_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(0),
      Q => \Unit_Delay2_out1_reg[0]\(0)
    );
\Unit_Delay2_out1_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(10),
      Q => \Unit_Delay2_out1_reg[0]\(10)
    );
\Unit_Delay2_out1_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(11),
      Q => \Unit_Delay2_out1_reg[0]\(11)
    );
\Unit_Delay2_out1_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(12),
      Q => \Unit_Delay2_out1_reg[0]\(12)
    );
\Unit_Delay2_out1_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(13),
      Q => \Unit_Delay2_out1_reg[0]\(13)
    );
\Unit_Delay2_out1_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(14),
      Q => \Unit_Delay2_out1_reg[0]\(14)
    );
\Unit_Delay2_out1_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(15),
      Q => \Unit_Delay2_out1_reg[0]\(15)
    );
\Unit_Delay2_out1_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(1),
      Q => \Unit_Delay2_out1_reg[0]\(1)
    );
\Unit_Delay2_out1_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(2),
      Q => \Unit_Delay2_out1_reg[0]\(2)
    );
\Unit_Delay2_out1_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(3),
      Q => \Unit_Delay2_out1_reg[0]\(3)
    );
\Unit_Delay2_out1_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(4),
      Q => \Unit_Delay2_out1_reg[0]\(4)
    );
\Unit_Delay2_out1_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(5),
      Q => \Unit_Delay2_out1_reg[0]\(5)
    );
\Unit_Delay2_out1_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(6),
      Q => \Unit_Delay2_out1_reg[0]\(6)
    );
\Unit_Delay2_out1_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(7),
      Q => \Unit_Delay2_out1_reg[0]\(7)
    );
\Unit_Delay2_out1_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(8),
      Q => \Unit_Delay2_out1_reg[0]\(8)
    );
\Unit_Delay2_out1_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[0]\(9),
      Q => \Unit_Delay2_out1_reg[0]\(9)
    );
\Unit_Delay2_out1_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(0),
      Q => \Unit_Delay2_out1_reg[1]\(0)
    );
\Unit_Delay2_out1_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(10),
      Q => \Unit_Delay2_out1_reg[1]\(10)
    );
\Unit_Delay2_out1_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(11),
      Q => \Unit_Delay2_out1_reg[1]\(11)
    );
\Unit_Delay2_out1_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(12),
      Q => \Unit_Delay2_out1_reg[1]\(12)
    );
\Unit_Delay2_out1_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(13),
      Q => \Unit_Delay2_out1_reg[1]\(13)
    );
\Unit_Delay2_out1_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(14),
      Q => \Unit_Delay2_out1_reg[1]\(14)
    );
\Unit_Delay2_out1_reg[1][15]_rep\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep_n_0\
    );
\Unit_Delay2_out1_reg[1][15]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\
    );
\Unit_Delay2_out1_reg[1][15]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\
    );
\Unit_Delay2_out1_reg[1][15]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\
    );
\Unit_Delay2_out1_reg[1][15]_rep__3\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\
    );
\Unit_Delay2_out1_reg[1][15]_rep__4\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(15),
      Q => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\
    );
\Unit_Delay2_out1_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(1),
      Q => \Unit_Delay2_out1_reg[1]\(1)
    );
\Unit_Delay2_out1_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(2),
      Q => \Unit_Delay2_out1_reg[1]\(2)
    );
\Unit_Delay2_out1_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(3),
      Q => \Unit_Delay2_out1_reg[1]\(3)
    );
\Unit_Delay2_out1_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(4),
      Q => \Unit_Delay2_out1_reg[1]\(4)
    );
\Unit_Delay2_out1_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(5),
      Q => \Unit_Delay2_out1_reg[1]\(5)
    );
\Unit_Delay2_out1_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(6),
      Q => \Unit_Delay2_out1_reg[1]\(6)
    );
\Unit_Delay2_out1_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(7),
      Q => \Unit_Delay2_out1_reg[1]\(7)
    );
\Unit_Delay2_out1_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(8),
      Q => \Unit_Delay2_out1_reg[1]\(8)
    );
\Unit_Delay2_out1_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[1]\(9),
      Q => \Unit_Delay2_out1_reg[1]\(9)
    );
\Unit_Delay2_out1_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(0),
      Q => \Unit_Delay2_out1_reg[2]\(0)
    );
\Unit_Delay2_out1_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(10),
      Q => \Unit_Delay2_out1_reg[2]\(10)
    );
\Unit_Delay2_out1_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(11),
      Q => \Unit_Delay2_out1_reg[2]\(11)
    );
\Unit_Delay2_out1_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(12),
      Q => \Unit_Delay2_out1_reg[2]\(12)
    );
\Unit_Delay2_out1_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(13),
      Q => \Unit_Delay2_out1_reg[2]\(13)
    );
\Unit_Delay2_out1_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(14),
      Q => \Unit_Delay2_out1_reg[2]\(14)
    );
\Unit_Delay2_out1_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2]\(15)
    );
\Unit_Delay2_out1_reg[2][15]_rep\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2][15]_rep_n_0\
    );
\Unit_Delay2_out1_reg[2][15]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\
    );
\Unit_Delay2_out1_reg[2][15]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\
    );
\Unit_Delay2_out1_reg[2][15]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\
    );
\Unit_Delay2_out1_reg[2][15]_rep__3\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(15),
      Q => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\
    );
\Unit_Delay2_out1_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(1),
      Q => \Unit_Delay2_out1_reg[2]\(1)
    );
\Unit_Delay2_out1_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(2),
      Q => \Unit_Delay2_out1_reg[2]\(2)
    );
\Unit_Delay2_out1_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(3),
      Q => \Unit_Delay2_out1_reg[2]\(3)
    );
\Unit_Delay2_out1_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(4),
      Q => \Unit_Delay2_out1_reg[2]\(4)
    );
\Unit_Delay2_out1_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(5),
      Q => \Unit_Delay2_out1_reg[2]\(5)
    );
\Unit_Delay2_out1_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(6),
      Q => \Unit_Delay2_out1_reg[2]\(6)
    );
\Unit_Delay2_out1_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(7),
      Q => \Unit_Delay2_out1_reg[2]\(7)
    );
\Unit_Delay2_out1_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(8),
      Q => \Unit_Delay2_out1_reg[2]\(8)
    );
\Unit_Delay2_out1_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[2]\(9),
      Q => \Unit_Delay2_out1_reg[2]\(9)
    );
\Unit_Delay2_out1_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(0),
      Q => \Unit_Delay2_out1_reg[3]\(0)
    );
\Unit_Delay2_out1_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(10),
      Q => \Unit_Delay2_out1_reg[3]\(10)
    );
\Unit_Delay2_out1_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(11),
      Q => \Unit_Delay2_out1_reg[3]\(11)
    );
\Unit_Delay2_out1_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(12),
      Q => \Unit_Delay2_out1_reg[3]\(12)
    );
\Unit_Delay2_out1_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(13),
      Q => \Unit_Delay2_out1_reg[3]\(13)
    );
\Unit_Delay2_out1_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(14),
      Q => \Unit_Delay2_out1_reg[3]\(14)
    );
\Unit_Delay2_out1_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3]\(15)
    );
\Unit_Delay2_out1_reg[3][15]_rep\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3][15]_rep_n_0\
    );
\Unit_Delay2_out1_reg[3][15]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\
    );
\Unit_Delay2_out1_reg[3][15]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\
    );
\Unit_Delay2_out1_reg[3][15]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\
    );
\Unit_Delay2_out1_reg[3][15]_rep__3\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(15),
      Q => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\
    );
\Unit_Delay2_out1_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(1),
      Q => \Unit_Delay2_out1_reg[3]\(1)
    );
\Unit_Delay2_out1_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(2),
      Q => \Unit_Delay2_out1_reg[3]\(2)
    );
\Unit_Delay2_out1_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(3),
      Q => \Unit_Delay2_out1_reg[3]\(3)
    );
\Unit_Delay2_out1_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(4),
      Q => \Unit_Delay2_out1_reg[3]\(4)
    );
\Unit_Delay2_out1_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(5),
      Q => \Unit_Delay2_out1_reg[3]\(5)
    );
\Unit_Delay2_out1_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(6),
      Q => \Unit_Delay2_out1_reg[3]\(6)
    );
\Unit_Delay2_out1_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(7),
      Q => \Unit_Delay2_out1_reg[3]\(7)
    );
\Unit_Delay2_out1_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(8),
      Q => \Unit_Delay2_out1_reg[3]\(8)
    );
\Unit_Delay2_out1_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => IPCORE_CLK,
      CE => '1',
      CLR => reset,
      D => \Sum4_out1[3]\(9),
      Q => \Unit_Delay2_out1_reg[3]\(9)
    );
dtc_out_62_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dtc_out_62_carry_n_0,
      CO(2) => dtc_out_62_carry_n_1,
      CO(1) => dtc_out_62_carry_n_2,
      CO(0) => dtc_out_62_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_dtc_out_62_carry_O_UNCONNECTED(3 downto 0),
      S(3) => dtc_out_62_carry_i_1_n_0,
      S(2) => dtc_out_62_carry_i_2_n_0,
      S(1) => dtc_out_62_carry_i_3_n_0,
      S(0) => dtc_out_62_carry_i_4_n_0
    );
\dtc_out_62_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dtc_out_62_carry_n_0,
      CO(3 downto 1) => \NLW_dtc_out_62_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => dtc_out_62,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => \NLW_dtc_out_62_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \dtc_out_62_carry__0_i_1_n_0\
    );
\dtc_out_62_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A(14),
      I1 => A(13),
      I2 => A(12),
      O => \dtc_out_62_carry__0_i_1_n_0\
    );
dtc_out_62_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A(11),
      I1 => A(10),
      I2 => A(9),
      O => dtc_out_62_carry_i_1_n_0
    );
dtc_out_62_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A(8),
      I1 => A(7),
      I2 => A(6),
      O => dtc_out_62_carry_i_2_n_0
    );
dtc_out_62_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A(5),
      I1 => A(4),
      I2 => A(3),
      O => dtc_out_62_carry_i_3_n_0
    );
dtc_out_62_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A(2),
      I1 => A(1),
      I2 => A(0),
      O => dtc_out_62_carry_i_4_n_0
    );
mul_Gain6_dotp_1_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(28) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(27) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(26) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(25) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(24) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(23) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(22) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(21) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(20) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(19) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(18) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(17) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(16) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(15) => \Unit_Delay2_out1_reg[1][15]_rep__2_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[1]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111110110110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_mul_Gain6_dotp_1_mul_temp_P_UNCONNECTED(47 downto 24),
      P(23) => tmp_Gain6_dotp_10,
      P(22) => mul_Gain6_dotp_1_mul_temp_n_83,
      P(21) => mul_Gain6_dotp_1_mul_temp_n_84,
      P(20) => mul_Gain6_dotp_1_mul_temp_n_85,
      P(19) => mul_Gain6_dotp_1_mul_temp_n_86,
      P(18) => mul_Gain6_dotp_1_mul_temp_n_87,
      P(17) => mul_Gain6_dotp_1_mul_temp_n_88,
      P(16) => mul_Gain6_dotp_1_mul_temp_n_89,
      P(15) => mul_Gain6_dotp_1_mul_temp_n_90,
      P(14) => mul_Gain6_dotp_1_mul_temp_n_91,
      P(13) => mul_Gain6_dotp_1_mul_temp_n_92,
      P(12) => mul_Gain6_dotp_1_mul_temp_n_93,
      P(11) => mul_Gain6_dotp_1_mul_temp_n_94,
      P(10) => mul_Gain6_dotp_1_mul_temp_n_95,
      P(9) => mul_Gain6_dotp_1_mul_temp_n_96,
      P(8) => mul_Gain6_dotp_1_mul_temp_n_97,
      P(7) => mul_Gain6_dotp_1_mul_temp_n_98,
      P(6) => mul_Gain6_dotp_1_mul_temp_n_99,
      P(5) => mul_Gain6_dotp_1_mul_temp_n_100,
      P(4) => mul_Gain6_dotp_1_mul_temp_n_101,
      P(3) => mul_Gain6_dotp_1_mul_temp_n_102,
      P(2) => mul_Gain6_dotp_1_mul_temp_n_103,
      P(1) => mul_Gain6_dotp_1_mul_temp_n_104,
      P(0) => mul_Gain6_dotp_1_mul_temp_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_1_mul_temp_2: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(28) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(27) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(26) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(25) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(24) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(23) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(22) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(21) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(20) => \Unit_Delay2_out1_reg[1][15]_rep__4_n_0\,
      A(19) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(18) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(17) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(16) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(15) => \Unit_Delay2_out1_reg[1][15]_rep__3_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[1]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000011111111100011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_mul_Gain6_dotp_1_mul_temp_2_P_UNCONNECTED(47 downto 31),
      P(30) => mul_Gain6_dotp_1_mul_temp_2_n_75,
      P(29 downto 14) => tmp_Gain6_dotp_1_2(15 downto 0),
      P(13) => mul_Gain6_dotp_1_mul_temp_2_n_92,
      P(12) => mul_Gain6_dotp_1_mul_temp_2_n_93,
      P(11) => mul_Gain6_dotp_1_mul_temp_2_n_94,
      P(10) => mul_Gain6_dotp_1_mul_temp_2_n_95,
      P(9) => mul_Gain6_dotp_1_mul_temp_2_n_96,
      P(8) => mul_Gain6_dotp_1_mul_temp_2_n_97,
      P(7) => mul_Gain6_dotp_1_mul_temp_2_n_98,
      P(6) => mul_Gain6_dotp_1_mul_temp_2_n_99,
      P(5) => mul_Gain6_dotp_1_mul_temp_2_n_100,
      P(4) => mul_Gain6_dotp_1_mul_temp_2_n_101,
      P(3) => mul_Gain6_dotp_1_mul_temp_2_n_102,
      P(2) => mul_Gain6_dotp_1_mul_temp_2_n_103,
      P(1) => mul_Gain6_dotp_1_mul_temp_2_n_104,
      P(0) => mul_Gain6_dotp_1_mul_temp_2_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_1_mul_temp_3: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(28) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(27) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(26) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(25) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(24) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(23) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(22) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(21) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(20) => \Unit_Delay2_out1_reg[1][15]_rep__1_n_0\,
      A(19) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(18) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(17) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(16) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(15) => \Unit_Delay2_out1_reg[1][15]_rep__0_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[1]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_3_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000010100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_3_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_3_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_1_mul_temp_3_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_3_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_mul_Gain6_dotp_1_mul_temp_3_P_UNCONNECTED(47 downto 25),
      P(24 downto 14) => tmp_Gain6_dotp_1_3(10 downto 0),
      P(13) => mul_Gain6_dotp_1_mul_temp_3_n_92,
      P(12) => mul_Gain6_dotp_1_mul_temp_3_n_93,
      P(11) => mul_Gain6_dotp_1_mul_temp_3_n_94,
      P(10) => mul_Gain6_dotp_1_mul_temp_3_n_95,
      P(9) => mul_Gain6_dotp_1_mul_temp_3_n_96,
      P(8) => mul_Gain6_dotp_1_mul_temp_3_n_97,
      P(7) => mul_Gain6_dotp_1_mul_temp_3_n_98,
      P(6) => mul_Gain6_dotp_1_mul_temp_3_n_99,
      P(5) => mul_Gain6_dotp_1_mul_temp_3_n_100,
      P(4) => mul_Gain6_dotp_1_mul_temp_3_n_101,
      P(3) => mul_Gain6_dotp_1_mul_temp_3_n_102,
      P(2) => mul_Gain6_dotp_1_mul_temp_3_n_103,
      P(1) => mul_Gain6_dotp_1_mul_temp_3_n_104,
      P(0) => mul_Gain6_dotp_1_mul_temp_3_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_1_mul_temp_3_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_1_mul_temp_3_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_1_mul_temp_3_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_2_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(28) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(27) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(26) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(25) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(24) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(23) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(22) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(21) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(20) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(19) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(18) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(17) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(16) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(15) => \Unit_Delay2_out1_reg[2][15]_rep_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[2]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000001001111110110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_2_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_2_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 30) => NLW_mul_Gain6_dotp_2_mul_temp_P_UNCONNECTED(47 downto 30),
      P(29 downto 14) => tmp_Gain6_dotp_2(15 downto 0),
      P(13) => mul_Gain6_dotp_2_mul_temp_n_92,
      P(12) => mul_Gain6_dotp_2_mul_temp_n_93,
      P(11) => mul_Gain6_dotp_2_mul_temp_n_94,
      P(10) => mul_Gain6_dotp_2_mul_temp_n_95,
      P(9) => mul_Gain6_dotp_2_mul_temp_n_96,
      P(8) => mul_Gain6_dotp_2_mul_temp_n_97,
      P(7) => mul_Gain6_dotp_2_mul_temp_n_98,
      P(6) => mul_Gain6_dotp_2_mul_temp_n_99,
      P(5) => mul_Gain6_dotp_2_mul_temp_n_100,
      P(4) => mul_Gain6_dotp_2_mul_temp_n_101,
      P(3) => mul_Gain6_dotp_2_mul_temp_n_102,
      P(2) => mul_Gain6_dotp_2_mul_temp_n_103,
      P(1) => mul_Gain6_dotp_2_mul_temp_n_104,
      P(0) => mul_Gain6_dotp_2_mul_temp_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_2_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_2_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_2_mul_temp_1: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(28) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(27) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(26) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(25) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(24) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(23) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(22) => \Unit_Delay2_out1_reg[2][15]_rep__3_n_0\,
      A(21) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(20) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(19) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(18) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(17) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(16) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(15) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[2]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100000000011010",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_2_mul_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_mul_Gain6_dotp_2_mul_temp_1_P_UNCONNECTED(47 downto 32),
      P(31) => mul_Gain6_dotp_2_mul_temp_1_n_74,
      P(30) => mul_Gain6_dotp_2_mul_temp_1_n_75,
      P(29 downto 14) => tmp_Gain6_dotp_2_1(15 downto 0),
      P(13) => mul_Gain6_dotp_2_mul_temp_1_n_92,
      P(12) => mul_Gain6_dotp_2_mul_temp_1_n_93,
      P(11) => mul_Gain6_dotp_2_mul_temp_1_n_94,
      P(10) => mul_Gain6_dotp_2_mul_temp_1_n_95,
      P(9) => mul_Gain6_dotp_2_mul_temp_1_n_96,
      P(8) => mul_Gain6_dotp_2_mul_temp_1_n_97,
      P(7) => mul_Gain6_dotp_2_mul_temp_1_n_98,
      P(6) => mul_Gain6_dotp_2_mul_temp_1_n_99,
      P(5) => mul_Gain6_dotp_2_mul_temp_1_n_100,
      P(4) => mul_Gain6_dotp_2_mul_temp_1_n_101,
      P(3) => mul_Gain6_dotp_2_mul_temp_1_n_102,
      P(2) => mul_Gain6_dotp_2_mul_temp_1_n_103,
      P(1) => mul_Gain6_dotp_2_mul_temp_1_n_104,
      P(0) => mul_Gain6_dotp_2_mul_temp_1_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_2_mul_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_1_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_1_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_2_mul_temp_2: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(28) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(27) => \Unit_Delay2_out1_reg[2][15]_rep__2_n_0\,
      A(26) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(25) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(24) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(23) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(22) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(21) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(20) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(19) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(18) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(17) => \Unit_Delay2_out1_reg[2][15]_rep__1_n_0\,
      A(16) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(15) => \Unit_Delay2_out1_reg[2][15]_rep__0_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[2]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000110110101",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_2_mul_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_mul_Gain6_dotp_2_mul_temp_2_P_UNCONNECTED(47 downto 26),
      P(25 downto 14) => tmp_Gain6_dotp_2_2(11 downto 0),
      P(13) => mul_Gain6_dotp_2_mul_temp_2_n_92,
      P(12) => mul_Gain6_dotp_2_mul_temp_2_n_93,
      P(11) => mul_Gain6_dotp_2_mul_temp_2_n_94,
      P(10) => mul_Gain6_dotp_2_mul_temp_2_n_95,
      P(9) => mul_Gain6_dotp_2_mul_temp_2_n_96,
      P(8) => mul_Gain6_dotp_2_mul_temp_2_n_97,
      P(7) => mul_Gain6_dotp_2_mul_temp_2_n_98,
      P(6) => mul_Gain6_dotp_2_mul_temp_2_n_99,
      P(5) => mul_Gain6_dotp_2_mul_temp_2_n_100,
      P(4) => mul_Gain6_dotp_2_mul_temp_2_n_101,
      P(3) => mul_Gain6_dotp_2_mul_temp_2_n_102,
      P(2) => mul_Gain6_dotp_2_mul_temp_2_n_103,
      P(1) => mul_Gain6_dotp_2_mul_temp_2_n_104,
      P(0) => mul_Gain6_dotp_2_mul_temp_2_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_2_mul_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_2_mul_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_2_mul_temp_2_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_3_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(28) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(27) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(26) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(25) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(24) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(23) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(22) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(21) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(20) => \Unit_Delay2_out1_reg[3][15]_rep__1_n_0\,
      A(19) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(18) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(17) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(16) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(15) => \Unit_Delay2_out1_reg[3][15]_rep__0_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[3]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100000000011010",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_3_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_3_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_3_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_mul_Gain6_dotp_3_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => mul_Gain6_dotp_3_mul_temp_n_74,
      P(30) => mul_Gain6_dotp_3_mul_temp_n_75,
      P(29 downto 14) => tmp_Gain6_dotp_3(15 downto 0),
      P(13) => mul_Gain6_dotp_3_mul_temp_n_92,
      P(12) => mul_Gain6_dotp_3_mul_temp_n_93,
      P(11) => mul_Gain6_dotp_3_mul_temp_n_94,
      P(10) => mul_Gain6_dotp_3_mul_temp_n_95,
      P(9) => mul_Gain6_dotp_3_mul_temp_n_96,
      P(8) => mul_Gain6_dotp_3_mul_temp_n_97,
      P(7) => mul_Gain6_dotp_3_mul_temp_n_98,
      P(6) => mul_Gain6_dotp_3_mul_temp_n_99,
      P(5) => mul_Gain6_dotp_3_mul_temp_n_100,
      P(4) => mul_Gain6_dotp_3_mul_temp_n_101,
      P(3) => mul_Gain6_dotp_3_mul_temp_n_102,
      P(2) => mul_Gain6_dotp_3_mul_temp_n_103,
      P(1) => mul_Gain6_dotp_3_mul_temp_n_104,
      P(0) => mul_Gain6_dotp_3_mul_temp_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_3_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_3_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_3_mul_temp_UNDERFLOW_UNCONNECTED
    );
mul_Gain6_dotp_3_mul_temp_1: unisim.vcomponents.DSP48E1
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
      A(29) => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\,
      A(28) => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\,
      A(27) => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\,
      A(26) => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\,
      A(25) => \Unit_Delay2_out1_reg[3][15]_rep__3_n_0\,
      A(24) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(23) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(22) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(21) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(20) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(19) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(18) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(17) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(16) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(15) => \Unit_Delay2_out1_reg[3][15]_rep__2_n_0\,
      A(14 downto 0) => \Unit_Delay2_out1_reg[3]\(14 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000010100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain6_dotp_3_mul_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain6_dotp_3_mul_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_mul_Gain6_dotp_3_mul_temp_1_P_UNCONNECTED(47 downto 25),
      P(24 downto 14) => tmp_Gain6_dotp_3_1(10 downto 0),
      P(13) => mul_Gain6_dotp_3_mul_temp_1_n_92,
      P(12) => mul_Gain6_dotp_3_mul_temp_1_n_93,
      P(11) => mul_Gain6_dotp_3_mul_temp_1_n_94,
      P(10) => mul_Gain6_dotp_3_mul_temp_1_n_95,
      P(9) => mul_Gain6_dotp_3_mul_temp_1_n_96,
      P(8) => mul_Gain6_dotp_3_mul_temp_1_n_97,
      P(7) => mul_Gain6_dotp_3_mul_temp_1_n_98,
      P(6) => mul_Gain6_dotp_3_mul_temp_1_n_99,
      P(5) => mul_Gain6_dotp_3_mul_temp_1_n_100,
      P(4) => mul_Gain6_dotp_3_mul_temp_1_n_101,
      P(3) => mul_Gain6_dotp_3_mul_temp_1_n_102,
      P(2) => mul_Gain6_dotp_3_mul_temp_1_n_103,
      P(1) => mul_Gain6_dotp_3_mul_temp_1_n_104,
      P(0) => mul_Gain6_dotp_3_mul_temp_1_n_105,
      PATTERNBDETECT => NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain6_dotp_3_mul_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain6_dotp_3_mul_temp_1_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain6_dotp_3_mul_temp_1_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_0_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => \Sum5_sub_cast[0]\(15 downto 11),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111101110000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_0_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_0_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_mul_Gain8_dotp_0_mul_temp_P_UNCONNECTED(47 downto 25),
      P(24 downto 15) => tmp_Gain8_dotp_0(9 downto 0),
      P(14) => mul_Gain8_dotp_0_mul_temp_n_91,
      P(13) => mul_Gain8_dotp_0_mul_temp_n_92,
      P(12) => mul_Gain8_dotp_0_mul_temp_n_93,
      P(11) => mul_Gain8_dotp_0_mul_temp_n_94,
      P(10) => mul_Gain8_dotp_0_mul_temp_n_95,
      P(9) => mul_Gain8_dotp_0_mul_temp_n_96,
      P(8) => mul_Gain8_dotp_0_mul_temp_n_97,
      P(7) => mul_Gain8_dotp_0_mul_temp_n_98,
      P(6) => mul_Gain8_dotp_0_mul_temp_n_99,
      P(5) => mul_Gain8_dotp_0_mul_temp_n_100,
      P(4) => mul_Gain8_dotp_0_mul_temp_n_101,
      P(3) => mul_Gain8_dotp_0_mul_temp_n_102,
      P(2) => mul_Gain8_dotp_0_mul_temp_n_103,
      P(1) => mul_Gain8_dotp_0_mul_temp_n_104,
      P(0) => mul_Gain8_dotp_0_mul_temp_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_0_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_0_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_0_mul_temp_2: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => \Sum5_sub_cast[0]\(15 downto 11),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000101011010011000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_0_mul_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_mul_Gain8_dotp_0_mul_temp_2_P_UNCONNECTED(47 downto 32),
      P(31) => mul_Gain8_dotp_0_mul_temp_2_n_74,
      P(30) => mul_Gain8_dotp_0_mul_temp_2_n_75,
      P(29 downto 15) => tmp_Gain8_dotp_0_2(14 downto 0),
      P(14) => mul_Gain8_dotp_0_mul_temp_2_n_91,
      P(13) => mul_Gain8_dotp_0_mul_temp_2_n_92,
      P(12) => mul_Gain8_dotp_0_mul_temp_2_n_93,
      P(11) => mul_Gain8_dotp_0_mul_temp_2_n_94,
      P(10) => mul_Gain8_dotp_0_mul_temp_2_n_95,
      P(9) => mul_Gain8_dotp_0_mul_temp_2_n_96,
      P(8) => mul_Gain8_dotp_0_mul_temp_2_n_97,
      P(7) => mul_Gain8_dotp_0_mul_temp_2_n_98,
      P(6) => mul_Gain8_dotp_0_mul_temp_2_n_99,
      P(5) => mul_Gain8_dotp_0_mul_temp_2_n_100,
      P(4) => mul_Gain8_dotp_0_mul_temp_2_n_101,
      P(3) => mul_Gain8_dotp_0_mul_temp_2_n_102,
      P(2) => mul_Gain8_dotp_0_mul_temp_2_n_103,
      P(1) => mul_Gain8_dotp_0_mul_temp_2_n_104,
      P(0) => mul_Gain8_dotp_0_mul_temp_2_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_0_mul_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_2_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_0_mul_temp_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(63),
      I1 => \Gain2_mul_temp__3\(62),
      O => \Sum5_sub_cast[0]\(15)
    );
mul_Gain8_dotp_0_mul_temp_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(63),
      I1 => \Gain2_mul_temp__3\(61),
      I2 => \Gain2_mul_temp__3\(62),
      O => \Sum5_sub_cast[0]\(14)
    );
mul_Gain8_dotp_0_mul_temp_2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(63),
      I1 => \Gain2_mul_temp__3\(60),
      I2 => \Gain2_mul_temp__3\(62),
      O => \Sum5_sub_cast[0]\(13)
    );
mul_Gain8_dotp_0_mul_temp_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(63),
      I1 => \Gain2_mul_temp__3\(59),
      I2 => \Gain2_mul_temp__3\(62),
      O => \Sum5_sub_cast[0]\(12)
    );
mul_Gain8_dotp_0_mul_temp_2_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \Gain2_mul_temp__3\(59),
      I1 => \Gain2_mul_temp__3\(60),
      I2 => \Gain2_mul_temp__3\(61),
      I3 => \Gain2_mul_temp__3\(62),
      I4 => \Gain2_mul_temp__3\(63),
      O => \Sum5_sub_cast[0]\(11)
    );
mul_Gain8_dotp_0_mul_temp_3: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => \Sum5_sub_cast[0]\(15 downto 11),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_3_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000101010001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_3_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_3_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_0_mul_temp_3_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_3_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_mul_Gain8_dotp_0_mul_temp_3_P_UNCONNECTED(47 downto 26),
      P(25 downto 15) => tmp_Gain8_dotp_0_3(10 downto 0),
      P(14) => mul_Gain8_dotp_0_mul_temp_3_n_91,
      P(13) => mul_Gain8_dotp_0_mul_temp_3_n_92,
      P(12) => mul_Gain8_dotp_0_mul_temp_3_n_93,
      P(11) => mul_Gain8_dotp_0_mul_temp_3_n_94,
      P(10) => mul_Gain8_dotp_0_mul_temp_3_n_95,
      P(9) => mul_Gain8_dotp_0_mul_temp_3_n_96,
      P(8) => mul_Gain8_dotp_0_mul_temp_3_n_97,
      P(7) => mul_Gain8_dotp_0_mul_temp_3_n_98,
      P(6) => mul_Gain8_dotp_0_mul_temp_3_n_99,
      P(5) => mul_Gain8_dotp_0_mul_temp_3_n_100,
      P(4) => mul_Gain8_dotp_0_mul_temp_3_n_101,
      P(3) => mul_Gain8_dotp_0_mul_temp_3_n_102,
      P(2) => mul_Gain8_dotp_0_mul_temp_3_n_103,
      P(1) => mul_Gain8_dotp_0_mul_temp_3_n_104,
      P(0) => mul_Gain8_dotp_0_mul_temp_3_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_0_mul_temp_3_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_0_mul_temp_3_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_0_mul_temp_3_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_1_mul_temp: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => Sum_sub_temp(14 downto 10),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000101011010001100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_1_mul_temp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_1_mul_temp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_mul_Gain8_dotp_1_mul_temp_P_UNCONNECTED(47 downto 32),
      P(31) => mul_Gain8_dotp_1_mul_temp_n_74,
      P(30) => mul_Gain8_dotp_1_mul_temp_n_75,
      P(29 downto 15) => tmp_Gain8_dotp_1(14 downto 0),
      P(14) => mul_Gain8_dotp_1_mul_temp_n_91,
      P(13) => mul_Gain8_dotp_1_mul_temp_n_92,
      P(12) => mul_Gain8_dotp_1_mul_temp_n_93,
      P(11) => mul_Gain8_dotp_1_mul_temp_n_94,
      P(10) => mul_Gain8_dotp_1_mul_temp_n_95,
      P(9) => mul_Gain8_dotp_1_mul_temp_n_96,
      P(8) => mul_Gain8_dotp_1_mul_temp_n_97,
      P(7) => mul_Gain8_dotp_1_mul_temp_n_98,
      P(6) => mul_Gain8_dotp_1_mul_temp_n_99,
      P(5) => mul_Gain8_dotp_1_mul_temp_n_100,
      P(4) => mul_Gain8_dotp_1_mul_temp_n_101,
      P(3) => mul_Gain8_dotp_1_mul_temp_n_102,
      P(2) => mul_Gain8_dotp_1_mul_temp_n_103,
      P(1) => mul_Gain8_dotp_1_mul_temp_n_104,
      P(0) => mul_Gain8_dotp_1_mul_temp_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_1_mul_temp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_1_mul_temp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_1_mul_temp_1: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => Sum_sub_temp(14 downto 10),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000101010001",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_1_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_1_mul_temp_1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_1_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_mul_Gain8_dotp_1_mul_temp_1_P_UNCONNECTED(47 downto 26),
      P(25 downto 15) => tmp_Gain8_dotp_1_1(10 downto 0),
      P(14) => mul_Gain8_dotp_1_mul_temp_1_n_91,
      P(13) => mul_Gain8_dotp_1_mul_temp_1_n_92,
      P(12) => mul_Gain8_dotp_1_mul_temp_1_n_93,
      P(11) => mul_Gain8_dotp_1_mul_temp_1_n_94,
      P(10) => mul_Gain8_dotp_1_mul_temp_1_n_95,
      P(9) => mul_Gain8_dotp_1_mul_temp_1_n_96,
      P(8) => mul_Gain8_dotp_1_mul_temp_1_n_97,
      P(7) => mul_Gain8_dotp_1_mul_temp_1_n_98,
      P(6) => mul_Gain8_dotp_1_mul_temp_1_n_99,
      P(5) => mul_Gain8_dotp_1_mul_temp_1_n_100,
      P(4) => mul_Gain8_dotp_1_mul_temp_1_n_101,
      P(3) => mul_Gain8_dotp_1_mul_temp_1_n_102,
      P(2) => mul_Gain8_dotp_1_mul_temp_1_n_103,
      P(1) => mul_Gain8_dotp_1_mul_temp_1_n_104,
      P(0) => mul_Gain8_dotp_1_mul_temp_1_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_1_mul_temp_1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_1_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_1_UNDERFLOW_UNCONNECTED
    );
mul_Gain8_dotp_1_mul_temp_2: unisim.vcomponents.DSP48E1
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
      A(29 downto 5) => B"0000000000000000000000000",
      A(4 downto 0) => Sum_sub_temp(14 downto 10),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111101000110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_2_CARRYOUT_UNCONNECTED(3 downto 0),
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
      MULTSIGNOUT => NLW_mul_Gain8_dotp_1_mul_temp_2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_2_OVERFLOW_UNCONNECTED,
      P(47 downto 25) => NLW_mul_Gain8_dotp_1_mul_temp_2_P_UNCONNECTED(47 downto 25),
      P(24 downto 15) => tmp_Gain8_dotp_1_2(9 downto 0),
      P(14) => mul_Gain8_dotp_1_mul_temp_2_n_91,
      P(13) => mul_Gain8_dotp_1_mul_temp_2_n_92,
      P(12) => mul_Gain8_dotp_1_mul_temp_2_n_93,
      P(11) => mul_Gain8_dotp_1_mul_temp_2_n_94,
      P(10) => mul_Gain8_dotp_1_mul_temp_2_n_95,
      P(9) => mul_Gain8_dotp_1_mul_temp_2_n_96,
      P(8) => mul_Gain8_dotp_1_mul_temp_2_n_97,
      P(7) => mul_Gain8_dotp_1_mul_temp_2_n_98,
      P(6) => mul_Gain8_dotp_1_mul_temp_2_n_99,
      P(5) => mul_Gain8_dotp_1_mul_temp_2_n_100,
      P(4) => mul_Gain8_dotp_1_mul_temp_2_n_101,
      P(3) => mul_Gain8_dotp_1_mul_temp_2_n_102,
      P(2) => mul_Gain8_dotp_1_mul_temp_2_n_103,
      P(1) => mul_Gain8_dotp_1_mul_temp_2_n_104,
      P(0) => mul_Gain8_dotp_1_mul_temp_2_n_105,
      PATTERNBDETECT => NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_Gain8_dotp_1_mul_temp_2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_Gain8_dotp_1_mul_temp_2_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_mul_Gain8_dotp_1_mul_temp_2_UNDERFLOW_UNCONNECTED
    );
\pwm[10]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[6]_INST_0_n_0\,
      CO(3) => \^pwm\(15),
      CO(2) => \pwm[10]_INST_0_n_1\,
      CO(1) => \pwm[10]_INST_0_n_2\,
      CO(0) => \pwm[10]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => Multiply_out1(15),
      DI(2 downto 1) => B"00",
      DI(0) => Multiply_out1(12),
      O(3 downto 0) => \^pwm\(13 downto 10),
      S(3) => \pwm[10]_INST_0_i_1_n_0\,
      S(2 downto 1) => Multiply_out1(14 downto 13),
      S(0) => \pwm[10]_INST_0_i_2_n_0\
    );
\pwm[10]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(15),
      O => \pwm[10]_INST_0_i_1_n_0\
    );
\pwm[10]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(12),
      O => \pwm[10]_INST_0_i_2_n_0\
    );
\pwm[14]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \^pwm\(15),
      CO(3 downto 0) => \NLW_pwm[14]_INST_0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pwm[14]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => \^pwm\(14),
      S(3 downto 0) => B"0001"
    );
\pwm[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[2]_INST_0_n_0\,
      CO(2) => \pwm[2]_INST_0_n_1\,
      CO(1) => \pwm[2]_INST_0_n_2\,
      CO(0) => \pwm[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => Multiply_out1(7),
      DI(2) => '0',
      DI(1) => Multiply_out1(5),
      DI(0) => '0',
      O(3 downto 0) => \^pwm\(5 downto 2),
      S(3) => \pwm[2]_INST_0_i_1_n_0\,
      S(2) => Multiply_out1(6),
      S(1) => \pwm[2]_INST_0_i_2_n_0\,
      S(0) => Multiply_out1(4)
    );
\pwm[2]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(7),
      O => \pwm[2]_INST_0_i_1_n_0\
    );
\pwm[2]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(5),
      O => \pwm[2]_INST_0_i_2_n_0\
    );
\pwm[6]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[2]_INST_0_n_0\,
      CO(3) => \pwm[6]_INST_0_n_0\,
      CO(2) => \pwm[6]_INST_0_n_1\,
      CO(1) => \pwm[6]_INST_0_n_2\,
      CO(0) => \pwm[6]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => Multiply_out1(11),
      DI(2 downto 1) => B"00",
      DI(0) => Multiply_out1(8),
      O(3 downto 0) => \^pwm\(9 downto 6),
      S(3) => \pwm[6]_INST_0_i_1_n_0\,
      S(2 downto 1) => Multiply_out1(10 downto 9),
      S(0) => \pwm[6]_INST_0_i_2_n_0\
    );
\pwm[6]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(11),
      O => \pwm[6]_INST_0_i_1_n_0\
    );
\pwm[6]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Multiply_out1(8),
      O => \pwm[6]_INST_0_i_2_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_Gain6_dotp_2_3__0_carry_n_0\,
      CO(2) => \sum_Gain6_dotp_2_3__0_carry_n_1\,
      CO(1) => \sum_Gain6_dotp_2_3__0_carry_n_2\,
      CO(0) => \sum_Gain6_dotp_2_3__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \sum_Gain6_dotp_2_3__0_carry_i_1_n_0\,
      DI(2) => \sum_Gain6_dotp_2_3__0_carry_i_2_n_0\,
      DI(1) => \sum_Gain6_dotp_2_3__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => sum_Gain6_dotp_2_3(3 downto 0),
      S(3) => \sum_Gain6_dotp_2_3__0_carry_i_4_n_0\,
      S(2) => \sum_Gain6_dotp_2_3__0_carry_i_5_n_0\,
      S(1) => \sum_Gain6_dotp_2_3__0_carry_i_6_n_0\,
      S(0) => \sum_Gain6_dotp_2_3__0_carry_i_7_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_Gain6_dotp_2_3__0_carry_n_0\,
      CO(3) => \sum_Gain6_dotp_2_3__0_carry__0_n_0\,
      CO(2) => \sum_Gain6_dotp_2_3__0_carry__0_n_1\,
      CO(1) => \sum_Gain6_dotp_2_3__0_carry__0_n_2\,
      CO(0) => \sum_Gain6_dotp_2_3__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0\,
      DI(2) => \sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0\,
      DI(1) => \sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0\,
      DI(0) => \sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0\,
      O(3 downto 0) => sum_Gain6_dotp_2_3(7 downto 4),
      S(3) => \sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0\,
      S(2) => \sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0\,
      S(1) => \sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0\,
      S(0) => \sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(5),
      I1 => tmp_Gain6_dotp_1_3(5),
      I2 => \Unit_Delay2_out1_reg[0]\(6),
      I3 => tmp_Gain6_dotp_1_3(6),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_1_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(4),
      I1 => tmp_Gain6_dotp_1_3(4),
      I2 => \Unit_Delay2_out1_reg[0]\(5),
      I3 => tmp_Gain6_dotp_1_3(5),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_2_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(3),
      I1 => tmp_Gain6_dotp_1_3(3),
      I2 => \Unit_Delay2_out1_reg[0]\(4),
      I3 => tmp_Gain6_dotp_1_3(4),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_3_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(2),
      I1 => tmp_Gain6_dotp_1_3(2),
      I2 => \Unit_Delay2_out1_reg[0]\(3),
      I3 => tmp_Gain6_dotp_1_3(3),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_4_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(5),
      I1 => \Unit_Delay2_out1_reg[0]\(5),
      I2 => tmp_Gain6_dotp_1_3(7),
      I3 => \Unit_Delay2_out1_reg[0]\(7),
      I4 => tmp_Gain6_dotp_1_3(6),
      I5 => \Unit_Delay2_out1_reg[0]\(6),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_5_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(4),
      I1 => \Unit_Delay2_out1_reg[0]\(4),
      I2 => tmp_Gain6_dotp_1_3(6),
      I3 => \Unit_Delay2_out1_reg[0]\(6),
      I4 => tmp_Gain6_dotp_1_3(5),
      I5 => \Unit_Delay2_out1_reg[0]\(5),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_6_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(3),
      I1 => \Unit_Delay2_out1_reg[0]\(3),
      I2 => tmp_Gain6_dotp_1_3(5),
      I3 => \Unit_Delay2_out1_reg[0]\(5),
      I4 => tmp_Gain6_dotp_1_3(4),
      I5 => \Unit_Delay2_out1_reg[0]\(4),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_7_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(2),
      I1 => \Unit_Delay2_out1_reg[0]\(2),
      I2 => tmp_Gain6_dotp_1_3(4),
      I3 => \Unit_Delay2_out1_reg[0]\(4),
      I4 => tmp_Gain6_dotp_1_3(3),
      I5 => \Unit_Delay2_out1_reg[0]\(3),
      O => \sum_Gain6_dotp_2_3__0_carry__0_i_8_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_Gain6_dotp_2_3__0_carry__0_n_0\,
      CO(3) => \sum_Gain6_dotp_2_3__0_carry__1_n_0\,
      CO(2) => \sum_Gain6_dotp_2_3__0_carry__1_n_1\,
      CO(1) => \sum_Gain6_dotp_2_3__0_carry__1_n_2\,
      CO(0) => \sum_Gain6_dotp_2_3__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0\,
      DI(2) => \sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0\,
      DI(1) => \sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0\,
      DI(0) => \sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0\,
      O(3 downto 0) => sum_Gain6_dotp_2_3(11 downto 8),
      S(3) => \sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0\,
      S(2) => \sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0\,
      S(1) => \sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0\,
      S(0) => \sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD4"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(10),
      I1 => \Unit_Delay2_out1_reg[0]\(10),
      I2 => \Unit_Delay2_out1_reg[0]\(9),
      I3 => tmp_Gain6_dotp_1_3(9),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_1_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(8),
      I1 => tmp_Gain6_dotp_1_3(8),
      I2 => \Unit_Delay2_out1_reg[0]\(9),
      I3 => tmp_Gain6_dotp_1_3(9),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_2_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(7),
      I1 => tmp_Gain6_dotp_1_3(7),
      I2 => \Unit_Delay2_out1_reg[0]\(8),
      I3 => tmp_Gain6_dotp_1_3(8),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_3_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(6),
      I1 => tmp_Gain6_dotp_1_3(6),
      I2 => \Unit_Delay2_out1_reg[0]\(7),
      I3 => tmp_Gain6_dotp_1_3(7),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_4_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(9),
      I1 => \Unit_Delay2_out1_reg[0]\(9),
      I2 => \Unit_Delay2_out1_reg[0]\(10),
      I3 => tmp_Gain6_dotp_1_3(10),
      I4 => \Unit_Delay2_out1_reg[0]\(11),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_5_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(8),
      I1 => \Unit_Delay2_out1_reg[0]\(8),
      I2 => tmp_Gain6_dotp_1_3(10),
      I3 => \Unit_Delay2_out1_reg[0]\(10),
      I4 => tmp_Gain6_dotp_1_3(9),
      I5 => \Unit_Delay2_out1_reg[0]\(9),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_6_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(7),
      I1 => \Unit_Delay2_out1_reg[0]\(7),
      I2 => tmp_Gain6_dotp_1_3(9),
      I3 => \Unit_Delay2_out1_reg[0]\(9),
      I4 => tmp_Gain6_dotp_1_3(8),
      I5 => \Unit_Delay2_out1_reg[0]\(8),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_7_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => tmp_Gain6_dotp_1_3(6),
      I1 => \Unit_Delay2_out1_reg[0]\(6),
      I2 => tmp_Gain6_dotp_1_3(8),
      I3 => \Unit_Delay2_out1_reg[0]\(8),
      I4 => tmp_Gain6_dotp_1_3(7),
      I5 => \Unit_Delay2_out1_reg[0]\(7),
      O => \sum_Gain6_dotp_2_3__0_carry__1_i_8_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_Gain6_dotp_2_3__0_carry__1_n_0\,
      CO(3) => \NLW_sum_Gain6_dotp_2_3__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \sum_Gain6_dotp_2_3__0_carry__2_n_1\,
      CO(1) => \sum_Gain6_dotp_2_3__0_carry__2_n_2\,
      CO(0) => \sum_Gain6_dotp_2_3__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \Unit_Delay2_out1_reg[0]\(13 downto 11),
      O(3 downto 0) => sum_Gain6_dotp_2_3(15 downto 12),
      S(3) => \sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0\,
      S(2) => \sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0\,
      S(1) => \sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0\,
      S(0) => \sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(14),
      I1 => \Unit_Delay2_out1_reg[0]\(15),
      O => \sum_Gain6_dotp_2_3__0_carry__2_i_1_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(13),
      I1 => \Unit_Delay2_out1_reg[0]\(14),
      O => \sum_Gain6_dotp_2_3__0_carry__2_i_2_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(12),
      I1 => \Unit_Delay2_out1_reg[0]\(13),
      O => \sum_Gain6_dotp_2_3__0_carry__2_i_3_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(11),
      I1 => \Unit_Delay2_out1_reg[0]\(12),
      O => \sum_Gain6_dotp_2_3__0_carry__2_i_4_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(2),
      I1 => tmp_Gain6_dotp_1_3(2),
      I2 => \Unit_Delay2_out1_reg[2]\(15),
      O => \sum_Gain6_dotp_2_3__0_carry_i_1_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[2]\(15),
      I1 => tmp_Gain6_dotp_1_3(2),
      I2 => \Unit_Delay2_out1_reg[0]\(2),
      O => \sum_Gain6_dotp_2_3__0_carry_i_2_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(0),
      I1 => tmp_Gain6_dotp_1_3(0),
      I2 => \Unit_Delay2_out1_reg[2]\(13),
      O => \sum_Gain6_dotp_2_3__0_carry_i_3_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693C3C96"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[2]\(15),
      I1 => tmp_Gain6_dotp_1_3(3),
      I2 => \Unit_Delay2_out1_reg[0]\(3),
      I3 => tmp_Gain6_dotp_1_3(2),
      I4 => \Unit_Delay2_out1_reg[0]\(2),
      O => \sum_Gain6_dotp_2_3__0_carry_i_4_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[2]\(15),
      I1 => tmp_Gain6_dotp_1_3(2),
      I2 => \Unit_Delay2_out1_reg[0]\(2),
      I3 => \Unit_Delay2_out1_reg[2]\(14),
      I4 => tmp_Gain6_dotp_1_3(1),
      I5 => \Unit_Delay2_out1_reg[0]\(1),
      O => \sum_Gain6_dotp_2_3__0_carry_i_5_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_Gain6_dotp_2_3__0_carry_i_3_n_0\,
      I1 => tmp_Gain6_dotp_1_3(1),
      I2 => \Unit_Delay2_out1_reg[0]\(1),
      I3 => \Unit_Delay2_out1_reg[2]\(14),
      O => \sum_Gain6_dotp_2_3__0_carry_i_6_n_0\
    );
\sum_Gain6_dotp_2_3__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Unit_Delay2_out1_reg[0]\(0),
      I1 => tmp_Gain6_dotp_1_3(0),
      I2 => \Unit_Delay2_out1_reg[2]\(13),
      O => \sum_Gain6_dotp_2_3__0_carry_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut is
  port (
    pwm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    position : in STD_LOGIC_VECTOR ( 31 downto 0 );
    destination_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    desired_angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut is
begin
u_acs_crane_ip_src_Subsystem1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_src_Subsystem1
     port map (
      IPCORE_CLK => IPCORE_CLK,
      angle(14 downto 0) => angle(14 downto 0),
      desired_angle(14 downto 0) => desired_angle(14 downto 0),
      destination_x(31 downto 0) => destination_x(31 downto 0),
      position(31 downto 0) => position(31 downto 0),
      pwm(15 downto 0) => pwm(15 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip is
  port (
    pwm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    desired_angle : in STD_LOGIC_VECTOR ( 14 downto 0 );
    IPCORE_CLK : in STD_LOGIC;
    position : in STD_LOGIC_VECTOR ( 31 downto 0 );
    destination_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IPCORE_RESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip is
  signal reset : STD_LOGIC;
begin
u_acs_crane_ip_dut_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_dut
     port map (
      IPCORE_CLK => IPCORE_CLK,
      angle(14 downto 0) => angle(14 downto 0),
      desired_angle(14 downto 0) => desired_angle(14 downto 0),
      destination_x(31 downto 0) => destination_x(31 downto 0),
      position(31 downto 0) => position(31 downto 0),
      pwm(15 downto 0) => pwm(15 downto 0),
      reset => reset
    );
u_acs_crane_ip_reset_sync_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip_reset_sync
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      reset => reset
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
    destination_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    desired_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    position : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_design_acs_crane_ip_0_0,acs_crane_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "acs_crane_ip,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of IPCORE_CLK : signal is "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IPCORE_CLK : signal is "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, FREQ_HZ 30303030, PHASE 0.000, CLK_DOMAIN Block_design_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of IPCORE_RESETN : signal is "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  attribute x_interface_parameter of IPCORE_RESETN : signal is "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_acs_crane_ip
     port map (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      angle(14 downto 0) => angle(14 downto 0),
      desired_angle(14 downto 0) => desired_angle(14 downto 0),
      destination_x(31 downto 0) => destination_x(31 downto 0),
      position(31 downto 0) => position(31 downto 0),
      pwm(15 downto 0) => pwm(15 downto 0)
    );
end STRUCTURE;
