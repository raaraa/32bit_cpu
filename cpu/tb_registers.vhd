LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_registers IS
END tb_registers;
 
ARCHITECTURE behavior OF tb_registers IS 
    
   --Inputs
   signal tb_read_reg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal tb_read_reg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal tb_write_reg : std_logic_vector(4 downto 0) := (others => '0');
   signal tb_write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_reg_write : std_logic := '0';

 	--Outputs
   signal tb_read_data1 : std_logic_vector(31 downto 0);
   signal tb_read_data2 : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_Reg: entity work.registers(Behavioral)
		PORT MAP (
          read_reg1 => tb_read_reg1,
          read_reg2 => tb_read_reg2,
          write_reg => tb_write_reg,
          write_data => tb_write_data,
          read_data1 => tb_read_data1,
          read_data2 => tb_read_data2,
          reg_write => tb_reg_write
        );
 

   -- Stimulus process
   stim_proc: process
   begin
		
		for i in 0 to 30 loop
			tb_read_reg1 <= STD_LOGIC_VECTOR(to_unsigned(i,5));
			tb_read_reg2 <= STD_LOGIC_VECTOR(to_unsigned(i+1,5));
			wait for 25 ns;
		end loop;
		
		assert false
			report "End"
			severity failure;
   end process;

END;
