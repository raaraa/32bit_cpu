----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:07:07 11/05/2018 
-- Design Name: 
-- Module Name:    instruction_register - Behavioral 
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

entity instruction_register is
	port( instruction_in		:	in STD_LOGIC_VECTOR (31 downto 0);
			instruction_31_26	:	out STD_LOGIC_VECTOR (5 downto 0);
			instruction_25_21	:	out STD_LOGIC_VECTOR (4 downto 0);
			instruction_20_16	:	out STD_LOGIC_VECTOR (4 downto 0);
			instruction_15_0	:	out STD_LOGIC_VECTOR (15 downto 0);
			IRWrite				:	in STD_LOGIC );
			
end instruction_register;

architecture Behavioral of instruction_register is

begin
	process(IRWrite)
	begin
		if(IRWrite = '1') then
			instruction_31_26 <= instruction_in (31 downto 26);
			instruction_25_21 <= instruction_in (25 downto 21);
			instruction_20_16 <= instruction_in (20 downto 16);
			instruction_15_0 <= instruction_in (15 downto 0);
		else
			null;
		end if;
	end process;
end Behavioral;

