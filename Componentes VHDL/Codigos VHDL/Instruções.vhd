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
	fila_de_execucao(1) <= "00000001";
	fila_de_execucao(2) <= "00000010";
	fila_de_execucao(3) <= "00000011";
	fila_de_execucao(4) <= "00000100";
	fila_de_execucao(5) <= "00000101";
	fila_de_execucao(6) <= "00000110";
	fila_de_execucao(7) <= "00000111";
	fila_de_execucao(8) <= "00001000";
	fila_de_execucao(9) <= "00001001";
	fila_de_execucao(10) <= "00001010";
	fila_de_execucao(11) <= "00001011";
	fila_de_execucao(12) <= "00001110";
	fila_de_execucao(13) <= "00001111";
	fila_de_execucao(14) <= "00010000";
	fila_de_execucao(15) <= "00010011";
	fila_de_execucao(16) <= "00010100";

    indice <= TO_INTEGER(UNSIGNED(pc));
	 instrucao <= fila_de_execucao(indice);
    
    
END Main;