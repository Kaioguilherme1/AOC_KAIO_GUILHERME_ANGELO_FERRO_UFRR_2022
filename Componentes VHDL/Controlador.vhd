LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY controlador is
    port{
        --entradas

        Intstrucao: in std_logic_vector(7 downto 0);
        --saidas
        Reg_dst: out std_logic;
        Reg_Write: out std_logic;
        ALU_src: out std_logic;
        ALU_op: out std_logic;
        Mem_ToReg: out std_logic;
        Mem_Write: out std_logic
    };
END controlador;

ARCHITECTURE Main OF controlador if
BEGIN 
    op_code <= Intstrucao(1 downto 0);
    PROCESS(op_code)
    BEGIN
        CASE op_code IS
            when "00"   => Reg_dst <= 0;
            when "01"   => saida <= b;
            when "10"   => saida <= c;
            when "11"   => saida <= d;
        END CASE;
    END PROCESS;
END Main;