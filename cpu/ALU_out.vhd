----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:57 11/09/2018 
-- Design Name: 
-- Module Name:    ALU_out - Behavioral 
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

entity ALU_out is
	port( alu_in : in STD_LOGIC_VECTOR (31 downto 0);
			alu_out : out STD_LOGIC_VECTOR (31 downto 0));
end ALU_out;

architecture Behavioral of ALU_out is

begin
	alu_out <= alu_in;

end Behavioral;

