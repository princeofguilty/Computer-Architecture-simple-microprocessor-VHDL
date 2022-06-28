    
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Memory is
    Port ( address : in  STD_LOGIC_VECTOR (5 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0);
           CE : in  STD_LOGIC);
end Memory;


architecture Behavioral of Memory is
type memory is array(0 to 63) of std_logic_vector (7 downto 0); --64X8 memory
signal ROM : memory := (
0  => "00001001" , --LDA @9h
1  => "11101111" , --OUT
2  => "00011010" , --ADD @Ah
3  => "11101111" , --OUT
4  => "00101011" , --SUB @Bh
5  => "11101111" , --OUT
6  => "11111111" , --HLT
7  => "00000000" ,
8  => "00000000" ,
9  => "00000110" , --6
10 => "00001000" , --8
11 => "00000011" , --3
12 => "00000000" ,
13 => "11111111" ,
14 => "11111111" , 
15 => "11111111" );


begin


dataout <= RAM(conv_integer(unsigned(address))) when CE = '1' else (others => 'Z');


end Behavioral;






