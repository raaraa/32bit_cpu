----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:27 11/07/2018 
-- Design Name: 
-- Module Name:    mux_write_data - Behavioral 
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

entity mux_write_data is
	port( input_0, input_1	:	in STD_LOGIC_VECTOR (31 downto 0);
			MemtoReg				:	in STD_LOGIC;
			output				:  out STD_LOGIC_VECTOR (31 downto 0));
end mux_write_data;

architecture Behavioral of mux_write_data is
begin
	process(input_0, input_1, MemtoReg)
	begin
		if (MemtoReg = '0') then
			output <= input_0;
		elsif (MemtoReg = '1') then
			output <= input_1;
		end if;
	end process;

end Behavioral;

