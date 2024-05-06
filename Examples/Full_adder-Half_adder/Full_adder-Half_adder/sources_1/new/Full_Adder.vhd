library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
Port (     
        A                   :in         std_logic;
        B                   :in         std_logic;
        C                   :in         std_logic;
        Sum                 :out        std_logic;     
        Carry_out           :out        std_logic      
         ); 
end Full_Adder;

architecture Behavioral of Full_Adder is

component Half_Adder 
 Port (     
        A                   :in         std_logic;
        B                   :in         std_logic;
        Sum                 :out        std_logic;     
        Carry_out           :out        std_logic      
         ); 
end component;


Signal  cout_1           :std_logic;
Signal  cout_2           :std_logic;
Signal  Sum_signal       :std_logic;
begin

uut_1: Half_Adder port map(
       A            =>      A         ,
       B            =>      B         ,
       carry_out    =>      cout_1      ,  
       Sum          =>      Sum_signal     
        );
        
uut_2: Half_Adder port map(
       A            =>      Sum_signal ,
       B            =>      C ,      
       Carry_out    =>      Cout_2,      
       sum          =>      sum   
        );

Carry_out <= Cout_2 or Cout_1;

end Behavioral;
