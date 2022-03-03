--ULA com 4 funções
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

--Entidade
ENTITY ULA IS
    PORT(
        a,b : in std_logic_vector(7 downto 0); -- registrador 1, registrador 2
        alu_op : in std_logic_vector(1 downto 0); --seletor de funcao
        alu_result: out std_logic_vector(7 downto 0); -- saida do resultado
        zero: out std_logic_vector(1 downto 0) --saida zero
    );
END ULA;

ARCHITECTURE Main OF ULA IS
BEGIN
    PROCESS(alu_op,a,b)
    BEGIN
        CASE alu_op IS
            WHEN "00" =>
                alu_result <= a + b; -- add
            WHEN "01" =>
                alu_result <= a - b; -- sub
            WHEN "10" =>
                IF(a = b) THEN
                    zero <= "01";
                ELSE
                    zero <= "00";
                END IF;
            WHEN "11" =>
                alu_result <= a + b; -- add
            WHEN OTHERS => alu_result <= a + b; -- add
        END CASE;
    END PROCESS;
END Main;