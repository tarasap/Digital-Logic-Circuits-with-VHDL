library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test01_tb is
--  Port ( );
end test01_tb;

architecture Behavioral of test01_tb is

component test_01  
Port (     
        A           :in         std_logic;
        B           :in         std_logic;
        C           :in         std_logic;
        Fa          :out        std_logic
         ); 
end component;

Signal      A_0       :std_logic;
Signal      B_0       :std_logic;
Signal      C_0       :std_logic;
Signal      Fa_0      :std_logic;

begin

uut : test_01 port map (
a       =>  A_0   ,
B       =>  B_0   ,
C       =>  C_0   ,
Fa      =>  Fa_0    
);            


stimlu :process 
begin
 A_0    <= '0';
 B_0    <= '0';
 C_0    <= '0';
 wait for 20 ns; 
 ----------------
 A_0    <= '0';
 B_0    <= '0';
 C_0    <= '1';
 wait for 20 ns; 
 ----------------
 A_0    <= '0';
 B_0    <= '1';
 C_0    <= '0';
 wait for 20 ns; 
 ----------------
 A_0    <= '0';
 B_0    <= '1';
 C_0    <= '1';
 wait for 20 ns; 
 ---------------- 
 A_0    <= '1';
 B_0    <= '0';
 C_0    <= '0';
 wait for 20 ns; 
 ----------------
 A_0    <= '1';
 B_0    <= '0';
 C_0    <= '1';  
 wait for 20 ns;
 ----------------
 A_0    <= '1';
 B_0    <= '1';
 C_0    <= '0'; 
 wait for 20 ns; 
 ----------------
 A_0    <= '1';
 B_0    <= '1';
 C_0    <= '1';
 wait for 20 ns;

wait;
end process;

end Behavioral;
