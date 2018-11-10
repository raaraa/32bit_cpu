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
	port( reset, PC_control, IorD, MemRead, MemWrite, MemtoReg, IRWrite,ALUSrcA, RegWrite,RegDst : in STD_LOGIC;
			PCSource, ALUSrcB	: in STD_LOGIC_VECTOR (1 downto 0);
			alu_control : in STD_LOGIC_VECTOR (3 downto 0));
end main;

architecture Behavioral of main is

	component pc is
		port( pc_in : in STD_LOGIC_VECTOR (31 downto 0);
				pc_out : out STD_LOGIC_VECTOR (31 downto 0);
				reset, pc_control : in STD_LOGIC);
	end component;
	

	component mux_pc is
		port( input_0, input_1	: in	STD_LOGIC_VECTOR (31 downto 0);
				IorD					: in	STD_LOGIC;
				output				: out	STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	

	component memory is 
		port( MemRead, MemWrite : in STD_LOGIC;
				address,write_data : in STD_LOGIC_VECTOR (31 downto 0);
				mem_data : out STD_LOGIC_VECTOR( 31 downto 0));
	end component;
	
	
	
	component memory_data_register is 
		port( MemData_input	:	in STD_LOGIC_VECTOR (31 downto 0);
			MemData_output	:	out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	component instruction_register is 
		port( instruction_in :	in STD_LOGIC_VECTOR (31 downto 0);
				instruction_31_26 :	out STD_LOGIC_VECTOR (5 downto 0);
				instruction_25_21	:	out STD_LOGIC_VECTOR (4 downto 0);
				instruction_20_16 :	out STD_LOGIC_VECTOR (4 downto 0);
				instruction_15_0 :	out STD_LOGIC_VECTOR (15 downto 0);
				IRWrite :	in STD_LOGIC );
	end component;
	
	
	
	component mux_write_reg is 
		port( input_0, input_1 :	in STD_LOGIC_VECTOR (4 downto 0);
				RegDst :	in STD_LOGIC;
				output :  out STD_LOGIC_VECTOR (4 downto 0));
	end component;

	
	
	component registers is 
		port(read_reg1, read_reg2, write_reg :	in STD_LOGIC_VECTOR (4 downto 0);
				write_data :	in STD_LOGIC_VECTOR (31 downto 0);
				read_data1, read_data2 :	out STD_LOGIC_VECTOR (31 downto 0);
				reg_write :	in STD_LOGIC);
	end component;
	
	
	component box_A is
		port( input : in STD_LOGIC_VECTOR (31 downto 0);
				output : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	component box_B is
		port( input : in STD_LOGIC_VECTOR (31 downto 0);
				output : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	component mux_alu_A is
		port( input_0, input_1	: in STD_LOGIC_VECTOR (31 downto 0);
				ALUSrcA	: in STD_LOGIC;
				output : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	component mux_alu_B is
		port( input_0, input_1, input_2, input_3	: in STD_LOGIC_VECTOR (31 downto 0);
				ALUSrcB : in STD_LOGIC_VECTOR (1 downto 0);
				output : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	component ALU is
		port( alu_in_1 : in STD_LOGIC_VECTOR (31 downto 0);
				alu_in_2 : in STD_LOGIC_VECTOR (31 downto 0);
				alu_control : in STD_LOGIC_VECTOR ( 3 downto 0);
				alu_result : out STD_LOGIC_VECTOR (31 downto 0);
				zero : out STD_LOGIC);
	end component;
	
	
	
	component ALU_out is
		port( alu_in : in STD_LOGIC_VECTOR (31 downto 0);
				alu_out : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	component sign_extender is
		port( se_input : in STD_LOGIC_VECTOR (15 downto 0);
				se_out : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	
	component mux_final is
		port( input_0, input_1, input_2	: in STD_LOGIC_VECTOR (31 downto 0);
				PCSource							: in STD_LOGIC_VECTOR ( 1 downto 0);
				output 							: out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	component shift_left_2_32 is
		port( shift_in : in STD_LOGIC_VECTOR (31 downto 0);
				shift_out : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	
	component shift_left_2_26 is
		port( shift_in : in STD_LOGIC_VECTOR (25 downto 0);
				shift_out : out STD_LOGIC_VECTOR (27 downto 0));
	end component;
	
	
	
	component mux_write_data is
		port( input_0, input_1	:	in STD_LOGIC_VECTOR (31 downto 0);
				MemtoReg :	in STD_LOGIC;
				output :  out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	
	--signals for pc
	signal program_counter, j_addr : STD_LOGIC_VECTOR (31 downto 0);
	
	--signals for Memory
	signal pc_mux_out, mem_data1,B : STD_LOGIC_VECTOR (31 downto 0);
	
	--signals for memory data register ( uses mem_data from above too)
	signal mem_data_reg_out : STD_LOGIC_VECTOR ( 31 downto 0);
	
	--signals for instruction register
	signal instruct_31_26 : STD_LOGIC_VECTOR (5 downto 0);
	signal instruct_25_21, instruct_20_16, instruct_15_11 : STD_LOGIC_VECTOR (4 downto 0);
	signal instruct_15_0 : STD_LOGIC_VECTOR (15 downto 0);
	
	--signals for registers
	signal read_data_1, read_data_2, mdr_mux_out : STD_LOGIC_VECTOR ( 31 downto 0);
	signal instruct_mux_out : STD_LOGIC_VECTOR( 4 downto 0);
	
	--mux signals
	signal A, sign_extend_out, shift_left_32_out, mux_alu_B_out, mux_alu_A_out : STD_LOGIC_VECTOR ( 31 downto 0);
	signal add_four : STD_LOGIC_VECTOR (31 downto 0) := x"00000004";
	signal mux_final_out : STD_LOGIC_VECTOR (31 downto 0);
	
	--alu signals
	signal alu_res, alu_out_sig : STD_LOGIC_VECTOR (31 downto 0);
	signal z : STD_LOGIC;
	
	
	-- signal for shift left 26
	signal instruct_25_0 : STD_LOGIC_VECTOR (25 downto 0);
	signal instruct_27_0 : STD_LOGIC_VECTOR (27 downto 0);
	
begin
	U1: pc port map(mux_final_out, program_counter, reset, PC_control); 
	U2: mux_pc port map(program_counter, alu_out_sig, IorD, pc_mux_out);
	U3: memory port map( MemRead, MemWrite, pc_mux_out, B, mem_data1);
	U4: memory_data_register port map(mem_data1, mem_data_reg_out);
	U5: instruction_register port map(mem_data1, instruct_31_26, instruct_25_21, instruct_20_16, instruct_15_0, IRWrite);
	U6: mux_write_reg port map( instruct_20_16, instruct_15_11, RegDst, instruct_mux_out);
	U7: registers port map(instruct_25_21, instruct_20_16, instruct_mux_out, mdr_mux_out, read_data_1, read_data_2, RegWrite);
	U8: box_A port map(read_data_1, A);
	U9: box_B port map(read_data_2, B);
	U10: mux_alu_A port map(program_counter, A, ALUSrcA, mux_alu_A_out);
	U11: mux_alu_B port map(B, add_four, sign_extend_out, shift_left_32_out, ALUSrcB, mux_alu_B_out);
	U12: ALU port map(mux_alu_A_out, mux_alu_B_out, alu_control, alu_res, z);
	U13: ALU_out port map(alu_res, alu_out_sig);
	U14: sign_extender port map(instruct_15_0, sign_extend_out);
	U15: shift_left_2_32 port map(sign_extend_out, shift_left_32_out);
   instruct_25_0 (25 downto 21) <= instruct_25_21;
	instruct_25_0 (20 downto 16) <= instruct_20_16;
	instruct_25_0 (15 downto 0) <= instruct_15_0;
	U16: shift_left_2_26 port map(instruct_25_0, instruct_27_0 );
	j_addr ( 31 downto 28) <= program_counter (31 downto 28);
	j_addr (27 downto 0) <= instruct_27_0 (27 downto 0);
	U17: mux_final port map(alu_res, alu_out_sig, j_addr, PCSource ,mux_final_out );
	U18: mux_write_data port map(alu_out_sig, mem_data_reg_out, MemtoReg, mdr_mux_out);
	
end Behavioral;

