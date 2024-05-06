library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_bit_Comparator is
  Port (    
         A_4            :in               std_logic_vector(3 downto 0);
         B_4            :in               std_logic_vector(3 downto 0);
         eq_1           :in               std_logic;
         lt_1           :in               std_logic;
         gt_1           :in               std_logic;
         a_gt_b_4       :out              std_logic;
         a_eq_b_4       :out              std_logic;
         a_lt_b_4       :out              std_logic  
  
   );end Four_bit_Comparator;

architecture Behavioral of Four_bit_Comparator is
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
 Signal     gt_out    :std_logic;
 Signal     lt_out    :std_logic;
 Signal     eq_out    :std_logic;
 Signal     gt_out_2  :std_logic;
 Signal     eq_out_2  :std_logic;
 Signal     lt_out_2  :std_logic;
 Signal     lt_out_3  :std_logic;
 Signal     gt_out_3  :std_logic;
 Signal     eq_out_3  :std_logic;
 
 
begin

uut_1: One_bit_Comparator
port map (                         
 A       => A_4(0)      ,    
 B       => B_4(0)      ,    
 eq      => eq_1     ,    
 lt      => lt_1     ,    
 gt      => gt_1     ,    
 a_gt_b  => gt_out ,    
 a_eq_b  => eq_out ,    
 a_lt_b  => lt_out      
);

uut_2: One_bit_Comparator
port map (                         
 A       => A_4(1)      ,    
 B       => B_4(1)      ,    
 eq      => eq_out     ,    
 lt      => lt_out     ,    
 gt      => gt_out     ,    
 a_gt_b  => gt_out_2 ,    
 a_eq_b  => eq_out_2 ,    
 a_lt_b  => lt_out_2     
);


uut_3: One_bit_Comparator
port map (                         
 A       => A_4(3)      ,    
 B       => B_4(3)      ,    
 eq      => eq_out_2   ,    
 lt      => lt_out_2   ,    
 gt      => gt_out_2   ,    
 a_gt_b  => gt_out_3 ,    
 a_eq_b  => eq_out_3 ,    
 a_lt_b  => lt_out_3     
);


uut_4: One_bit_Comparator
port map (                         
 A       => A_4(2)      ,    
 B       => B_4(2)      ,    
 eq      => eq_out_3  ,    
 lt      => lt_out_3  ,    
 gt      => gt_out_3  ,    
 a_gt_b  => a_gt_b_4,    
 a_eq_b  => a_eq_b_4,    
 a_lt_b  => a_lt_b_4    
);

end Behavioral;
