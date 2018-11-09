----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:41 11/07/2018 
-- Design Name: 
-- Module Name:    mux_pc - Behavioral 
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


entity mux_pc is
	port( input_0, input_1	: in	STD_LOGIC_VECTOR (31 downto 0);
			IorD					: in	STD_LOGIC;
			output				: out	STD_LOGIC_VECTOR (31 downto 0));
end mux_pc;

architecture Behavioral of mux_pc is
	signal sig	:	STD_LOGIC_VECTOR (31 downto 0);

	begin
		process(input_0,input_1,IorD)
		begin
			if (IorD = '0') then
				output <= input_0;
			elsif (IorD = '1') then
				output <= input_1;
			end if;
		end process;
end Behavioral;

