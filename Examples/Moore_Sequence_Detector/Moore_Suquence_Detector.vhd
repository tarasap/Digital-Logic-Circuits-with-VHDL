library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Moore Sequence Detector 1101

entity Moore_Sequence_Detector is
 Port (
    q          :in         std_logic;
    Clock      :in         std_logic;
    Reset      :in         std_logic;
    x          :out        std_logic
    
        );
end Moore_Sequence_Detector;

architecture Behavioral of Moore_Sequence_Detector is

type State is (IDLE,S1,S11,S110,S1101);
Signal Pre_State,Next_State :State;

begin

process(clock)
begin
    if(rising_edge(clock)) then
        pre_state <= next_state;
	    if (reset = '1') then
		  pre_state <= IDLE;
	    end if;
	end if;
end process;	
    
process(pre_state,q)
begin
		case(pre_state) is
		  when IDLE => 
		      x <= '0';
		      if (q = '0') then
		          next_state <= IDLE;
		      else
		          next_state <= S1;
		      end if;
		      
		  when S1 => 
		      x <= '0';
		      if (q = '0') then
		          next_state <= IDLE;
		      else
		          next_state <= S11;
		      end if;
		      
		 when S11 => 
		      x <= '0';
		      if (q = '0') then
		          next_state <= S110;
		      else
		          next_state <= S11;
		      end if;
		
		when S110 => 
		      x <= '0';
		      if (q = '0') then
		          next_state <= IDLE;
		      else
		          next_state <= S1101;
		      end if;
		      
	    when S1101 => 
	          x <= '1';
		      if (q = '0') then
		          next_state <= IDLE;
		      else
		          next_state <= S11;
		      end if;
        end case;
end process;
end Behavioral;
