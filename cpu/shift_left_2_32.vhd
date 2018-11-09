----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:35 11/09/2018 
-- Design Name: 
-- Module Name:    shift_left_2_32 - Behavioral 
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

entity shift_left_2_32 is
	port( shift_in : in STD_LOGIC_VECTOR (31 downto 0);
			shift_out : out STD_LOGIC_VECTOR (31 downto 0));
	
end shift_left_2_32;

architecture Behavioral of shift_left_2_32 is

begin
	shift_out (31 downto 2) <= shift_in (29 downto 0);
	shfit_out (1 downto 0) <= "00";

end Behavioral;

