LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_sign_extend IS
END tb_sign_extend;
 
ARCHITECTURE behavior OF tb_sign_extend IS     

   --Inputs
   signal tb_se_input : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal tb_se_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_test: entity work.sign_extender(Behavioral) 
	PORT MAP (
          se_input => tb_se_input,
          se_out => tb_se_out
        );
 

   -- Stimulus process
   stim_proc: process
   begin	

		tb_se_input <= x"7fff";
		wait for 100 ns;
		
		tb_se_input <= x"8000";
		wait for 100 ns;
		
		tb_se_input <= x"FFFF";
		wait for 100 ns;
	
		assert false
			report "end"
			severity failure;
   end process;

END;
