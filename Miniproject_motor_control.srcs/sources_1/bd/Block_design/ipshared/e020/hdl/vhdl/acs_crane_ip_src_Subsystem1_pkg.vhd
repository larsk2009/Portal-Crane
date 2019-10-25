-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\acs_cranecontroller_firsttest\acs_crane_ip_src_Subsystem1_pkg.vhd
-- Created: 2019-10-25 14:34:10
-- 
-- Generated by MATLAB 9.6 and HDL Coder 3.14
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE acs_crane_ip_src_Subsystem1_pkg IS
  TYPE vector_of_signed16 IS ARRAY (NATURAL RANGE <>) OF signed(15 DOWNTO 0);
  TYPE matrix_of_signed16 IS ARRAY (NATURAL RANGE <>, NATURAL RANGE <>) OF signed(15 DOWNTO 0);
  TYPE vector_of_signed17 IS ARRAY (NATURAL RANGE <>) OF signed(16 DOWNTO 0);
  TYPE vector_of_unsigned16 IS ARRAY (NATURAL RANGE <>) OF unsigned(15 DOWNTO 0);
  TYPE vector_of_signed19 IS ARRAY (NATURAL RANGE <>) OF signed(18 DOWNTO 0);
END acs_crane_ip_src_Subsystem1_pkg;

