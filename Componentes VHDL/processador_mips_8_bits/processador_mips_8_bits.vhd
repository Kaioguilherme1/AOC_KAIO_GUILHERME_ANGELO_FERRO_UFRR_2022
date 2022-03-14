--processador KARR
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.all;
USE IEEE.NUMERIC_STD.ALL; 

--Entidade
ENTITY processador_mips_8_bits IS
    PORT(
		 reset: IN std_logic;
		 clock: IN std_logic;
		 --indice: IN std_logic_vector(7 downto 0);
		 alu_result: OUT std_logic_vector(7 downto 0)
    );
END processador_mips_8_bits;

--Arquitetura
ARCHITECTURE Main OF processador_mips_8_bits IS
--variaveis gerais
SIGNAL instrucao_atual: std_logic_vector(7 downto 0);
SIGNAL valor_reg1: std_logic_vector(7 downto 0);
SIGNAL valor_reg2: std_logic_vector(7 downto 0);
SIGNAL valor_reg_write: std_logic_vector(7 downto 0);
SIGNAL entrada_seletor: std_logic_vector(7 downto 0);
SIGNAL mult1x4_valor: std_logic_vector(7 downto 0);
SIGNAL saida_ULA: std_logic_vector(7 downto 0);
SIGNAL saida_memory: std_logic_vector(7 downto 0);
SIGNAL extensao_8bits: std_logic_vector(7 downto 0);
SIGNAL indice_aux: std_logic_vector(7 downto 0);

SIGNAL zero: std_logic_vector(1 downto 0);
SIGNAL saidaA_seletor: std_logic_vector(7 downto 0);
SIGNAL saidaB_seletor: std_logic_vector(7 downto 0);

--variaveis do controlador
SIGNAL reg_data:  std_logic_vector(1 downto 0);
SIGNAL loop_func: std_logic_vector(1 downto 0);
SIGNAL reg_write: std_logic;
SIGNAL seletor_f:   std_logic;
SIGNAL alu_op:    std_logic_vector(1 downto 0);
SIGNAL men_write: std_logic;



--Declaraçao dos componentes

COMPONENT PC IS
   PORT(
        clk, reset :IN std_logic;
		  loop_f: IN std_logic_vector(1 downto 0);
		  beq_f: IN std_logic_vector(1 downto 0);
		  loop_valor : IN std_logic_vector(3 downto 0);
		  beq : IN std_logic_vector(1 downto 0);
		  indice: OUT std_logic_vector(7 downto 0)
    );
END COMPONENT;

COMPONENT instrucoes IS
    PORT (
        pc : IN std_logic_vector(7 downto 0);
        instrucao : out std_logic_vector(7 downto 0);
		  instrucao_dado : out std_logic_vector(7 downto 0)
    );
END COMPONENT;

COMPONENT banco_regs IS
	 PORT ( 
        reg_write_en: in std_logic; --reg write 1 = sim 0 = nao
        reg_write_data: in std_logic_vector(7 downto 0); --dado a ser escrito no reg write
        reg_write_addr: in std_logic_vector(1 downto 0); --endereço do reg write
        reg_read_addr_1: in std_logic_vector(1 downto 0); --endereço do reg 1
        reg_read_addr_2: in std_logic_vector(1 downto 0); --endereço do reg 2
        reg_read_data_1: out std_logic_vector(7 downto 0); --dado do reg 1
        reg_read_data_2: out std_logic_vector(7 downto 0) --dado do reg 2
    );
END COMPONENT;

COMPONENT seletor1x2 IS
	  PORT (
        
        controle: in std_logic;
        entrada: in std_logic_vector(7 downto 0);
        saidaA: out std_logic_vector(7 downto 0);
        saidaB: out std_logic_vector(7 downto 0)
        
    );
END COMPONENT;	 
	 
COMPONENT mult1x4 IS
	PORT (
        
        controle: in std_logic_vector(1 downto 0);
        A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        C: in std_logic_vector(7 downto 0);
        D: in std_logic_vector(7 downto 0);
        saida:    out std_logic_vector(7 downto 0)
        
    );
END COMPONENT;

COMPONENT ULA IS
	PORT(
        a,b : in std_logic_vector(7 downto 0); -- registrador 1, registrador 2
        alu_op : in std_logic_vector(1 downto 0); --seletor de funcao
        alu_result: out std_logic_vector(7 downto 0); -- saida do resultado
        zero: out std_logic_vector(1 downto 0) --saida zero
    );
END COMPONENT;

COMPONENT memory_data IS
	PORT(
        mem_addr_data : IN std_logic_vector(7 downto 0);
        mem_read_data : OUT std_logic_vector(7 downto 0);
        mem_write_data : IN std_logic_vector(7 downto 0);
        mem_write_enable : IN std_logic
    );
END COMPONENT;

COMPONENT controlador IS
	PORT(
        op_code: IN std_logic_vector(1 downto 0);
        func:     IN std_logic_vector(1 downto 0);
        reg_data: out std_logic_vector(1 downto 0);
        loop_func: out std_logic_vector(1 downto 0);
        reg_write: out std_logic;
        seletor:  out std_logic;
        alu_op:   out std_logic_vector(1 downto 0);
        men_write: out std_logic
    );
END COMPONENT;

BEGIN

--indice_aux <= indice;
--==================Program counter====================
p_counter: PC port map(
		  clk => clock,
		  reset => reset,
		  loop_f => loop_func,
		  beq_f => zero,
		  loop_valor => instrucao_atual(5 downto 2),
		  beq => instrucao_atual(1 downto 0),
		  indice => indice_aux
		);


--==================Instrucoes====================
banco_de_instrucao: instrucoes port map(
													 --entradas
													 pc => indice_aux,
													 --saidas
													 instrucao => instrucao_atual,
													 instrucao_dado => entrada_seletor
													 );
		
--==================banco regs====================
banco_de_registradores: banco_regs 
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
	
--==================seletor 1x2====================
seletor_1x2: seletor1x2
	port map(
	   --entrada
		controle => seletor_f,
      entrada => entrada_seletor,
		--saida
      saidaA => saidaA_seletor,
      saidaB => saidaB_seletor
		
	);
--==================ULA====================
unidade_de_logica_aritimetica: ula
	port map(
		--entradas
		a => valor_reg1, -- valor 1 
		b => valor_reg2, -- valor 2
      alu_op => alu_op,  --seletor de funcao
		--saidas
		alu_result => saida_ULA,
		zero => zero
		
		
	);
	
--==================Memory data====================
data_memory: memory_data
	port map(
		--entradas
		mem_addr_data => saidaB_seletor,
		mem_write_data => valor_reg1,
      mem_write_enable => men_write,
		--saidas
		mem_read_data => saida_memory
		
		
	);

--==================mult 1x4====================
multiplexador1x4: mult1x4
	port map(
		--entradas
		controle => reg_data,
		A => saidaA_seletor,
      B => saida_memory,
		C => saida_ULA,
		D => valor_reg2,
		--saidas
		saida => valor_reg_write
		
	);
	
--==================controlador====================
controle: controlador
	port map(
		--entrada
		op_code => instrucao_atual(7 downto 6),
      func => instrucao_atual(1 downto 0),
		--saida
      reg_data => reg_data,
      loop_func => loop_func,
      reg_write =>  reg_write,
		seletor => seletor_f,
      alu_op => alu_op,
      men_write => men_write
		
	);
	
alu_result <= saida_ULA;
END Main;