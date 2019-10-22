-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Oct 22 14:14:52 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_mux2_0_0/Block_design_mux2_0_0_sim_netlist.vhdl
-- Design      : Block_design_mux2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_design_mux2_0_0 is
  port (
    a1 : in STD_LOGIC;
    a2 : in STD_LOGIC;
    sel : in STD_LOGIC;
    b : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_design_mux2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_design_mux2_0_0 : entity is "Block_design_mux2_0_0,mux2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_design_mux2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_design_mux2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_design_mux2_0_0 : entity is "mux2,Vivado 2018.2";
end Block_design_mux2_0_0;

architecture STRUCTURE of Block_design_mux2_0_0 is
begin
b_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a2,
      I1 => sel,
      I2 => a1,
      O => b
    );
end STRUCTURE;
