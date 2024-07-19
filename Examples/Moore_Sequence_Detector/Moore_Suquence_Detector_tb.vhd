library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Moore_Sequence_Detector_tb is
--  Port ( );
end Moore_Sequence_Detector_tb;

architecture Behavioral of Moore_Sequence_Detector_tb is
COMPONENT Moore_Sequence_Detector
    PORT(
         Clock  : IN  std_logic;
         Reset  : IN  std_logic;
         q      : IN  std_logic;
         x      : OUT std_logic
        );
    END COMPONENT;
    
    --Inputs
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';
   signal q     : std_logic := '0';

 	--Outputs
   signal x     : std_logic := '0';

   -- Clock period definitions
   constant Clock_period : time := 50 ns;
   
begin

-- Instantiate the Unit Under Test (UUT)
   uut: Moore_Sequence_Detector PORT MAP (
          Clock  => Clock,
          Reset  => Reset,
          q      => q,
          x      => x
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		

        wait for Clock_period;
		reset <= '1';
		wait for Clock_period;
		reset <= '0';
		
      -- insert stimulus here 
        wait for 2*Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '0';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '0';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '0';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
        q <= '1';  wait for Clock_period;
      wait;
   end process;

end Behavioral;
