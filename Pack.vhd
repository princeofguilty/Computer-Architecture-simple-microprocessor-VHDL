
library IEEE;
use IEEE.STD_LOGIC_1164.all;


package Pack is
 

component REG is
            GENERIC(n:NATURAL);
            port (     I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
                            CLK, LOAD, INC, dec, CLR: IN STD_LOGIC;
                            Data: out  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
    end component;
	 
	 -----------------------------------------

component MUX4X1_v8 is
                        port (  i0:  in std_logic_vector(7 downto 0);
                                        i1:  in std_logic_vector(7 downto 0);
                                        i2:  in std_logic_vector(7 downto 0);
                                        i3:  in std_logic_vector(7 downto 0);
                                        S : in std_logic_vector (1 downto 0);
                                        o :  out std_logic_vector(7 downto 0));
                    end component;
						  
						  
				----------------------------------------
						  
	component MUX8X1_v8 is 
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
end component ;					  

               ----------------------------------------

component DEC2X4 is
                port( i :  in std_logic_vector(1 downto 0);
                            o : out std_logic_vector(3 downto 0);
                            en : in std_logic);
                            
        end component;
		  
		  ----------------



component DEC3X8 is

	port( i :  in std_logic_vector(2 downto 0);
							o : out std_logic_vector(7 downto 0);
							en : in std_logic);


end component;
----------------------------------
component Encoder4X2 is
 port(
 a : in STD_LOGIC_VECTOR(3 downto 0);
 b : out STD_LOGIC_VECTOR(1 downto 0)
 );
end component;


      ----------------------------
		
		
component Encoder8x3 is
port (d : in std_logic_vector (7 downto 0);
      o : out std_logic_vector (2 downto 0));
		
		
end component ;
		        ----------------------
		
component MEM is
    Port ( address : in  STD_LOGIC_VECTOR (5 downto 0);
           dataout : out  STD_LOGIC_VECTOR (7 downto 0);
           R : in  STD_LOGIC); --read
end component;

        ---------------------------------
		  
 component Counter4 is
    Port ( rst,clk,en : in std_logic;
           o: out std_logic_vector(0 to 2));
end component;


               ---------------------------
COMPONENT Control_Unit is
	port( Din : in std_logic_vector(1 downto 0);
			Tin : in std_logic_vector(2 downto 0);
			Load : out std_logic_vector(4 downto 0);
			PC_INC: out std_logic;
			AC_INC: out std_logic;
			CLR_SQC: out std_logic;
			ALU_ENC: Out std_logic_vector(3 downto 0);
			BUS_ENC_OUT: out std_logic_vector(7 downto 0);
			IR: IN STD_LOGIC_VECTOR(1 DOWNTO 0) -- 01 , 10
	);
end COMPONENT;
				---------------------------------
				
COMPONENT ALU is
	port(
		Enc_in : in STD_LOGIC_VECTOR(3 downto 0); --inputs of encoder
		DR : in STD_LOGIC_VECTOR(7 downto 0); -- DR REGISTER AS INPUT
		AC : in STD_LOGIC_VECTOR(7 downto 0); -- AC REGISTER AS INPUT
		ALU_OUT : out STD_LOGIC_VECTOR(7 downto 0) -- ALU OUTPUT
	);
END COMPONENT;
 


				-----------------------------------


component COM_BUS is
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
end component;

end Pack;


package body Pack is



 
end Pack;
