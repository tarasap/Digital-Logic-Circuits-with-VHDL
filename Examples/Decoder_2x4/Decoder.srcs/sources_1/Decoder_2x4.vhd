library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_2x4 is
  Port (    
            A  :in       std_logic_vector(1 downto 0);
            en :in       std_logic;
            D  :out      std_logic_vector(3 downto 0)
            );
end Decoder_2x4;

architecture Behavioral of Decoder_2x4 is

begin

D <= 	"0001" when A = "00" and en = '1'  else
		"0010" when A = "01" and en = '1'  else
		"0100" when A = "10" and en = '1'  else
		"1000" when A = "11" and en = '1'  else
		"0000" when en = '0';
  
end Behavioral;
