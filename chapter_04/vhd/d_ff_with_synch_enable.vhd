library ieee;
use ieee.std_logic_1164.all;

entity d_ff_enable is
  port(
    clk, reset, en :  in std_logic;
    input          :  in std_logic;
    output         : out std_logic
    );
end d_ff_enable;

architecture arch of d_ff_enable is
begin
  process(clk, reset)
  begin

    if (reset='1') then
      output <= '0';
    elsif (rising_edge(clk)) then
      if (en='1') then
        output <= input;
      end if;
    end if;
    
  end process;
end arch;

