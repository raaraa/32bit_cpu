----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:10 11/05/2018 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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

entity memory is
	port( address, write_data	:	in STD_LOGIC_VECTOR (31 downto 0);
			mem_data					:	out STD_LOGIC_VECTOR (31 downto 0);
			MemWrite, MemRead		:	in	STD_LOGIC);
end memory;

architecture Behavioral of memory is


begin


end Behavioral;

