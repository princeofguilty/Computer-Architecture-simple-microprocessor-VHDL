library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   
entity MUX4X1_v8 is 
                          port (        i0:  in std_logic_vector(7 downto 0);
                                        i1:  in std_logic_vector(7 downto 0);
                                        i2:  in std_logic_vector(7 downto 0);
                                        i3:  in std_logic_vector(7 downto 0);
                                        S :  in std_logic_vector (1 downto 0);
                                        o :  out std_logic_vector(7 downto 0));
end MUX4X1_v8 ;


architecture Behavioral of MUX4X1_v8  is


begin


    o <= i0 when s="00" else
                i1 when s="01" else
                i2 when s="10" else
                i3 when s="11";
        


end Behavioral;
 




