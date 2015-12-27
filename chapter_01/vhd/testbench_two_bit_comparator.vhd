library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture arch of testbench is

  signal test_in_0, test_in_1: std_logic_vector(1 downto 0);
  signal test_out:             std_logic;

begin

  unit_under_test: entity work.two_bit_comparator_bootstrap(sum_of_products)
    port map(a      => test_in_0,
             b      => test_in_1,
             a_eq_b => test_out
             );

  process
  begin
  
    test_in_0 <= "00";
    test_in_1 <= "00";
    wait for 200 ns;
  
    test_in_0 <= "01";
    test_in_1 <= "00";
    wait for 200 ns;
  
    test_in_0 <= "01";
    test_in_1 <= "11";
    wait for 200 ns;
  
    test_in_0 <= "11";
    test_in_1 <= "11";
    wait for 200 ns;
  
    test_in_0 <= "11";
    test_in_1 <= "00";
    wait for 200 ns;

  end process;
  
end arch;

