library ieee;
use ieee.std_logic_1164.all;

entity shift_register_freerun is
  generic(N: integer := 8);
  port(clk, reset, input:  in std_logic;
       output           : out std_logic
       );
end shift_register_freerun;

architecture arch of shift_register_freerun is

  signal r_reg, r_next: std_logic_vector(N-1 downto 0);

begin

  process(clk, reset)
  begin
    if (reset='1') then
      r_reg <= (others => '0');
    elsif (rising_edge(clk)) then
      r_reg <= r_next;
    end if;
  end process;

  r_next <= input & r_reg(N-1 downto 1);
  output <= r_reg(0);

end arch;
