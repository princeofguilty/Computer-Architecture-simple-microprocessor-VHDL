library ieee;
use ieee.std_logic_1164.all;

 

entity Encoder8x3 is
port (d : in std_logic_vector (7 downto 0);
      o : out std_logic_vector (2 downto 0));
		
		
end Encoder8x3;

 

architecture encode of Encoder8x3 is 
begin
process (d)
begin
    o(2) <= d(4) or d(5) or d(6) or d(7); 
    o(1) <= d(2) or d(3) or d(6) or d(7);
    o(0) <= d(1) or d(3) or d(5) or d(7);
end process;
end encode;