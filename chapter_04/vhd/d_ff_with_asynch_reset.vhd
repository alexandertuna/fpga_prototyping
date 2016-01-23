library ieee;
use ieee.std_logic_1164.all;

entity d_ff_reset is
  port(
    clk, reset :  in std_logic;
    input      :  in std_logic;
    output     : out std_logic
    );
end d_ff_reset;

architecture arch of d_ff_reset is
begin
  process(clk, reset)
  begin

    -- if (clk'event and clk='1') then

    if (reset='1') then
      output <= '0';
    elsif (rising_edge(clk)) then
      output <= input;
    end if;
    
  end process;
end arch;

