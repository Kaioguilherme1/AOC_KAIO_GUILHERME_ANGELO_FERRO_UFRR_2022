-- MULTPLEXADOR 1x4
--8 BITS
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY mult1x4 IS
    PORT (
        
        controle: in std_logic_vector(1 downto 0);
        A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        C: in std_logic_vector(7 downto 0);
        D: in std_logic_vector(7 downto 0);
        saida:    out std_logic_vector(7 downto 0)
        
    );
END mult1x4;

ARCHITECTURE Main OF mult1x4 IS
BEGIN


    PROCESS(controle, A, B, C, D)
    BEGIN
        CASE controle IS
            WHEN "00" => saida <= A;
            WHEN "01" => saida <= B;
            WHEN "10" => saida <= C;
            WHEN "11" => saida <= D;
				WHEN OTHERS => saida <= A; 
        END CASE;
    END PROCESS;

END Main;