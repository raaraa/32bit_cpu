LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_main IS
END tb_main;
 
ARCHITECTURE behavior OF tb_main IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         reset : IN  std_logic;
         PC_control : IN  std_logic;
         IorD : IN  std_logic;
         MemRead : IN  std_logic;
         MemWrite : IN  std_logic;
         MemtoReg : IN  std_logic;
         IRWrite : IN  std_logic;
         ALUSrcA : IN  std_logic;
         RegWrite : IN  std_logic;
         RegDst : IN  std_logic;
         PCSource : IN  std_logic_vector(1 downto 0);
         ALUSrcB : IN  std_logic_vector(1 downto 0);
         alu_control : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal PC_control : std_logic := '0';
   signal IorD : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal MemWrite : std_logic := '0';
   signal MemtoReg : std_logic := '0';
   signal IRWrite : std_logic := '0';
   signal ALUSrcA : std_logic := '0';
   signal RegWrite : std_logic := '0';
   signal RegDst : std_logic := '0';
   signal PCSource : std_logic_vector(1 downto 0) := (others => '0');
   signal ALUSrcB : std_logic_vector(1 downto 0) := (others => '0');
   signal alu_control : std_logic_vector(3 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          reset => reset,
          PC_control => PC_control,
          IorD => IorD,
          MemRead => MemRead,
          MemWrite => MemWrite,
          MemtoReg => MemtoReg,
          IRWrite => IRWrite,
          ALUSrcA => ALUSrcA,
          RegWrite => RegWrite,
          RegDst => RegDst,
          PCSource => PCSource,
          ALUSrcB => ALUSrcB,
          alu_control => alu_control
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
-- lw
-- 1st

	
		assert false
			report "End"
			severity failure;
		
   end process;

END;
