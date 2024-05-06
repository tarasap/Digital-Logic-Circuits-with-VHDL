
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
 Port (     
        A                   :in         std_logic;
        B                   :in         std_logic;
        Sum                 :out        std_logic;     
        Carry_out           :out        std_logic      
         ); 
end Half_Adder;

architecture Behavioral of Half_Adder is

begin
Sum       <= A xor B;
Carry_out <= A And B;

end Behavioral;
