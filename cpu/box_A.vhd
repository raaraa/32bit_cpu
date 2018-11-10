----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:50 11/09/2018 
-- Design Name: 
-- Module Name:    box_A - Behavioral 
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

entity box_A is
	port( input : in STD_LOGIC_VECTOR (31 downto 0);
			output : out STD_LOGIC_VECTOR (31 downto 0));
end box_A;

architecture Behavioral of box_A is

begin

	output <= input;

end Behavioral;

