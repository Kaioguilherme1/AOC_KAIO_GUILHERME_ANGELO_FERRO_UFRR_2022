--PC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;
USE IEEE.numeric_std.ALL;  

--Entidade
ENTITY PC IS
    PORT(
        clk, reset :IN std_logic;
		  loop_f: IN std_logic_vector(1 downto 0);
		  beq_f: IN std_logic_vector(1 downto 0);
		  loop_valor : IN std_logic_vector(3 downto 0);
		  beq : IN std_logic_vector(1 downto 0);
		  indice: OUT std_logic_vector(7 downto 0)
    );
END PC;

ARCHITECTURE main OF PC IS
SIGNAL indice_aux: std_logic_vector(7 downto 0);

BEGIN
	
    PROCESS(clk)
	 BEGIN 
		IF(reset = '1') then
			indice_aux <= "00000000";
		END IF;
		
		IF (Clk = '1' or loop_f = "11") THEN
			indice_aux <= indice_aux + 1 ;
		END IF;
		
		IF (beq_f = "01") THEN -- beq para frente
		  
			indice_aux <= indice_aux + 1 + TO_INTEGER(UNSIGNED(beq));	
		ELSIF (loop_f = "10") THEN -- loop para traz
		
			indice_aux <= indice_aux - 1 - TO_INTEGER(UNSIGNED(loop_valor)) ;
		END IF;
	END PROCESS;
	
	indice <= indice_aux;
END Main;