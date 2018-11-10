----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:10 11/09/2018 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pc is
	port( pc_in : in STD_LOGIC_VECTOR (31 downto 0);
			pc_out : out STD_LOGIC_VECTOR (31 downto 0);
			reset, pc_control : in STD_LOGIC);
end pc;

architecture Behavioral of pc is

begin
	process(pc_control, reset)
		variable pc : STD_LOGIC_VECTOR (31 downto 0) := x"00000000";
		variable other_pc : STD_LOGIC_VECTOR (31 downto 0) := x"00000001";
		variable si : STD_LOGIC := '1';

	begin
		if (reset = '0') then
			pc := (others => '0');
		else
			other_pc := pc_in;
			si := '1';
		end if;
		
		if (si = '1') then
			pc := other_pc;
			si := '0';
		else
			pc := pc + "0000000000000000";
		end if;
		
		pc_out <= pc;
	
	end process;

end Behavioral;

