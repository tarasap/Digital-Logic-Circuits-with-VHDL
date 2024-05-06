library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One_bit_Comparator is
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
end One_bit_Comparator;

architecture Behavioral of One_bit_Comparator is

begin
a_gt_b <= (A AND (not B)) or (A And gt) or (gt And (not B));
a_eq_b <= (A AND B AND eq) or ((not A) AND (not B) AND eq);
a_lt_b <= (lt And (not A)) or (B And lt) or (B And (not A));

end Behavioral;
