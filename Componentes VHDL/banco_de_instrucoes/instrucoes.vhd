--Banco De instrucoes

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;  

ENTITY instrucoes IS
    PORT (
        clk : IN STD_LOGIC;
        loop_func : IN std_logic_vector(1 downto 0);
        op_code : out std_logic_vector(1 downto 0);
        reg1 : out std_logic_vector(1 downto 0);
        reg2 : out std_logic_vector(1 downto 0);
        func : out std_logic_vector(1 downto 0);
        addr_i: out std_logic_vector(1 downto 0)

    );
END instrucoes;

ARCHITECTURE Main OF instrucoes IS

TYPE instrucao_type IS ARRAY (0 to 15 ) OF std_logic_vector (7 downto 0); -- vetor de instruçoes do tipo vetor de 8 bits
signal indice: integer range 0 to 15;
SIGNAL fila_de_execucao: instrucao_type;
BEGIN

    --inicialização do vetor de instruções
    fila_de_execucao(0) <= "00000011";
    fila_de_execucao(1) <= "00000000";
    fila_de_execucao(2) <= "00000001";
    fila_de_execucao(3) <= "11111111";
    fila_de_execucao(4) <= "01100110";
    fila_de_execucao(5) <= "01100111";
    fila_de_execucao(6) <= "01101000";
    fila_de_execucao(7) <= "01101001";
    fila_de_execucao(8) <= "01101010";
    fila_de_execucao(9) <= "01101011";
    fila_de_execucao(10) <= "01101100";
    fila_de_execucao(11) <= "01101101";
    fila_de_execucao(12) <= "01101110";
    fila_de_execucao(13) <= "01101111";
    fila_de_execucao(14) <= "01110000";
    fila_de_execucao(15) <= "01110001";

    
    
    PROCESS (clk,loop_func)
    BEGIN

        IF (clk = '1' and indice < 16) THEN
			indice <= indice + 1;	
			IF(loop_func = "01") THEN
					-- pulo do beq
					indice <= indice + TO_INTEGER(UNSIGNED(fila_de_execucao(indice)(1 downto 0))); 
			IF	(loop_func = "10") THEN  
					-- loop volta tantas instruções para traz
					indice <= indice - TO_INTEGER(UNSIGNED(fila_de_execucao(indice)(5 downto 2)));  
         END if;  
			END IF;
            op_code <= fila_de_execucao(indice)(7 downto 6);
            reg1 <= fila_de_execucao(indice)(5 downto 4);
            reg2 <= fila_de_execucao(indice)(3 downto 2);
            func <= fila_de_execucao(indice)(1 downto 0);
            addr_i <= fila_de_execucao(indice)(1 downto 0);
        END IF;
    END PROCESS;
END Main;