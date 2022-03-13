--Banco De instrucoes

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;  

ENTITY instrucoes IS
    PORT (
        pc : IN std_logic_vector(7 downto 0);
        instrucao : out std_logic_vector(7 downto 0);
		  instrucao_dado : out std_logic_vector(7 downto 0)
    );
END instrucoes;

ARCHITECTURE Main OF instrucoes IS

TYPE instrucao_type IS ARRAY (0 to 16 ) OF std_logic_vector (7 downto 0); -- vetor de instruçoes do tipo vetor de 8 bits
signal indice: integer range 0 to 255;
SIGNAL fila_de_execucao: instrucao_type;
BEGIN

    --inicialização do vetor de instruções
   fila_de_execucao(0) <= "00000100"; -- add $s0, $s1
	fila_de_execucao(1) <= "00000000"; -- add $s0, $s0
	fila_de_execucao(2) <= "00001001"; -- sub  $s0, $s2
	fila_de_execucao(3) <= "11000101"; -- sw $s0, 1($s1)
	fila_de_execucao(4) <= "10010101"; --lw $s1, 1($s1)
	fila_de_execucao(5) <= "11010110"; --sw $s1, 2($s1)
	fila_de_execucao(6) <= "00110010"; --move $s3, $s0
	fila_de_execucao(7) <= "10010110"; --lw $s1, 2($s1)

    indice <= TO_INTEGER(UNSIGNED(pc));
	 instrucao <= fila_de_execucao(indice);
    instrucao_dado <= fila_de_execucao(indice + 1);
    
END Main;