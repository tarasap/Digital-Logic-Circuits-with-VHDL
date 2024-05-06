library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One_bit_Comparator_tb is
--  Port ( );
end One_bit_Comparator_tb;

architecture Behavioral of One_bit_Comparator_tb is
component One_bit_Comparator
Port (                                              
       A            :in               std_logic;    
       B            :in               std_logic;    
       eq           :in               std_logic;    
       lt           :in               std_logic;    
       gt           :in               std_logic;    
       a_gt_b       :out              std_logic;    
       a_eq_b       :out              std_logic;    
       a_lt_b       :out              std_logic     
                                                    
 ); 
 end component;
    
    
Signal A       :std_logic;
Signal B       :std_logic;
Signal eq      :std_logic;
Signal lt      :std_logic;
Signal gt      :std_logic;
Signal a_gt_b  :std_logic;
Signal a_eq_b  :std_logic;
Signal a_lt_b  :std_logic;
                                             
begin

uut: One_bit_Comparator port map (

 A       => A       ,
 B       => B       ,
 eq      => eq      ,
 lt      => lt      ,
 gt      => gt      ,
 a_gt_b  => a_gt_b  ,
 a_eq_b  => a_eq_b  ,
 a_lt_b  => a_lt_b  
);

uuts: process
begin
A  <= '1';
B  <= '1';
eq <= '1';
lt <= '0';
gt <= '0';
wait for 20 ns;
A  <= '1';
B  <= '0';
wait for 20 ns;
A  <= '0';
B  <= '1';
wait for 20 ns;
A  <= '0';
B  <= '0';
wait;
end process;
end Behavioral;
