library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.All;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;



entity ALU is
port(
	Enc_in : in STD_LOGIC_VECTOR(3 downto 0); --inputs of encoder
	DR : in STD_LOGIC_VECTOR(7 downto 0); -- DR REGISTER AS INPUT
	AC : in STD_LOGIC_VECTOR(7 downto 0); -- AC REGISTER AS INPUT
	ALU_OUT : out STD_LOGIC_VECTOR(7 downto 0) -- ALU OUTPUT
);


end ALU;

architecture Behavioral of ALU is
signal Enc_out :STD_LOGIC_VECTOR(1 downto 0); --inputs of encoder
signal ACandDR :STD_LOGIC_VECTOR(7 downto 0);
signal ACplusDR :STD_LOGIC_VECTOR(7 downto 0);
signal NOTAC : std_logic_vector(7 downto 0);


begin


	Encoder: Encoder4X2 port map(Enc_in,Enc_out);
	ACandDR <= AC and DR;
	ACplusDR <= AC+DR;
	NOTAC <= not AC;
	Mux: MUX4X1_v8 port map ((others=>'Z'),ACandDR,ACplusDR, NOTAC,Enc_out,Alu_out);



end Behavioral;
