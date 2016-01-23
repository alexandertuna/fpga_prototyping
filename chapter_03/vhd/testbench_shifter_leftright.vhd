library ieee;
use ieee.std_logic_1164.all;

entity testbench_shifter_leftright is
end testbench_shifter_leftright;

architecture arch of testbench_shifter_leftright is

  signal shiftleft : std_logic;
  signal amount    : std_logic_vector(2 downto 0);
  signal input     : std_logic_vector(7 downto 0);
  signal output    : std_logic_vector(7 downto 0);

begin

  uut: entity work.shifter_leftright(arch)
    port map(shiftleft => shiftleft,
             amount    => amount,
             input     => input,
             output    => output
             );

  process
  begin

    shiftleft <= '0'; amount <= "000"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "001"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "010"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "011"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "100"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "101"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "110"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '0'; amount <= "111"; input <= "00000001"; wait for 100 ns;

    shiftleft <= '1'; amount <= "000"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "001"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "010"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "011"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "100"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "101"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "110"; input <= "00000001"; wait for 100 ns;
    shiftleft <= '1'; amount <= "111"; input <= "00000001"; wait for 100 ns;

  end process;
  
end arch;

