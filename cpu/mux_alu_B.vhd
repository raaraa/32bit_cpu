----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:00:32 11/07/2018 
-- Design Name: 
-- Module Name:    mux_alu_B - Behavioral 
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

entity mux_alu_B is
	port( input_0, input_1, input_2, input_3	: in STD_LOGIC_VECTOR (31 downto 0);
			ALUSrcB										: in STD_LOGIC_VECTOR (1 downto 0);
			output										: out STD_LOGIC_VECTOR (31 downto 0));
end mux_alu_B;

architecture Behavioral of mux_alu_B is
begin
	process(input_0, input_1,input_2, input_3, ALUSrcB)
	begin
		if (ALUSrcB = "00") then
			output <= input_0;
		elsif (ALUSrcB = "01") then
			output <= input_1;
		elsif (ALUSrcB = "10") then
			output <= input_2;
		elsif (ALUSrcB = "11") then
			output <= input_3;
		end if;
	end process;


end Behavioral;

