CREATE DATABASE  Sistema_Gestão_Odontologica;
USE  Sistema_Gestão_Odontologica;

CREATE TABLE profissionais (
ID_profissionais INT AUTO_INCREMENT,
profissionais_nome_completo VARCHAR(60) NOT NULL,
profissionais_cpf VARCHAR(20) NOT NULL UNIQUE,
profissionais_cro VARCHAR(40) NOT NULL UNIQUE,
profissionais_telefone VARCHAR(20) NOT NULL,
profissionais_email VARCHAR(40) NOT NULL,
profissionais_data_contratacao DATE NOT NULL,

PRIMARY KEY (ID_profissionais)
);


CREATE TABLE pacientes (
ID_pacientes INT AUTO_INCREMENT,
ID_profissionais INT NOT NULL,
pacientes_nome_completo VARCHAR(60) NOT NULL,
pacientes_cpf VARCHAR(20) NOT NULL UNIQUE,
pacientes_data_nascimento DATE NOT NULL,
pacientes_telefone VARCHAR(20) NOT NULL,
pacientes_email VARCHAR(40) NOT NULL,
pacientes_endereco VARCHAR(100) NOT NULL,
pacientes_data_cadastro DATE NOT NULL,

PRIMARY KEY (ID_pacientes),
CONSTRAINT pacientes_profissionais  FOREIGN KEY  (ID_profissionais) REFERENCES profissionais (ID_profissionais)  ON DELETE RESTRICT ON UPDATE CASCADE
);




CREATE TABLE agendamentos_consultas (
ID_agendamentos_consultas INT AUTO_INCREMENT,
ID_pacientes INT NOT NULL,
agendamentos_consultas_data DATE NOT NULL,
agendamentos_consultas_hora TIME,
agendamentos_consultas_descricao VARCHAR(200) NOT NULL,
agendamentos_consultas_situacao ENUM('agendada', 'confirmada', 'realizada', 'cancelada', 'não compareceu'),

PRIMARY KEY (ID_agendamentos_consultas),
CONSTRAINT pacientes_agendamentos  FOREIGN KEY  (ID_pacientes) REFERENCES pacientes (ID_pacientes)  ON DELETE RESTRICT ON UPDATE CASCADE

);


CREATE TABLE procedimentos_odontos (
ID_procedimentos_odontos INT AUTO_INCREMENT,
ID_profissionais INT NOT NULL,
procedimentos_odontos_codigo INT NOT NULL,
procedimentos_odontos_nome ENUM(' limpeza', 'restauração', ' extração', 'clareamento', 'tratamento de canal'),
procedimentos_odontos_descricao VARCHAR(200) NOT NULL,
procedimentos_odontos_preco DECIMAL(10,2) NOT NULL DEFAULT 0,
procedimentos_odontos_duracao TIME NOT NULL,

PRIMARY KEY (ID_procedimentos_odontos),
CONSTRAINT procedimentos_profissionais FOREIGN KEY  (ID_profissionais) REFERENCES profissinais (ID_profissionais)  ON DELETE RESTRICT ON UPDATE CASCADE

);



CREATE TABLE agendamentos_consultas_has_procedimentos_odontos (
    agendamentos_consultas INT NOT NULL,
    ID_procedimentos_odontos INT NOT NULL,
    
    -- AS DUAS TABELAS FORMAM UMA CHAVE
    PRIMARY KEY (agendamentos_consultas, ID_procedimentos_odontos),
    
    FOREIGN KEY (agendamentos_consultas) REFERENCES procedimentos_odontos (ID_procedimentos_odontos),
    FOREIGN KEY (ID_procedimentos_odontos) REFERENCES procedimentos_odontos (ID_procedimentos_odontos)
);


CREATE TABLE especialidade_oferecidas (
ID_especialidade_oferecidas INT AUTO_INCREMENT,
especialidade_oferecidas_nome VARCHAR(60) NOT NULL,

PRIMARY KEY (ID_especialidade_oferecidas)
);



CREATE TABLE pagamentos (
ID_pagamentos INT AUTO_INCREMENT,
ID_agendamentos_consultas INT NOT NULL,
pagamentos_data DATE NOT NULL DEFAULT 0,
pagamentos_forma_pagamento ENUM('dinheiro', 'cartão de crédito', ' cartão de débito', 'PIX'),
pagamentos_situacao ENUM('pagamento pendente', ' pago', 'estornado'),

PRIMARY KEY (ID_pagamentos),
CONSTRAINT pagamentos_consultas FOREIGN KEY  (ID_agendamentos_consultas) REFERENCES agendamentos_consultas (ID_agendamentos_consultas)  ON DELETE RESTRICT ON UPDATE CASCADE
);




INSERT INTO profissionais  (profissionais_nome_completo, profissionais_cpf, profissionais_cro, profissionais_telefone, profissionais_email, profissionais_data_contratacao)
VALUES ('Ana Tavares Melo Braga', '048.889.474-57', 'CRO-SP 12345', '(91) 94784-4455', 'melo777@gmail.com', '2024-10-03'),
       ('Júlio Serra Mendes', '045.999.244-54', 'CRO-SP 18457', '(91) 97878-2224', 'mendes154@gmail.com', '2024-10-13'),
       ('Cláudio Arraia Braga', '088.211.898-22', 'CRO-SP 21414', '(91) 94284-9475', 'claud27@gmail.com', '2024-5-16'),
       ('Sara Costa Das Fontes', '022.878.254-99', 'CRO-SP 99144', '(91) 98754-3578', 'sara336@gmail.com', '2025-5-25'),
	   ('Nonato De Alvará cardoso', '013.882.394-67', 'CRO-SP 99744', '(91) 93454-2877', 'alvara1453@gmail.com', '2026-7-29');



INSERT INTO pacientes (ID_profissionais, pacientes_nome_completo, pacientes_cpf, pacientes_data_nascimento, pacientes_telefone, pacientes_email, pacientes_endereco, pacientes_data_cadastro)
VALUES (1, 'Marcos Bueno Queiroz', '557.290.171-45', '2006-11-21', '(91) 98744-3354', 'querb78@gmail.com', 'Avenida Paulista, 1500', '2026-03-05'),
       (2, 'Vitor Martin Braga Neves', '654.719.022-34', '2005-03-01', '(91) 9678-3124', 'braga44@gmail.com', 'Av. João Paulo II - Cúrio-Utinga, Belém - PA', '2026-03-18'),
       (1, 'Rafael Marques Silva', '234.567.810-12', '1977-05-23', '(91) 91756-6854', 'rafa843@gmail.com', 'R. Augusto Corrêa, 1 - Guamá, Belém - PA, 1500', '2026-03-19'),
       (3, 'Regina Torres Brito', '174.234.997-38', '1973-07-07', '(91) 99784-2354', 'brito221@gmail.com', 'Avenida Mená, 1500', '2026-04-22'),
       (4, 'Pedro Henrique Isaac Barbosa', '618.901.234-56', '1986-02-15', '(91) 91224-3364', 'pedro844@gmail.com', 'Av. Apurinã, 4 - Praça 14 de Janeiro, Manaus', '2026-04-26'),
       (2, 'Arthur Araújo Gonçalves Vieira', '367.997.196-66', '1965-07-09', '(91) 97814-6784', 'araul150@gmail.com', 'Avenida São Caetano Veloso 1250', '2026-04-09'),
       (5, 'Andréia Vitória Teixeira Pinto', '789.012.345-67', '1960-12-24', '(91) 91754-9974', 'teixeira7478@gmail.com', ': R. Augusto Corrêa, 1 - Guamá, Belém - PA', '2026-05-19'),
       (3, 'Vânia Alencar Barros', '948.664.678-10', '1982-09-12', '(91) 94744-0187', 'barros978@gmail.com', 'Alameda dos Anjos, 432 – Bloco C', '2026-05-05'),
       (2, 'Augusto Ravi Ferreira', '817.354.884-63', '2000-08-06', '(91) 99971-3877', 'ravi014@gmail.com', 'Rua Santa Graça, N°2', '2026-05-02'),
       (4, 'Camila Marques Borges Lopes', '254.999.587-22', '1981-04-26', '(91) 99714-1123', 'milact154@gmail.com', ' Avenida Atlântica, 2500 – Apt 1001', '2026-05-13');



	INSERT INTO agendamentos_consultas (agendamentos_consultas_data, agendamentos_consultas_hora, agendamentos_consultas_descricao, agendamentos_consultas_situacao)
VALUES ('2026-06-02', '07:00', 'Limpeza dentária', 'Agendada'),
       ('2026-05-10', '09:00', 'tratamento de canal', 'Agendada'),
       ('2026-05-07', '07:00', 'restauração', 'Confirmada'),
	   ('2026-06-12', '08:00', 'Limpeza dentária', 'Confirmada'),
       ('2026-06-15', '08:00', 'restauração', 'realizada'),
       ('2026-06-02', '10:00', 'Limpeza dentária', 'Não Compareceu'),
       ('2026-07-13', '10:00', 'Limpeza dentária', 'Agendada'),
       ('2026-06-02', '08:30', 'clareamento', 'Confirmada'),
       ('2026-06-18', '09:30', 'Limpeza dentária', 'cancelada'),
       ('2026-04-15', '13:00', 'clareamento', 'cancelada'),
       ('2026-04-23', '13:00', 'extração', 'cancelada'),
       ('2026-06-10', '14:30', 'extração', 'Agendada'),
       ('2027-06-15', '14:30', 'restauração', 'Confirmada'),
       ('2026-02-15', '16:00', 'tratamento de canal', 'Não Compareceu'),
       ('2026-09-15', '18:00', 'extração', 'Não Compareceu');
	   
       
       
       INSERT INTO procedimentos_odontos (procedimentos_odontos_codigo, ID_agendamentos_consultas, procedimentos_odontos_preco, procedimentos_odontos_duracao)
VALUES (103, 1,  ),
	   ();
       
       
       INSERT INTO pagamentos (ID_agendamentos_consultas, pagamentos_data, pagamentos_forma_pagamento, pagamentos_situacao)
VALUES (1, '2025-04-13', 'Dinheiro', 'Pagamento pendente'),
       (1, '2024-06-03', 'cartão de crédito', 'Pago'),
       (1, '2024-03-22', 'cartão de crédito', 'pagamento pendente'),
       (1, '2025-09-17', 'cartão de débito', 'Pago'),
       (1, '2025-02-19', 'Pix', ''),
       (1, '2025-09-15', 'Pix', ''),
       (1, '2025-03-29', 'Pix', ''),
       (1, '2025-02-05', 'cartão de crédito', ''),
       (1, '2025-01-08', 'cartão de débito', ''),
	   ();



SELECT * FROM profissionais;


SELECT  pacientes.pacientes_nome_completo,
        profissionais.profissionais_nome_completo
   
FROM pacientes
INNER JOIN profissionais ON pacientes.ID_pacientes = profissionais.ID_profissionais;



SELECT   profissionais.profissionais_nome_completo,
         agendamentos_consultas.agendamentos_consultas_data
      
FROM profissionais
INNER JOIN  agendamentos_consultas ON  agendamentos_consultas.ID_agendamentos_consultas = profissionais.ID_profissionais;

