-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 23 16:30:59 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_design_acs_crane_ip_0_0_stub.vhdl
-- Design      : Block_design_acs_crane_ip_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    destination_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    desired_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    position : in STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IPCORE_CLK,IPCORE_RESETN,destination_x[31:0],desired_angle[15:0],position[31:0],angle[15:0],pwm[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "acs_crane_ip,Vivado 2018.2";
begin
end;
