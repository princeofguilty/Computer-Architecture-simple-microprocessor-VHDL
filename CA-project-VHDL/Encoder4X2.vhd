
    library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Encoder4X2 is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0); --input
 b : out STD_LOGIC_VECTOR(1 downto 0) --output
 );
end Encoder4X2;

architecture bhv of Encoder4X2 is
begin

b<= "00" when a="0001" else
				  "01" when a="0010" else
				  "10" when a="0100" else
				  "11" when a="1000";



end bhv;
