----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:19 11/09/2018 
-- Design Name: 
-- Module Name:    sign_extender - Behavioral 
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

entity sign_extender is
	port( se_input : in STD_LOGIC_VECTOR (15 downto 0);
			se_out : out STD_LOGIC_VECTOR (31 downto 0));
end sign_extender;

architecture Behavioral of sign_extender is

begin
	
	se_out <= x"0000" & se_input when se_input(15) = '0' else
				 x"FFFF" & se_input;


end Behavioral;

