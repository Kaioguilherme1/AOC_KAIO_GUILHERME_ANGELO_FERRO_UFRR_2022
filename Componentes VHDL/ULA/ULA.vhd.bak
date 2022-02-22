--ULA com 4 funções
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;

--Entidade
ENTITY ULA IS
    port(
        a,b : in std_logic_vector(7 downto 0); -- src1, src2
        alu_op : in std_logic_vector(1 downto 0); --seletor de funcao
        alu_result: out std_logic_vector(7 downto 0); -- saida do resultado
        zero: out std_logic -- Zero Flag
    );
END ULA;

ARCHITECTURE Main OF ULA IS
SIGNAL result: std_logic_vector(15 downto 0);
BEGIN
    process(alu_control,a,b)
    begin
        case alu_control is
            when "00" =>
                result <= a + b; -- add
            when "01" =>
                result <= a - b; -- sub
            when "10" => 
                result <= a * b; -- mult
            when "11" =>
                result <= a / b; -- div
            when others => result <= a + b; -- add
        end case;
    end process;
alu_result <= result;
end Main;