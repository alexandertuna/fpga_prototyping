library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_counter_univ is
  generic(N: integer := 8);
  port(clk, reset                :  in std_logic;
       synch_clear, load, en, up :  in std_logic;
       input                     :  in std_logic_vector(N-1 downto 0);
       max_tick, min_tick        : out std_logic;
       output                    : out std_logic_vector(N-1 downto 0)
       );
end binary_counter_univ;

architecture arch of binary_counter_univ is

  signal r_reg:  unsigned(N-1 downto 0);
  signal r_next: unsigned(N-1 downto 0);

begin

  process(clk, reset)
  begin
    if (reset='1') then
      r_reg <= (others => '0');
    elsif (rising_edge(clk)) then
      r_reg <= r_next;
    end if;
  end process;

  r_next <= (others => '0')  when synch_clear='1'   else
            unsigned(input)  when load='1'          else
            r_reg + 1        when en='1' and up='1' else
            r_reg - 1        when en='1' and up='0' else
            r_reg;

  output <= std_logic_vector(r_reg);
  max_tick <= '1' when r_reg = (2**N -1) else '0';
  min_tick <= '1' when r_reg = 0         else '0';
  
end arch;
