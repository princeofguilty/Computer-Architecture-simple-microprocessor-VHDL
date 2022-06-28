library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   
entity MUX8X1_v8 is 
                          port (        i0:  in std_logic_vector(7 downto 0);
                                        i1:  in std_logic_vector(7 downto 0);
                                        i2:  in std_logic_vector(7 downto 0);
                                        i3:  in std_logic_vector(7 downto 0);
													
													 i4:  in std_logic_vector(7 downto 0);
													 i5:  in std_logic_vector(7 downto 0);
													 i6:  in std_logic_vector(7 downto 0);
													 i7:  in std_logic_vector(7 downto 0);
													 
                                        S :  in std_logic_vector (2 downto 0);
                                        o :  out std_logic_vector(7 downto 0));
end MUX8X1_v8 ;


architecture Behavioral of MUX8X1_v8  is


begin


           o <= i0 when s="000" else
                i1 when s="001" else
                i2 when s="010" else
                i3 when s="011" else
                i4 when s="100" else
                i5 when s="101" else
                i6 when s="110" else
                i7 when s="111";
        


end Behavioral;
 




