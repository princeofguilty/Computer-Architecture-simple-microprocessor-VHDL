
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY aaa IS
END aaa;
 
ARCHITECTURE behavior OF aaa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal CLK : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 2 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          START => START,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
  START<='1';
  CLk <='1';
     

      -- insert stimulus here 

      wait;
   end process;

END;
