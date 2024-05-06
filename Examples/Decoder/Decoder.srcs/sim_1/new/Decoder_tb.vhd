library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_tb is
--  Port ( );
end Decoder_tb;

architecture Behavioral of Decoder_tb is
component decoder 
Port (    
            A  :in       std_logic_vector(1 downto 0);
            en :in       std_logic;
            m  :out      std_logic_vector(3 downto 0)
            );
end component;
Signal A :     std_logic_vector(1 downto 0);
Signal en:     std_logic;                   
Signal m :     std_logic_vector(3 downto 0) ;

begin
uut : decoder
port map(
        A  => A ,
        en => en,
        m  => m 
);

suut: process
begin
    A  <= "10";
    en <= '1';
    wait for 10 ns;
    
    
    A  <= "01";
    en <= '0';
    wait for 10 ns;
    
wait;
end process;
end Behavioral;
