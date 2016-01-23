library ieee;
use ieee.std_logic_1164.all;

entity reg_reset is
  generic(NBITS: integer := 8);
  port(
    clk, reset :  in std_logic;
    input      :  in std_logic_vector(NBITS-1 downto 0);
    output     : out std_logic_vector(NBITS-1 downto 0)
    );
end reg_reset;

architecture arch of reg_reset is
begin
  process(clk, reset)
  begin

    if (reset='1') then
      output <= (others => '0');
    elsif (rising_edge(clk)) then
      output <= input;
    end if;
    
  end process;
end arch;

