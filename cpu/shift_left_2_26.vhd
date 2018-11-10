----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:23:49 11/09/2018 
-- Design Name: 
-- Module Name:    shift_left_2_26 - Behavioral 
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

entity shift_left_2_26 is
	port( shift_in : in STD_LOGIC_VECTOR (25 downto 0);
			shift_out : out STD_LOGIC_VECTOR (27 downto 0));
end shift_left_2_26;

architecture Behavioral of shift_left_2_26 is

begin
	shift_out (27 downto 2) <= shift_in (25 downto 0);
	shift_out (1 downto 0) <= "00";

end Behavioral;

