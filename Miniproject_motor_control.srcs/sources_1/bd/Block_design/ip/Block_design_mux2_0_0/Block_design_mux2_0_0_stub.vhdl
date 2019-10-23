-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Oct 22 19:53:11 2019
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/EAAES/Portal-Crane/Miniproject_motor_control.srcs/sources_1/bd/Block_design/ip/Block_design_mux2_0_0/Block_design_mux2_0_0_stub.vhdl
-- Design      : Block_design_mux2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_design_mux2_0_0 is
  Port ( 
    a1 : in STD_LOGIC;
    a2 : in STD_LOGIC;
    sel : in STD_LOGIC;
    b : out STD_LOGIC
  );

end Block_design_mux2_0_0;

architecture stub of Block_design_mux2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a1,a2,sel,b";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux2,Vivado 2018.2";
begin
end;