----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:42:01 11/05/2018 
-- Design Name: 
-- Module Name:    registers - Behavioral 
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
use IEEE.numeric_std.ALL;

entity registers is
	port(read_reg1, read_reg2, write_reg	:	in STD_LOGIC_VECTOR (4 downto 0);
			write_data 								:	in STD_LOGIC_VECTOR (31 downto 0);
			read_data1, read_data2				:	out STD_LOGIC_VECTOR (31 downto 0);
			reg_write								:	in STD_LOGIC);
end registers;

architecture Behavioral of registers is
	type reg_file is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
	signal reg_arr	:	reg_file;
	signal read_reg_adr1							:	STD_LOGIC_VECTOR (4 downto 0);
	signal read_reg_adr2							:	STD_LOGIC_VECTOR (4 downto 0);
	signal write_reg_adr							:	STD_LOGIC_VECTOR (4 downto 0);

begin
	read_reg_adr1 <= read_reg1;
	read_reg_adr2 <= read_reg2;
	read_data1 <= reg_arr(to_integer(unsigned(read_reg_adr1)));
	read_data2 <= reg_arr(to_integer(unsigned(read_reg_adr2)));
	write_reg_adr <= write_reg;
	
	process(reg_write)
	begin
		if (reg_write = '1') then
			reg_arr(to_integer(unsigned(write_reg_adr))) <= write_data;
		end if;
	end process;
end Behavioral;

