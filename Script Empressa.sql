CREATE DATABASE Gerenciamento_Funcionários_Setores;
USE  Gerenciamento_Funcionários_Setores;

CREATE TABLE setores(
ID_setores INT AUTO_INCREMENT,
setores_nome VARCHAR(45) NOT NULL,
setores_decricao VARCHAR(200) NOT NULL,
setores_localizacao VARCHAR(100) NOT NULL,
setores_ramal_telefonico VARCHAR(20) NOT NULL,

PRIMARY KEY (ID_setores)
);


CREATE TABLE funcionarios(
ID_funcionarios INT AUTO_INCREMENT,
ID_setores INT NOT NULL,
ID_cargos INT NOT NULL,
ID_registros_pagamentos INT NOT NULL,

funcionarios_nome_completo VARCHAR(100) NOT NULL,
funcionarios_cpf VARCHAR(20) NOT NULL UNIQUE,
funcionarios_data_nascimeno DATE NOT NULL,
funcionarios_sexo ENUM('Masculiuno', 'Feminino') NOT NULL,
funcionarios_email VARCHAR(50) NOT NULL,
funcionarios_telefone VARCHAR(20) NOT NULL,
funcionarios_data_admissao DATE NOT NULL,
funcionarios_salario DECIMAL(10,2) NOT NULL, 
funcionarios_endereco VARCHAR(100) NOT NULL, 
funcionarios_cargo_ocupado VARCHAR(45) NOT NULL,
funcionarios_situacao ENUM('Ativo', 'Dedligado'),

PRIMARY KEY (ID_funcionarios),

  CONSTRAINT fs_funcionario_setor FOREIGN KEY (ID_registros_pagamentos) REFERENCES registros_pagamentos (ID_registros_pagamentos) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fc_Funcionario_cargo FOREIGN KEY (ID_cargos) REFERENCES cargos (ID_cargos) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT frp_Funcionario_pagamento FOREIGN KEY (ID_cargos) REFERENCES cargos (ID_cargos) ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE cargos(
ID_cargos INT AUTO_INCREMENT,
cargos_codigo  INT NOT NULL,
cargos_nome VARCHAR(100) NOT NULL,
cargos_descricao VARCHAR(200) NOT NULL,
cargos_nivel ENUM('Junior', 'Senior') NOT NULL,
cargos_faixa_salarial_min DECIMAL(10,2) NOT NULL,
cargos_faixa_salarial_max DECIMAL(10,2) NOT NULL,

PRIMARY KEY (ID_cargos)
);


CREATE TABLE enderecos(
ID_enderecos INT AUTO_INCREMENT,
ID_funcionarios INT NOT NULL,

enderecos_logradouro VARCHAR(50) NOT NULL,
enderecos_numero INT NOT NULL,
enderecos_complemento VARCHAR(150),
enderecos_bairro VARCHAR(70) NOT NULL,
enderecos_estado VARCHAR(70) NOT NULL,
enderecos_cep VARCHAR(10) NOT NULL,

PRIMARY KEY (ID_enderecos),
CONSTRAINT fe_funcionario_endereco FOREIGN KEY (ID_funcionarios) REFERENCES funcionarios (ID_funcionarios) ON DELETE RESTRICT ON UPDATE CASCADE

);


CREATE TABLE dependentes(
ID_dependentes INT AUTO_INCREMENT,
ID_funcionarios INT NOT NULL,
cadastro_dependentes_nome_completo VARCHAR(100) NOT NULL,
cadastro_dependentes_data_nascimento DATE NOT NULL,
cadastro_dependentes_grau_parentesco ENUM('') NOT NULL,
cadastro_dependentes_cpf VARCHAR(20),

PRIMARY KEY (ID_dependentes),
CONSTRAINT fd_funcionario_dependentes FOREIGN KEY (ID_funcionarios) REFERENCES funcionarios (ID_funcionarios)
);


CREATE TABLE registros_pagamentos(
ID_registros_pagamentos INT AUTO_INCREMENT,
registros_pagamentos_mes VARCHAR(20) NOT NULL,
registros_pagamentos_ano YEAR NOT NULL,
registros_pagamentos_data DATE NOT NULL,
registros_pagamentos_salario_base DECIMAL(10,2) NOT NULL,
registros_pagamento_valor_desconto DECIMAL(10,2) NOT NULL,
registros_pagamentos_valor_beneficio DECIMAL(10,2) NOT NULL,
registros_pagamentos_situacaol ENUM('Pendente', 'Pago', 'Cancelado'),

PRIMARY KEY (ID_registros_pagamentos)
);


CREATE TABLE treiamentos_capacitacoes (
ID_treiamentos_capacitacoes INT AUTO_INCREMENT,
treiamentos_capacitacoes_nome VARCHAR(100) NOT NULL,
treiamentos_capacitacoes_descricao VARCHAR(100) NOT NULL,
treiamentos_capacitacoes_carga_horaria VARCHAR(30),
treiamentos_capacitacoes_data_inicio DATE NOT NULL,
treiamentos_capacitacoes_data_termino DATE NOT NULL,
treiamentos_capacitacoes_situacao ENUM('Boa', 'Em processo') NOT NULL,

PRIMARY KEY (ID_treiamentos_capacitacoes)
);


-- RESGISTROS
INSERT INTO setores (setores_nome, setores_decricao, setores_localizacao, setores_ramal_telefonico)
VALUES('Recursos Humanos', 'Apoia a emprsa', 'Area 1', ' (555) 123-4567 ramal 104'),
	  ('Financeiro', 'Gernecia o pagamento dos salários', '(555) 853-4487 ramal 108');
      
      
      
INSERT INTO funcionarios (funcionarios_nome_completo, funcionarios_cpf, funcionarios_data_nascimeno, funcionarios_sexo, funcionarios_email, funcionarios_telefone, funcionarios_data_admissao, funcionarios_salario, funcionarios_enderecos, funcionarios_cargo_ocupado, funcionarios_situacao)                                             )
VALUES('Fernando Mendes Corrêa', '321.785.154-47', '2026-10-15', );






