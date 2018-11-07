----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:26 11/05/2018 
-- Design Name: 
-- Module Name:    memory_data_register - Behavioral 
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

entity memory_data_register is
	port( MemData_input	:	in STD_LOGIC_VECTOR (31 downto 0);
			MemData_output	:	out STD_LOGIC_VECTOR (31 downto 0)
	);
end memory_data_register;

architecture Behavioral of memory_data_register is

begin
	MemData_output <= MemData_input;

end Behavioral;

