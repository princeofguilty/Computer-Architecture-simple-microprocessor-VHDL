
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE WORK.PACK.ALL;

entity COM_BUS is
	PORT(
		S: IN STD_LOGIC_VECTOR(2 DOWNTO 0); --SELECT LINES
		-- BUS OUTPUT
		DATA_BUS_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		-- BUS INPUTS
		DATA_AR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_PC : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_DR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_AC : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_IR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATA_MEM : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end COM_BUS;

architecture Behavioral of COM_BUS is
 SIGNAL DATA_NULL : STD_LOGIC_VECTOR (7 DOWNTO 0):=(OTHERS=>'0');
begin
	-- TAKES ALL INPUTS
	-- RETURNS OUTPUT IN DATA_BUS_OUT
	MUX : MUX8X1_V8 PORT MAP (DATA_NULL, DATA_AR,DATA_PC,DATA_DR,DATA_AC,DATA_IR, DATA_MEM, DATA_NULL, S, DATA_BUS_OUT);
	
end Behavioral;