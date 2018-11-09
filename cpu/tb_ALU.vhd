LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 

   --Inputs
   signal tb_alu_in_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_alu_in_2 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_alu_control : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal tb_alu_result : std_logic_vector(31 downto 0);
   signal tb_zero : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ALU(Behavioral)
		PORT MAP (
          alu_in_1 => tb_alu_in_1,
          alu_in_2 => tb_alu_in_2,
          alu_control => tb_alu_control,
          alu_result => tb_alu_result,
          zero => tb_zero
        );
		  

   -- Stimulus process
   stim_proc: process
   begin

		tb_alu_in_1 <= x"00000003";
		tb_alu_in_2 <= x"FFFFFFFF";
	
		tb_alu_control <= "0000"; --AND
		wait for 50 ns;
		
		tb_alu_control <= "0001"; --OR
		wait for 50 ns;
		
		tb_alu_control <= "0010"; --add
		wait for 50 ns;
		
		tb_alu_control <= "0110"; --subtraction
		wait for 50 ns;
	
		assert false
			report "End"
			severity failure;
   end process;

END;
