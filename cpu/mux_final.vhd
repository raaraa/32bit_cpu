----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:07:18 11/07/2018 
-- Design Name: 
-- Module Name:    mux_final - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity mux_final is
	port( input_0, input_1, input_2	: in STD_LOGIC_VECTOR (31 downto 0);
			PCSource							: in STD_LOGIC_VECTOR;
			output 							: out STD_LOGIC_VECTOR (31 downto 0));
end mux_final;

architecture Behavioral of mux_final is

begin



end Behavioral;

