----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:56 11/09/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity ALU is
	port( alu_in_1 : in STD_LOGIC_VECTOR (31 downto 0);
			alu_in_2 : in STD_LOGIC_VECTOR (31 downto 0);
			alu_control : in STD_LOGIC_VECTOR ( 3 downto 0);
			alu_result : out STD_LOGIC_VECTOR (31 downto 0);
			zero : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

	signal res : STD_LOGIC_VECTOR (31 downto 0);
begin
	
	process(alu_in_1, alu_in_2, alu_control)
	begin
	
		case alu_control is 
			when "0000" => --AND
				res <= alu_in_1 and alu_in_2;
			when "0001" => --OR
				res <= alu_in_1 or alu_in_2;
			when "0010" => --add
				res <= STD_LOGIC_VECTOR(unsigned(alu_in_1) + unsigned(alu_in_2));
			when "0110" => --subtract		
				res <= STD_LOGIC_VECTOR(unsigned(alu_in_1) - unsigned(alu_in_2));
			when others => null;
				res <= x"00000000";
			end case;
	end process;
	
	alu_result <= res;
	zero <= '1' when res = x"00000000" else
				'0';

end Behavioral;

