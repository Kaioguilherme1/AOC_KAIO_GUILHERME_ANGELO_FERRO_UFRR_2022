-- extensor de 2 para 8 bits
--8 BITS
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL; 


ENTITY extend2to8 IS
    PORT (
        
        entry : in std_logic_vector(1 downto 0);
        output : out std_logic_vector(7 downto 0)
    );
END extend2to8;

ARCHITECTURE Main OF extend2to8 IS
BEGIN
	 output <= std_logic_vector(resize(UNSIGNED(entry), output'length));

END Main;