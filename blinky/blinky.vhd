library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity blinky is
    Generic (speed : integer := 20);
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC);
end blinky;

architecture Behavioral of blinky is
signal counter : std_logic_vector(speed downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
        end if;
    end process;

led <= counter(speed);
end Behavioral;
