-- use structural model
-- A: input n bit vector
-- B: input 1 bit (control signal)
-- C: output n bit vector
-- when B='1' then C<=A;
-- when B='0' C <= (others => '0');
-- use generic to specify the value of N (default = 4)
-- use generate statement to instantiate N number of 2-input (1-bit) AND gates.

library ieee;
use ieee.std_logic_1164.all;

entity p3 is
  generic(n : integer := 4);
  port(a : in std_logic_vector(n-1 downto 0) := (others => '0');
       b : in std_logic := '0';
       c : out std_logic_vector(n-1 downto 0) := (others => '0'));
end p3;

architecture p3_arch of p3 is
  
  
