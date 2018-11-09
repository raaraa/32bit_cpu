----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:28 11/07/2018 
-- Design Name: 
-- Module Name:    mux_alu_A - Behavioral 
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


entity mux_alu_A is
	port( input_0, input_1	: in STD_LOGIC_VECTOR (31 downto 0);
			ALUSrcA				: in STD_LOGIC;
			output				: out STD_LOGIC_VECTOR (31 downto 0));
end mux_alu_A;

architecture Behavioral of mux_alu_A is
begin
	process(input_0, input_1, ALUSrcA)
	begin
		if (ALUSrcA = '0') then
			output <= input_0;
		elsif (ALUSrcA = '1') then
			output <= input_1;
		end if;
	end process;
end Behavioral;

