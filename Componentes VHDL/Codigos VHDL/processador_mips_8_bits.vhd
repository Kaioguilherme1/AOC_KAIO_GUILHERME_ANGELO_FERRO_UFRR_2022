--ULA com 4 funções
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;
USE IEEE.NUMERIC_STD.ALL; 

--Entidade
ENTITY processador_mips_8_bits IS
    PORT(
       clk: IN std_logic;
		 loop_f: IN std_logic_vector(1 downto 0);
		 saida: out std_logic_vector(7 downto 0)
    );
END processador_mips_8_bits;

--Arquitetura
ARCHITECTURE Main OF processador_mips_8_bits IS
--variaveis gerais
SIGNAL instrucao_atual: std_logic_vector(7 downto 0);
SIGNAL valor_reg1: std_logic_vector(7 downto 0);
SIGNAL valor_reg2: std_logic_vector(7 downto 0);
SIGNAL valor_reg_write: std_logic_vector(7 downto 0);
SIGNAL mult1x2_valor: std_logic_vector(7 downto 0);
SIGNAL mult1x4_valor: std_logic_vector(7 downto 0);
SIGNAL saida_ULA: std_logic_vector(7 downto 0);
SIGNAL saida_memory: std_logic_vector(7 downto 0);
SIGNAL extensao_8bits: std_logic_vector(7 downto 0);

--variaveis do controlador
SIGNAL reg_data:  std_logic_vector(1 downto 0);
SIGNAL loop_func: std_logic_vector(1 downto 0);
SIGNAL reg_write: std_logic;
SIGNAL alu_src:   std_logic;
SIGNAL alu_op:    std_logic_vector(1 downto 0);
SIGNAL men_write: std_logic;

BEGIN
--==================Instrucoes====================
banco_de_instrucao: ENTITY work.instrucoes
		port map(
		--entradas
		clk => clk,
		loop_func => loop_f,
		--saidas
		instrucao => instrucao_atual
		);
		
--==================banco regs====================
banco_de_registradores: entity work.banco_regs
	port map(
		--entradas
		reg_write_en => reg_write, 
      reg_write_data => valor_reg_write,  --dado a ser escrito no reg write
      reg_write_addr =>  instrucao_atual(5 downto 4),  --endereço do reg write
      reg_read_addr_1 => instrucao_atual(5 downto 4), --endereço do reg 1
      reg_read_addr_2 => instrucao_atual(3 downto 2),  --endereço do reg 2
		--saidas
		reg_read_data_1 => valor_reg1, --dado do reg 1
      reg_read_data_2 => valor_reg2  --dado do reg 2
		
	);
	
--==================mult 1x2====================
extensao_8bits <= std_logic_vector(resize(UNSIGNED(instrucao_atual(1 downto 0)), extensao_8bits'length)); -- estende 2 para 8 bits

multiplexador1x2: entity work.mult1x2
	port map(
		--entradas
		controle => alu_src,
      A => valor_reg1,
      B => extensao_8bits,
		--saidas
		saida => mult1x2_valor
		
	);
--==================ULA====================
ula: ENTITY work.ula
	port map(
		--entradas
		a => mult1x2_valor, -- valor 1 
		b => valor_reg2, -- valor 2
      alu_op => alu_op,  --seletor de funcao
		--saidas
		alu_result => saida_ULA,
		zero => loop_func
		
		
	);
	
--==================Memory data====================
Memory_data: ENTITY work.memory_data
	port map(
		--entradas
		mem_addr_data => saida_ULA,
		mem_write_data => valor_reg1,
      mem_write_enable => men_write,
		--saidas
		mem_read_data => saida_memory
		
		
	);

--==================mult 1x4====================
multiplexador1x4: entity work.mult1x4
	port map(
		--entradas
		controle => reg_data,
		A => "00000000",
      B => saida_memory,
		C => saida_ULA,
		D => valor_reg2,
		--saidas
		saida => valor_reg_write
		
	);
	
--==================controlador====================
controle: entity work.controlador
	port map(
		--entrada
		op_code => instrucao_atual(7 downto 6),
      func => instrucao_atual(1 downto 0),
		--saida
      reg_data => reg_data,
      loop_func => loop_func,
      reg_write =>  reg_write,
      alu_src => alu_src,
      alu_op => alu_op,
      men_write => men_write
		
	);
	

saida <= valor_reg_write;
END Main;