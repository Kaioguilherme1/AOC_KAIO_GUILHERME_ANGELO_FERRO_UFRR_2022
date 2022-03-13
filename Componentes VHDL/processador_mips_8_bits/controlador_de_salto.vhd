--controlador de salto
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.ALL;  

--Entidade
ENTITY controlador_de_salto IS
    PORT(
		  beq: IN std_logic_vector(1 downto 0);
		  loop_valor: IN std_logic_vector(3 downto 0);
		  beq_f: IN std_logic_vector(1 downto 0);
		  salto_f: IN std_logic_vector(1 downto 0);
		  indice_entrada: IN std_logic_vector(7 downto 0);
		  indice_saida: OUT std_logic_vector(7 downto 0)
    );
END controlador_de_salto;

ARCHITECTURE main OF controlador_de_salto IS
BEGIN
		
    PROCESS(salto_f)
	 BEGIN 
		CASE salto_F IS
            WHEN "00" =>
					 indice_saida <= indice_entrada;
            WHEN "01" =>
					indice_saida <= indice_entrada + 1 + TO_INTEGER(UNSIGNED(beq));
				WHEN "10" =>
					indice_saida <= indice_entrada - 1 - TO_INTEGER(UNSIGNED(loop_valor)) ;
				WHEN "11" => 
					indice_saida <= indice_entrada + 1;
					 
            WHEN OTHERS => indice_saida <= indice_entrada;
			END CASE;
		
	END PROCESS;
	
	
END Main;