----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:46:56 11/07/2018 
-- Design Name: 
-- Module Name:    mux_write_reg - Behavioral 
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


entity mux_write_reg is
	port( input_0, input_1	:	in STD_LOGIC_VECTOR (4 downto 0);
			RegDst				:	in STD_LOGIC;
			output				:  out STD_LOGIC_VECTOR (4 downto 0));
end mux_write_reg;

architecture Behavioral of mux_write_reg is
begin
	process(input_0, input_1, RegDst)
	begin
		if (RegDst = '0') then
			output <= input_0;
		elsif (RegDst = '1') then
			output <= input_1;
		end if;
	end process;
end Behavioral;

