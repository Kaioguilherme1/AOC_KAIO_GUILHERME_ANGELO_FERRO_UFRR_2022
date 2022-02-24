--Banco De Registradores 
--4 regs de 8bits

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

ENTITY banco_regs IS
    PORT (
        reg_write_en: in std_logic; --reg write 1 = sim 0 = nao
        reg_write_data: in std_logic_vector(7 downto 0); --dado a ser escrito no reg write
        reg_write_addr: in std_logic_vector(1 downto 0); --endereço do reg write
        reg_read_addr_1: in std_logic_vector(1 downto 0); --endereço do reg 1
        reg_read_addr_2: in std_logic_vector(1 downto 0); --endereço do reg 2
        reg_read_data_1: out std_logic_vector(7 downto 0); --dado do reg 1
        reg_read_data_2: out std_logic_vector(7 downto 0) --dado do reg 2
    );
END banco_regs;

ARCHITECTURE Main OS banco_regs IS
TYPE reg_type IS ARRAY (0 to 3 ) OF std_logic_vector (7 downto 0); -- vetor de regs do tipo vetor de 8 bits
SIGNAL reg_array: reg_type;
BEGIN

    reg_read_data_1 <= reg_array(to_integer(unsigned(reg_read_addr_1)));
    reg_read_data_2 <= reg_array(to_integer(unsigned(reg_read_addr_2)));

    PROCESS(reg_write_en,reg_write_addr,reg_write_data) 
    BEGIN
        IF(reg_write_en='1') THEN
            reg_array(to_integer(unsigned(reg_write_addr))) <= reg_write_data;
        END IF;
    END PROCESS;

END Main;