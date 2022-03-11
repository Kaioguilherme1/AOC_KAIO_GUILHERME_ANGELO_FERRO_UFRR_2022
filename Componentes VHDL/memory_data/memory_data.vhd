--memory_data
library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

ENTITY memory_data IS
    PORT(
        mem_addr_data : IN std_logic_vector(7 downto 0);
        mem_read_data : OUT std_logic_vector(7 downto 0);
        mem_write_data : IN std_logic_vector(7 downto 0);
        mem_write_enable : IN std_logic
    );
END memory_data;

ARCHITECTURE Main OF memory_data IS
TYPE data_mem IS ARRAY(0 to 255 ) OF std_logic_vector (7 downto 0);
SIGNAL ram: data_mem ;
BEGIN
    PROCESS (mem_write_data, mem_write_enable)
    BEGIN
        IF mem_write_enable = '1' THEN
            ram(TO_INTEGER(UNSIGNED(mem_addr_data))) <= mem_write_data;
        END IF;
    END PROCESS;
    mem_read_data <= ram(TO_INTEGER(UNSIGNED(mem_addr_data)));
END Main;