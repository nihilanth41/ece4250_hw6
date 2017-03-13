-- use structural model
-- A: input n bit vector
-- B: input 1 bit (control signal)
-- C: output n bit vector
-- when B='1' then C<=A;
-- when B='0' C <= (others => '0');
-- use generic to specify the value of N (default = 4)
-- use generate statement to instantiate N number of 2-input (1-bit) AND gates.
