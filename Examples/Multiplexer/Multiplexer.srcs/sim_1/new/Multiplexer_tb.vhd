library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer_tb is
--  Port ( );
end Multiplexer_tb;

architecture Behavioral of Multiplexer_tb is
    Component Multiplexer Port ( 
         A     :in       std_logic_vector(7 downto 0);                                        
         B     :in       std_logic_vector(7 downto 0);                                    
         C     :in       std_logic_vector(7 downto 0); 
         D     :in       std_logic_vector(7 downto 0); 
         S     :in       std_logic_vector(1 downto 0); 
         Q     :out      std_logic_vector(7 downto 0) 
                            
        );
    end component;
    
Signal  A_0 :std_logic_vector(7 downto 0);
Signal  B_0 :std_logic_vector(7 downto 0);
Signal  C_0 :std_logic_vector(7 downto 0);
Signal  D_0 :std_logic_vector(7 downto 0);
Signal  S_0 :std_logic_vector(1 downto 0);
Signal  Q_0 :std_logic_vector(7 downto 0);

begin
uut: Multiplexer port map(
A  => A_0,
B  => B_0,
C  => C_0,
D  => D_0,
S  => S_0,
Q  => Q_0

);

stt : process
begin
A_0 <= "01111110";  
B_0 <= "01100110";
C_0 <= "01101110";
D_0 <= "11100110";
S_0 <= "00";

wait for 20 ns;
S_0 <= "01";

wait for 20 ns;
S_0 <= "10";

wait for 20 ns;
S_0 <= "11";
wait;
end process;
end Behavioral;
