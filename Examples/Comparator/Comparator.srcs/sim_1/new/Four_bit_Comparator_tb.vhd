----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/06/2024 11:26:34 PM
-- Design Name: 
-- Module Name: Four_bit_Comparator_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Four_bit_Comparator_tb is
--  Port ( );
end Four_bit_Comparator_tb;

architecture Behavioral of Four_bit_Comparator_tb is
component Four_bit_Comparator
Port (    
         A_4            :in               std_logic_vector(3 downto 0);
         B_4            :in               std_logic_vector(3 downto 0);
         eq_1           :in               std_logic;
         lt_1           :in               std_logic;
         gt_1           :in               std_logic;
         a_gt_b_4       :out              std_logic;
         a_eq_b_4       :out              std_logic;
         a_lt_b_4       :out              std_logic  
  
);
end component;

Signal    A_4       :  std_logic_vector(3 downto 0);
Signal    B_4       :  std_logic_vector(3 downto 0);
Signal    eq_1      :  std_logic;                   
Signal    lt_1      :  std_logic;                   
Signal    gt_1      :  std_logic;                   
Signal    a_gt_b_4  :  std_logic;                   
Signal    a_eq_b_4  :  std_logic;                   
Signal    a_lt_b_4  :  std_logic;                    

begin

uut:  Four_bit_Comparator  port map(
A_4      => A_4      ,
B_4      => B_4      ,
eq_1     => eq_1     ,
lt_1     => lt_1     ,
gt_1     => gt_1     ,
a_gt_b_4 => a_gt_b_4 ,
a_eq_b_4 => a_eq_b_4 ,
a_lt_b_4 => a_lt_b_4 
);


uuts: process
begin
A_4  <= "1101";
B_4  <= "1110";
eq_1 <= '1';
lt_1 <= '0';
gt_1 <= '0';
wait for 20 ns;
A_4  <= "1100";
B_4  <= "1100";
wait for 20 ns;
A_4  <= "0010";
B_4  <= "0001";

wait;
end process;
end Behavioral;
