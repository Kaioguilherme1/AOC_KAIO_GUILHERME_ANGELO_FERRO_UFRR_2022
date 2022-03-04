-- MULTPLEXADOR 1x2
--8 BITS
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY mult1x2 IS
    PORT (
        
        controle: in std_logic;
        A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        saida:    out std_logic_vector(7 downto 0)
        
    );
END mult1x2;

ARCHITECTURE Main OF mult1x2 IS
BEGIN


    PROCESS(controle, A, B)
    BEGIN
        CASE controle IS
            WHEN '0' => saida <= A;
            WHEN '1' => saida <= B;
			WHEN OTHERS => saida <= A; 
        END CASE;
    END PROCESS;

END Main;