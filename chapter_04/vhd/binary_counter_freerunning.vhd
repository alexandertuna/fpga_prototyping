library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_counter_freerun is
  generic(N: integer := 8);
  port(clk, reset:  in std_logic;
       max_tick  : out std_logic;
       output    : out std_logic_vector(N-1 downto 0)
       );
end binary_counter_freerun;

architecture arch of binary_counter_freerun is

  signal r_reg : unsigned(N-1 downto 0);
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

  r_next   <= r_reg + 1;
  output   <= std_logic_vector(r_reg);
  max_tick <= '1' when r_reg = (2**N - 1) else '0';
  
end arch;
  
