LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_main IS
END tb_main;
 
ARCHITECTURE behavior OF tb_main IS 

   --Inputs
   signal tb_clk : std_logic := '0';
   signal tb_reset : std_logic := '0';
	
	constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_test: entity work.main(Behavioral)
		PORT MAP (
          clk => tb_clk,
          reset => tb_reset
        ); 

	clk_process: process
	begin
		tb_clk <= '0';
		wait for clk_period/2;
		
		tb_clk <= '1';
		wait for clk_period/2;
		
	end process;
	
	
   -- Stimulus process
   stim_proc: process
   begin
		
		wait for 400 ns;
	
		assert false
			report "End"
			severity failure;
   end process;

END;
