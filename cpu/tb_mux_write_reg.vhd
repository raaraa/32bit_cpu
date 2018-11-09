LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mux_write_reg IS
END tb_mux_write_reg;
 
ARCHITECTURE behavior OF tb_mux_write_reg IS 
    
   --Inputs
   signal tb_input_0 : std_logic_vector(4 downto 0) := (others => '0');
   signal tb_input_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal tb_RegDst : std_logic := '0';

 	--Outputs
   signal tb_output : std_logic_vector(4 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_test: entity work.mux_write_reg(Behavioral)
		PORT MAP (
          input_0 => tb_input_0,
          input_1 => tb_input_1,
          RegDst => tb_RegDst,
          output => tb_output
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		tb_input_0 <= "01010";
		tb_input_1 <= "10101";
		
		tb_RegDst <= '0';
		wait for 100 ns;
		
		tb_RegDst <= '1';
		wait for 100 ns;
		
		tb_RegDst <= '0';
		wait for 100 ns;
	
		assert false
			report "End"
			severity failure;
   end process;

END;
