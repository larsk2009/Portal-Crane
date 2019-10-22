library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_ARITH.all;
use ieee.std_logic_signed.all;

entity pmod_rotary is
  generic (
    WIDTH_DATA : natural:= 32;
	DEBOUNCE_COUNT : natural := 200;
	DEBOUNCE_COUNT_WIDTH : natural := 9
  );
  port (
    clk : in std_logic;
    rst_n : in std_logic;
    rotary_a : in std_logic;
    rotary_b : in std_logic;
    rotary_i : in std_logic;
    encoder: out std_logic_vector(WIDTH_DATA - 1 downto 0)
  );
end pmod_rotary;

architecture rtl of pmod_rotary is
  -- Added Signals
  signal rotary_a_r  	: std_logic;                  
  signal rotary_b_r  	: std_logic;                 
  signal rotary_i_r 	: std_logic;               

  -- FSM States
  constant STATE_CAL : std_logic_vector(2 downto 0) := b"111";
  constant STATE_000 : std_logic_vector(2 downto 0) := b"000";
  constant STATE_010 : std_logic_vector(2 downto 0) := b"010";
  constant STATE_110 : std_logic_vector(2 downto 0) := b"110";
  constant STATE_100 : std_logic_vector(2 downto 0) := b"100";
  constant STATE_001 : std_logic_vector(2 downto 0) := b"001";

  signal state_r       : std_logic_vector(2 downto 0);
  signal state_nxt     : std_logic_vector(2 downto 0);
  signal state_pot_r   : std_logic_vector(2 downto 0);
  signal state_pot_nxt : std_logic_vector(2 downto 0);

  signal counter_r     : std_logic_vector(30 downto 0);
  signal counter_nxt   : std_logic_vector(30 downto 0);
  signal direction_r   : std_logic; 
  signal direction_nxt : std_logic; 

  signal debounce_count_r   : std_logic_vector(DEBOUNCE_COUNT_WIDTH-1 downto 0);
  signal debounce_count_nxt : std_logic_vector(DEBOUNCE_COUNT_WIDTH-1 downto 0);

  begin
  
	fsm_combinatorial_proc : process (rotary_a_r, rotary_b_r, rotary_i_r, counter_r, state_pot_r, state_r, direction_r, debounce_count_r)
	variable state_v 		  : std_logic_vector(2 downto 0);
	variable state_pot_v 	  : std_logic_vector(2 downto 0);
	variable debounce_count_v : std_logic_vector(DEBOUNCE_COUNT_WIDTH-1 downto 0);
	variable counter_v 		  : std_logic_vector(30 downto 0);
	variable direction_v 	  : std_logic;
	begin
		state_v := state_r;
		state_pot_v := rotary_a_r &  rotary_b_r & rotary_i_r;
		counter_v := counter_r;
		debounce_count_v := debounce_count_r;
		direction_v := direction_r;

		-- Debounce count
		if state_pot_v = state_pot_r then
			debounce_count_v := debounce_count_r-1;	
		else
			debounce_count_v := "011001000"; 
		end if;
		if debounce_count_r = "000000000" then
			debounce_count_v := "011001000"; 
			state_case: case state_r is
				when STATE_CAL =>
					state_v := state_pot_r;
					counter_v := (others => '0');

				when STATE_000  | STATE_001 =>
					if state_pot_r = STATE_100 then
						state_v := state_pot_r;
						counter_v := counter_r+1;
						direction_v := '1';
					elsif state_pot_r = STATE_010 then
						state_v := state_pot_r;
						counter_v := counter_r-1;
						direction_v := '0';
					end if;

				when STATE_100 =>
					if state_pot_r = STATE_110 then
						state_v := state_pot_r;
						counter_v := counter_r+1;
						direction_v := '1';
					elsif state_pot_r = STATE_000   or state_pot_r = STATE_001 then
						state_v := state_pot_r;
						counter_v := counter_r-1;
						direction_v := '0';
					end if;

				when STATE_110 => 
					if state_pot_r = STATE_010 then
						state_v := state_pot_r;
						counter_v := counter_r+1;
						direction_v := '1';
					elsif state_pot_r = STATE_100 then
						state_v := state_pot_r;
						counter_v := counter_r-1;
						direction_v := '0';
					end if;

				when STATE_010 =>
					if state_pot_r = STATE_000  or state_pot_r = STATE_001 then
						state_v := state_pot_r;
						counter_v := counter_r+1;
						direction_v := '1';
					elsif state_pot_r = STATE_110 then
						state_v := state_pot_r;
						counter_v := counter_r-1;
						direction_v := '0';
					end if;

				-- I channel high
				--when STATE_001 => null;

				when others => null;

			end case;
		end if;

		state_pot_nxt <= state_pot_v;
		debounce_count_nxt <= debounce_count_v;
		state_nxt <= state_v;
		counter_nxt <= counter_v;
		direction_nxt <= direction_v;
	end process;

    -- Sequential process with synchronous reset: CHANNEL A, B, and I
	seq_counter_process_cha_chb_chi : process(clk)
    begin
		if rising_edge(clk) then
			if rst_n = '0' then -- reset
				rotary_a_r    <= '0';
				rotary_b_r    <= '0';
				rotary_i_r    <= '0';

				state_r    	  <= STATE_CAL;
				state_pot_r   <= STATE_CAL;	
				direction_r <= '-';
				debounce_count_r <= "011001000";
				counter_r     <= (others => '0');
			else 
				-- Sample input lines.
				rotary_a_r       <= rotary_a;
				rotary_b_r       <= rotary_b;
				rotary_i_r       <= rotary_i;

				state_r 	     <= state_nxt;
				state_pot_r      <= state_pot_nxt;
				direction_r 	 <= direction_nxt;
				debounce_count_r <= debounce_count_nxt;
				counter_r 		 <= counter_nxt;
			end if;
		end if;
	end process;
    
	-- Encapsulating rot and cnt_a_r -------------------------------
	encoder(31)	        <= direction_r;  -- rotation bit, 0 for direction A. 1 for direction B.
	encoder(30 downto 0)	<= counter_r(30 downto 0);--31 bits for counting.


end rtl;
