----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:27:09 10/23/2018 
-- Design Name: 
-- Module Name:    main - Behavioral 
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


entity main is
	port( clk : in STD_LOGIC;
			reset : in STD_LOGIC);
end main;

architecture Behavioral of main is

	signal se_input : STD_LOGIC_VECTOR (15 downto 0) := x"7FFF";
	signal se_out : STD_LOGIC_VECTOR (31 downto 0) := x"00000000";
	
	signal read_reg_2 : STD_LOGIC_VECTOR (31 downto 0) := x"12345678";
	signal mux_add_4 : STD_LOGIC_VECTOR (31 downto 0) := x"00000001";
	signal shift_left_2 : STD_LOGIC_VECTOR (31 downto 0) := x"00000011";
	signal mux_output : STD_LOGIC_VECTOR (31 downto 0) := x"00000000";
	signal ALUSrcB : STD_LOGIC_VECTOR (1 downto 0) := "11";
	
begin

	U1: entity work.mux_alu_B(Behavioral)
		port map( 
			input_0 => read_reg_2,
			input_1 => mux_add_4,
			input_2 => se_out,
			input_3 => shift_left_2,
			ALUSrcB => ALUSrcB,
			output => mux_output
			);
			
	U2: entity work.sign_extender(Behavioral)
		port map(
			se_input => se_input,
			se_out => se_out
		);
end Behavioral;

