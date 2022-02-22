-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL project: VHDL code for single-cycle MIPS Processor
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- VHDL code for Control Unit of the MIPS Processor
entity controlador is
port (
  opcode: in std_logic_vector(2 downto 0);
  reset: in std_logic;
  reg_dst,mem_to_reg,alu_op: out std_logic_vector(1 downto 0);
  jump,branch,mem_read,mem_write,alu_src,reg_write,sign_or_zero: out std_logic
 );
end controlador;

architecture Behavioral of controlador is

begin
process(reset,opcode)
begin
 if(reset = '1') then
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "00";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '0';
   reg_write <= '0';
   sign_or_zero <= '1';
 else 
 case opcode is
  when "000" => -- add
    reg_dst <= "01";
    mem_to_reg <= "00";
    alu_op <= "00";
    jump <= '0';
    branch <= '0';
    mem_read <= '0';
    mem_write <= '0';
    alu_src <= '0';
    reg_write <= '1';
    sign_or_zero <= '1';
  when "001" => -- sliu
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "10";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '1';
   reg_write <= '1';
   sign_or_zero <= '0';
  when "010" => -- j
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "00";
   jump <= '1';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '0';
   reg_write <= '0';
   sign_or_zero <= '1';
 when "011" =>-- jal
   reg_dst <= "10";
   mem_to_reg <= "10";
   alu_op <= "00";
   jump <= '1';
   branch <=  '0';
   mem_read <=  '0';
   mem_write <=  '0';
   alu_src <= '0';
   reg_write <=  '1';
   sign_or_zero <= '1';
 when "100" =>-- lw
   reg_dst <= "00";
   mem_to_reg <= "01";
   alu_op <= "11";
   jump <= '0';
   branch <= '0';
   mem_read <= '1';
   mem_write <= '0';
   alu_src <= '1';
   reg_write <= '1';
   sign_or_zero <= '1';
 when "101" => -- sw
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "11";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '1';
   alu_src <= '1';
   reg_write <= '0';
   sign_or_zero <= '1';
 when "110" => -- beq
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "01";
   jump <= '0';
   branch <= '1';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '0';
   reg_write <= '0';
   sign_or_zero <= '1';
 when "111" =>-- addi
   reg_dst <= "00";
   mem_to_reg <= "00";
   alu_op <= "11";
   jump <= '0';
   branch <= '0';
   mem_read <= '0';
   mem_write <= '0';
   alu_src <= '1';
   reg_write <= '1';
   sign_or_zero <= '1';
 when others =>   
    reg_dst <= "01";
    mem_to_reg <= "00";
    alu_op <= "00";
    jump <= '0';
    branch <= '0';
    mem_read <= '0';
    mem_write <= '0';
    alu_src <= '0';
    reg_write <= '1';
    sign_or_zero <= '1';
 end case;
 end if;
end process;

end Behavioral;