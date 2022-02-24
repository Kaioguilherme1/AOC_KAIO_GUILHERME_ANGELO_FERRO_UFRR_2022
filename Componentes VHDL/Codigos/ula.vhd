--ULA com 4 funções
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

--Entidade
ENTITY ULA IS
    PORT(
        a,b : in std_logic_vector(7 downto 0); -- registrador 1, registrador 2
        alu_op : in std_logic; --seletor de funcao
        alu_result: out std_logic_vector(7 downto 0) -- saida do resultado
    );
END ULA;

ARCHITECTURE Main OF ULA IS
BEGIN
    PROCESS(alu_op,a,b)
    BEGIN
        CASE alu_op IS
            WHEN '0' =>
                alu_result <= a + b; -- add
            WHEN '1' =>
                alu_result <= a - b; -- sub
            WHEN OTHERS => alu_result <= a + b; -- add
        END CASE;
    END PROCESS;
END Main;