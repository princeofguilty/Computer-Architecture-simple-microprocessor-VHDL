    
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MEM is
    Port ( address : in  STD_LOGIC_VECTOR (5 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0);
           R : in  STD_LOGIC); --read
end MEM;


architecture Behavioral of MEM is
type memory is array(0 to 9) of std_logic_vector (7 downto 0); --64X8 memory
signal ROM : memory := (

    --Instructions
		
0  => "00000111" , 
1  => "11000010" ,                   
2  => "01001001" ,                     
3  => "11000001" ,
4  => "00001000" ,          
5  => "11000010" , 
6  => "10000010" , 

      --Data
		 
7  => "00000000" ,
8  => "00000111" ,
9  => "00010000" );




begin


dataout <= ROM(conv_integer(unsigned(address))) when R = '1' else (others => 'Z');


end Behavioral;

