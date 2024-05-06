library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_01 is

 Port (     
        A           :in         std_logic;
        B           :in         std_logic;
        C           :in         std_logic;
        Fa          :out        std_logic
        
         ); 
end test_01;

architecture Behavioral of test_01 is
Signal    p1    :std_logic;
Signal    p2    :std_logic;

begin
p1 <= A And B;
p2 <= (c xor b ) And (Not a);
Fa <=  p1 or p2;

--Fa <= (A And B) or ((c xor b) And (Not a));
end Behavioral;
