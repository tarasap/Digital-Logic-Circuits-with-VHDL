library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Full_Adder_tb is
--  Port ( );
end Full_Adder_tb;

architecture Behavioral of Full_Adder_tb is
Component Full_Adder 
    Port (     
        A                   :in         std_logic;
        B                   :in         std_logic;
        C                   :in         std_logic;
        Sum                 :out        std_logic;     
        Carry_out           :out        std_logic      
         ); 
   end component;
Signal A         : std_logic;
Signal B         : std_logic;
Signal C         : std_logic;
Signal Sum       : std_logic;
Signal Carry_out : std_logic;

begin
uut : Full_Adder port map (
A           => A        ,
B           => B        ,
C           => C        ,
Sum         => Sum      ,
Carry_out   => Carry_out
);


stimlu :process 
begin
 A    <= '0';
 B    <= '0';
 C    <= '0';
 wait for 20 ns; 
 ----------------
 A   <= '0';
 B   <= '0';
 C   <= '1';
 wait for 20 ns; 
 ----------------
 A    <= '0';
 B    <= '1';
 C    <= '0';
 wait for 20 ns; 
 ----------------
 A    <= '0';
 B    <= '1';
 C    <= '1';
 wait for 20 ns; 
 --------------
  A   <= '1';
 B    <= '0';
 C    <= '0';
 wait for 20 ns; 
 ----------------
 A    <= '1';
 B    <= '0';
 C    <= '1';
 wait for 20 ns; 

wait;
end process;
end Behavioral;
