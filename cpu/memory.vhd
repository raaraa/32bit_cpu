----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:10 11/05/2018 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
	port( address, write_data	:	in STD_LOGIC_VECTOR (31 downto 0);
			mem_data					:	out STD_LOGIC_VECTOR (31 downto 0);
			MemWrite, MemRead		:	in	STD_LOGIC);
end memory;

architecture Behavioral of memory is
	type RAM_16_x_32 is array( 0 to 15) of STD_LOGIC_VECTOR (31 downto 0);
	  signal memory : RAM_16_x_32;
begin
  process (MemRead, MemWrite)
   begin
     if(MemWrite = '1') then
        memory(CONV_INTEGER(address)) <= write_data;
     end if; 
     if(MemRead = '1') then
       mem_data <= memory(CONV_INTEGER(address));
     else
       mem_data <= x"00000000";
     end if;                   
   end process;

end Behavioral;

