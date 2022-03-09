--somador 8bits
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

--Entidade
ENTITY somador IS
    PORT(
        a,b : in std_logic_vector(7 downto 0); 
        resultado : out std_logic_vector(7 downto 0)
    );
END somador;

ARCHITECTURE Main OF somador IS
BEGIN
    resultado <= a + b;
END Main;