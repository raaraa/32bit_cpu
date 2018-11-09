LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY tb_mux_write_data IS
END tb_mux_write_data;
 
ARCHITECTURE behavior OF tb_mux_write_data IS 

   --Inputs
   signal tb_input_0 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_input_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_MemtoReg : std_logic := '0';

 	--Outputs
   signal tb_output : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_write_data PORT MAP (
          input_0 => tb_input_0,
          input_1 => tb_input_1,
          MemtoReg => tb_MemtoReg,
          output => tb_output
        );


   -- Stimulus process
   stim_proc: process
   begin		
		tb_input_0 <= "01010";
		tb_input_1 <= "10101";
		
		tb_MemtoReg <= '0';
		wait for 100 ns;
		
		tb_MemtoReg <= '1';
		wait for 100 ns;
		
		tb_MemtoReg <= '0';
		wait for 100 ns;
	
		assert false
			report "End"
			severity failure;
   end process;

END;
