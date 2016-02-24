library ieee;
use ieee.std_logic_1164.all;

entity shift_register_univ is
  generic(N: integer := 8);
  port(clk, reset:  in std_logic;
       control   :  in std_logic_vector(1   downto 0);
       input     :  in std_logic_vector(N-1 downto 0);
       output    : out std_logic_vector(N-1 downto 0)
       );
end shift_register_univ;

architecture arch of shift_register_univ is

  signal r_reg : std_logic_vector(N-1 downto 0);
  signal r_next: std_logic_vector(N-1 downto 0);

begin

  process(clk, reset)
  begin
    if (reset='1') then
      r_reg <= (others => '0');
    elsif (rising_edge(clk)) then
      r_reg <= r_next;
    end if;
  end process;

  with control select
    r_next <=
      r_reg                            when "00",
      r_reg(N-2 downto 0) & input(0)   when "01",
      input(N-1) & r_reg(N-1 downto 1) when "10",
      input                            when others;

  output <= r_reg;
  
end arch;
  
       
