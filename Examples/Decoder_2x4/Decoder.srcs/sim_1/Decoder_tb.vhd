library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_tb is
--  Port ( );
end Decoder_tb;

architecture Behavioral of Decoder_tb is
component Decoder_2x4 
Port (    
            A  :in       std_logic_vector(1 downto 0);
            en :in       std_logic;
            D  :out      std_logic_vector(3 downto 0)
            );
end component;
Signal A :     std_logic_vector(1 downto 0);
Signal en:     std_logic;                   
Signal D :     std_logic_vector(3 downto 0) ;

begin
uut : Decoder_2x4
port map(
        A  => A ,
        en => en,
        D  => D 
);

suut: process
begin
    A  <= "00";
    en <= '1';
    wait for 10 ns;
    
    
    A  <= "01";
    en <= '1';
    wait for 10 ns;
    
    A  <= "10";
    en <= '1';
    wait for 10 ns;
    
    A  <= "11";
    en <= '1';
    wait for 10 ns;
    
    A  <= "10";
    en <= '0';
    wait for 10 ns;
    
wait;
end process;
end Behavioral;
