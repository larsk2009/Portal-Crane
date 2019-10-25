----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2018 03:58:30 PM
-- Design Name: 
-- Module Name: SystemReset - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SystemReset is
    generic(
        DELAY_LENGTH : natural := 32
    );
    Port ( PllLocked : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : out STD_LOGIC := '1';
           nrst : out std_logic := '0');
end SystemReset;

architecture Behavioral of SystemReset is
    signal delay : unsigned(7 downto 0) := to_unsigned(DELAY_LENGTH,8); 
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if PllLocked = '0' then
                rst <= '1'; 
                nrst <= '0';
                delay <= to_unsigned(DELAY_LENGTH, 8); 
            else 
                if delay = "00000000" then
                    rst <= '0'; 
                    nrst <= '1'; 
                else 
                    delay <= delay - 1;
                end if;
            end if;            
        end if;
    end process;
end Behavioral;

