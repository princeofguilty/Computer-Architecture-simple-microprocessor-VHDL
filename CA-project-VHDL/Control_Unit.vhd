
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.All;


entity Control_Unit is
	port( Din : in std_logic_vector(1 downto 0); -- HIGHEST TWO BITS ONLY OF IR
			Tin : in std_logic_vector(2 downto 0);
			Load : out std_logic_vector(4 downto 0);
			PC_INC: out std_logic;
			AC_INC: out std_logic;
			CLR_SQC: out std_logic; --clear seq counter
			ALU_ENC: Out std_logic_vector(3 downto 0);
			BUS_ENC_IN: out std_logic_vector(7 downto 0);
			IR: IN STD_LOGIC_VECTOR(1 DOWNTO 0) -- 01 , 10 -- LOWEST TWO BITS ONLY OF IR  
			
		
	);
end Control_Unit;

architecture Behavioral of Control_Unit is
signal Dout : std_logic_vector(3 downto 0);
signal Tout : std_logic_vector(7 downto 0);

begin
	-- DECODER FOR SEQUENCE COUNTES
	T_dec : Dec3x8 port map (Tin, Tout, '1');
	--Decoder for operations
	
	D_dec : Dec2x4 port map (Din, Dout, '1');
	
	-- LOAD : TELLS REGISTER TO GET INPUT
		--AR
	LOAD(0) <= TOUT(0) OR TOUT(2);
		--PC
	LOAD(1) <= TOUT(3) AND DOUT(2);
		--DR
	LOAD(2) <= (DOUT(0) AND TOUT(3)) OR (DOUT(1) AND TOUT(3));
		--AC
	LOAD(3) <= (DOUT(0) AND TOUT(4)) OR (DOUT(1) AND TOUT(4)) OR (DOUT(3) AND TOUT(3) AND IR(1)); 
		--IR
	LOAD(4) <= TOUT(1);
	
	-- _INC : TELLS REGISTER TO INCREMENT
	AC_INC <= DOUT(3) AND TOUT(3) AND IR(0);  
	PC_INC <= TOUT(1);
		
	-- CLEARS SEQUENCE COUNTER
	CLR_SQC <= (DOUT(0) AND TOUT(5))  OR  (DOUT(1) AND TOUT(5))  OR  (DOUT(2) AND TOUT(4))  OR  (DOUT(3) AND TOUT(4)) ;
	
	
	
	-- INPUTS TO ALU ENCODER
	

	ALU_ENC(0) <= '0';
	ALU_ENC(1) <= DOUT(0) AND TOUT(4); 
	ALU_ENC(2) <= DOUT(1) AND TOUT(4);
	ALU_ENC(3) <= DOUT(3) AND TOUT(3) AND IR(1);
	
	-- BUS_ENC_OUT : WHEN ACTIVE, TELLS REGISTER TO OUTPUT ITS DATA
	
	BUS_ENC_IN(0) <='0';
	BUS_ENC_IN(3) <='0';
	BUS_ENC_IN(4) <='0';
	BUS_ENC_IN(7) <='0';
	
	BUS_ENC_IN(1) <= DOUT(2) AND TOUT(3); --AR
	BUS_ENC_IN(2) <= TOUT(0); --PC
	BUS_ENC_IN(5) <= TOUT(2); --IR  
	BUS_ENC_IN(6) <= TOUT(1) or (DOUT(0) and TOUT(3)) or (DOUT(1) and TOUT(3)); --MEMORY
	
	
	
	
end Behavioral;

