--Banco De instrucoes

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;  

ENTITY instrucoes IS
    PORT (
        pc : IN std_logic_vector(7 downto 0);
        instrucao : out std_logic_vector(7 downto 0)
    );
END instrucoes;

ARCHITECTURE Main OF instrucoes IS

TYPE instrucao_type IS ARRAY (0 to 16 ) OF std_logic_vector (7 downto 0); -- vetor de instruçoes do tipo vetor de 8 bits
signal indice: integer range 0 to 255;
SIGNAL fila_de_execucao: instrucao_type;
BEGIN

    --inicialização do vetor de instruções
   fila_de_execucao(0) <= "00000000";
	fila_de_execucao(1) <= "00000000";
	fila_de_execucao(2) <= "00000000";
	fila_de_execucao(3) <= "00000000";
	fila_de_execucao(4) <= "00000000";
	fila_de_execucao(5) <= "00000000";
	fila_de_execucao(6) <= "00000000";
	fila_de_execucao(7) <= "00000000";
	fila_de_execucao(8) <= "00000000";
	fila_de_execucao(9) <= "00000000";
	fila_de_execucao(10) <= "00000000";
	fila_de_execucao(11) <= "00000000";
	fila_de_execucao(12) <= "00000000";
	fila_de_execucao(13) <= "00000000";
	fila_de_execucao(14) <= "00000000";
	fila_de_execucao(15) <= "00000000";
	fila_de_execucao(16) <= "00000000";

    indice <= TO_INTEGER(UNSIGNED(pc));
	 instrucao <= fila_de_execucao(indice);
    
    
END Main;