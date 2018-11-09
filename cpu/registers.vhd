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
	
	signal reg_arr	:	reg_file := (  x"00000000", -- $zero
												x"11111111", -- $at
												x"22222222", -- $v0
												x"33333333", -- $v1
												x"44444444", -- $a0
												x"55555555", -- $a1
												x"66666666", -- $a2
												x"77777777", -- $a3
												x"88888888", -- $t0
												x"99999999", -- $t1
												x"aaaaaaaa", -- $t2
												x"bbbbbbbb", -- $t3
												x"cccccccc", -- $t4
												x"dddddddd", -- $t5
												x"eeeeeeee", -- $t6
												x"ffffffff", -- $t7
												x"00000000", -- $s0
												x"11111111", -- $s1
												x"22222222", -- $s2
												x"33333333", -- $s3
												x"44444444", -- $s4
												x"55555555", -- $s5
												x"66666666", -- $s6
												x"77777777", -- $s7
												x"88888888", -- $t8
												x"99999999", -- $t9
												x"aaaaaaaa", -- $k0
												x"bbbbbbbb", -- $k1
												x"10008000", -- $gp
												x"7FFFF1EC", -- $sp
												x"eeeeeeee", -- $fp
												x"ffffffff" -- $ra
												);
begin
	--read_reg_adr1 <= read_reg1;
	--read_reg_adr2 <= read_reg2;
	--read_data1 <= reg_arr(to_integer(unsigned(read_reg_adr1)));
	--read_data2 <= reg_arr(to_integer(unsigned(read_reg_adr2)));
	--write_reg_adr <= write_reg;
	
	process(reg_write)
	begin
		if (reg_write = '1') then
			reg_arr(to_integer(unsigned(write_reg))) <= write_data;
		end if;
	end process;
	
	read_data1 <= reg_arr(to_integer(unsigned(read_reg1)));
	read_data2 <= reg_arr(to_integer(unsigned(read_reg2)));
end Behavioral;

