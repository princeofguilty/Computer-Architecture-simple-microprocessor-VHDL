
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity REG is
			GENERIC(n:NATURAL);
			port ( 	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
							CLK, LOAD, INC, dec, CLR: IN STD_LOGIC;
							DATA: out  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end REG;

architecture Behavioral of REG is
	SIGNAL temp: STD_LOGIC_VECTOR (n-1 DOWNTO 0) := (others => '0');
begin

	process(clk)
	begin
		if (rising_edge(clk)) then 
				if (inc='1' ) then
						temp <= temp+ 1;
				elsif (dec='1' ) then
						temp <= temp - 1;
				elsif (LOAD='1') then
						temp <= i;
				elsif (CLR='1' ) then
						temp <= (others=>'0'); 
				end if;
		end if;
	end process;
	
	DATA <= temp;

end Behavioral;
