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
        PL_LED_G: out  STD_LOGIC;
        FCLK_CLK0: in STD_LOGIC; --clock input from block design
        PS_PB: in STD_LOGIC --switch from the board;
        );
end practice;

architecture Behavioral of practice is
begin

process(FCLK_CLK0)
begin
    if rising_edge(FCLK_CLK0) then
      if (PS_PB <= '1') then
            
            PMOD1_D0_N <= '0';
            PMOD1_D0_P <= '0';
            PMOD1_D1_N <= '1';
            PMOD1_D1_P <= '1';
            PMOD1_D2_N <= '1';
            PMOD1_D2_P <= '1';
            PMOD1_D3_N <= '1';
            PMOD1_D3_P <= '1';
            -- debug led
            PL_LED_G <= '1';
        elsif (PS_PB <= '0') then
            PMOD1_D0_N <= '0';
            PMOD1_D0_P <= '0';
            PMOD1_D1_N <= '0';
            PMOD1_D1_P <= '0';
            PMOD1_D2_N <= '0';
            PMOD1_D2_P <= '0';
            PMOD1_D3_N <= '0';
            PMOD1_D3_P <= '0';
            -- debug led
            PL_LED_G <= '0';
            
        end if;
    end if;       
        
        
    end process;
end Behavioral;
