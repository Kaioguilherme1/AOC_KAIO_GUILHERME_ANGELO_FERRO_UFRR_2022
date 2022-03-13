--PC
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.ALL;  

--Entidade
ENTITY PC_count IS
    PORT(
        clk: IN std_logic;
		  indice_entrada: IN std_logic_vector(7 downto 0);
		  indice_saida: OUT std_logic_vector(7 downto 0)
    );
END PC_count;

ARCHITECTURE main OF PC_count IS
BEGIN
		
    Process(clk)
	 BEGIN
		indice_saida <= indice_entrada + 1;
	 END PROCESS;
	
END Main;