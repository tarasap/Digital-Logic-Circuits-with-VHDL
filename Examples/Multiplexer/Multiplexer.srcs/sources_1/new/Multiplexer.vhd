library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer is
  Port ( 
         A     :in       std_logic_vector(7 downto 0);                                        
         B     :in       std_logic_vector(7 downto 0);                                    
         C     :in       std_logic_vector(7 downto 0); 
         D     :in       std_logic_vector(7 downto 0); 
         S     :in       std_logic_vector(1 downto 0); 
         Q     :out      std_logic_vector(7 downto 0) 
                            
        );
end Multiplexer;

architecture Behavioral of Multiplexer is

begin
Q <= A when S = "00" else
     B when S = "01" else
     C when S = "10" else
     D ; 

end Behavioral;
