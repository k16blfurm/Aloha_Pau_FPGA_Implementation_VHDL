----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2020 08:16:39 PM
-- Design Name: 
-- Module Name: practice - Behavioral
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

entity practice is
    Port ( PMOD1_D0_N: out STD_LOGIC; --a
        PMOD1_D0_P: out STD_LOGIC; --b
        PMOD1_D1_N: out STD_LOGIC; --c
        PMOD1_D1_P: out STD_LOGIC; --d
        PMOD1_D2_N: out STD_LOGIC; --e
        PMOD1_D2_P: out STD_LOGIC; --f
        PMOD1_D3_N: out STD_LOGIC; --g
        PMOD1_D3_P: out STD_LOGIC; -- this is a free pin
        FCLK_CLK0: in STD_LOGIC; --clock input from block design
        PL_SW: in STD_LOGIC --switch from the board;
        );
end practice;

architecture Behavioral of practice is
begin

process(FCLK_CLK0)
begin
    if rising_edge(FCLK_CLK0) then
        if (PL_SW <= '1') then
        
            PMOD1_D0_N <= '1';
        
        end if;
    end if;       
        
        
    end process;
end Behavioral;
