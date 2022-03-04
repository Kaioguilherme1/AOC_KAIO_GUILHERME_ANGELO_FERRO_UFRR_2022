--controlador
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY controlador IS
    PORT(
        op_code: IN std_logic_vector(1 downto 0);
        func:     IN std_logic_vector(1 downto 0);
        reg_data: out std_logic_vector(1 downto 0);
        loop_func: out std_logic_vector(1 downto 0);
        reg_write: out std_logic;
        alu_src:  out std_logic;
        alu_op:   out std_logic_vector(1 downto 0);
        men_write: out std_logic
    );
END controlador;

ARCHITECTURE Main OF controlador IS
BEGIN
    PROCESS(op_code, func)
    BEGIN 
        CASE op_code IS
		WHEN "00" => -- funçoes aritimeticas
            CASE func IS
               WHEN "00" => -- soma
					 reg_data <= "10";
					 reg_write <= '1';
					 alu_src <= '0';
					 alu_op <= "00";
					 men_write <= '0';
                     loop_func <= "00";

				WHEN "01" => -- subtração
					 reg_data <= "10";
					 reg_write <= '1';
					 alu_src <= '0';
					 alu_op <= "01";
					 men_write <= '0';
                     loop_func <= "00";
							 
				WHEN "10" => -- move
					 reg_data <= "11";
					 reg_write <= '1';
					 alu_src <= '0';
					 alu_op <= "00";
					 men_write <= '0'; 
                     loop_func <= "00";
				WHEN "11" => -- Loop func
					 reg_data <= "00";
					 reg_write <= '0';
					 alu_src <= '0';
					 alu_op <= "00";
					 men_write <= '0';
                     loop_func <= "10";
				when others =>  -- nada aconre
                     reg_data <= "00";
					 reg_write <= '0';
					 alu_src <= '0';
					 alu_op <= "00";
					 men_write <= '0';
                     loop_func <= "00";
			END CASE;
        WHEN "01" => -- beq
            reg_data <= "00";
            reg_write <= '0';
            alu_src <= '0';
            alu_op <= "10";
            men_write <= '0';
            loop_func <= "00";
        WHEN "10" => -- lw
            reg_data <= "01";
            reg_write <= '1';
            alu_src <= '1';
            alu_op <= "00";
            men_write <= '0';
            loop_func <= "00";
        WHEN "11" => -- sw
            reg_data <= "00";
            reg_write <= '0';
            alu_src <= '1';
            alu_op <= "00";
            men_write <= '1'; 
            loop_func <= "00";
        WHEN OTHERS =>  -- nada aconre
             reg_data <= "00";
			 reg_write <= '0';
			 alu_src <= '0';
			 alu_op <= "00";
			 men_write <= '0';
             loop_func <= "00";
        END CASE;
    END process;
END Main;