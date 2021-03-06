-- Seletor 1x2
--8 BITS
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY seletor1x2 IS
    PORT (
        
        controle: in std_logic;
        entrada: in std_logic_vector(7 downto 0);
        saidaA: out std_logic_vector(7 downto 0);
        saidaB: out std_logic_vector(7 downto 0)
        
    );
END seletor1x2;

ARCHITECTURE Main OF seletor1x2 IS
BEGIN


    PROCESS(controle)
    BEGIN
        CASE controle IS
            WHEN '0' => saidaA <= entrada;
            WHEN '1' => saidaB <= entrada;
			WHEN OTHERS => saidaA <= entrada; 
        END CASE;
    END PROCESS;

END Main;