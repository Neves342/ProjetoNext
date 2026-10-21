CREATE DATABASE sistema_chamados;
USE sistema_chamados;

-- TABELA SETOR CRIADA
CREATE TABLE Setor (
ID_Setor INT AUTO_INCREMENT,
Setor_Codigo INT NOT NULL,
Setor_Nome VARCHAR(40) NOT NULL,
Setor_Localizacao VARCHAR(50),
PRIMARY KEY (ID_Setor)
);

-- TABELA FUNCIONARIO CRIADA
CREATE TABLE funcionario (
ID_Funcionario INT AUTO_INCREMENT,
ID_Setor INT,
Funcionario_Codigo INT NOT NULL,
Funcionario_Nome VARCHAR(40) NOT NULL,
Funcionario_Cargo VARCHAR(50) NOT NULL,
Funcionario_Email VARCHAR(40) NOT NULL,
Funcionario_Telefone VARCHAR(15) NOT NULL,
PRIMARY KEY (ID_Funcionario),

-- FAZENDO A LIGAÇÃO ENTRE AS TABELAS FUNCIONARIO E SETOR
FOREIGN KEY (ID_Setor) REFERENCES Setor (ID_Setor) 
);

ALTER TABLE funcionario
ADD COLUMN Funcionario_Salario DECIMAL(10,4) NOT NULL;


-- TABELA TECNICO RESPONSAVEL CRIADA
CREATE TABLE Tecnico (
    ID_Tecnico INT AUTO_INCREMENT,
    Tecnico_Codigo INT NOT NULL, 
    Tecnico_Nome VARCHAR(45),
    Tecnico_Especialidade VARCHAR(45),
    Tecnico_Email VARCHAR(30),
    PRIMARY KEY (ID_Tecnico)
);


-- TABELA CATEGORIA CRIADA
CREATE TABLE Categoria (
ID_Categoria INT AUTO_INCREMENT,
Categoria_Nome ENUM('Hardware', 'Software', 'Rede', 'Sistema', 'Acesso', 'Impressora', 'Email', 'Outros'),
PRIMARY KEY (ID_Categoria)
);

-- TABELA CHAMADO CRIADA (AQUI VAMOS FAZER MAIS DE UMA LIGAÇÃO DE CHAVES)
CREATE TABLE Chamado (
ID_Chamado INT AUTO_INCREMENT,
ID_Funcionario INT,
ID_Tecnico INT,
Chamado_Codigo INT NOT NULL,
Chamado_Titulo VARCHAR(45) NOT NULL,
Chamado_Descricao TEXT NOT NULL,
Chamado_Data DATE NOT NULL,
Chamado_Prioridade ENUM('Baixa', 'Media', 'Alta', 'Urgente'),
Chamado_Situacao ENUM('Aberto', 'Em atendimento', 'Resolvido', 'Cancelado'),
PRIMARY KEY (ID_Chamado),
-- DUAS LIGAÇÕES DE CHAVE TA TABELA FUNCIONARIO E TECNICO
FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario (ID_Funcionario),
FOREIGN KEY (ID_Tecnico) REFERENCES Tecnico (ID_Tecnico)
);


-- TABELA  CRIADA A PARTIR DE UMA LIGAÇÃO MUITOS PARA MUITOS (TEMOS QUE FAZER ELA TAMBÉM)
CREATE TABLE Chamado_has_Categoria (
    ID_Chamado INT NOT NULL,
    ID_Categoria INT NOT NULL,
    
    -- AS DUAS TABELAS FORMAM UMA CHAVE
    PRIMARY KEY (ID_Chamado, ID_Categoria),
    
    FOREIGN KEY (ID_Chamado) REFERENCES Chamado (ID_Chamado),
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria (ID_Categoria)
);



-- AQUI COMEÇAMOS A INSERIR OS DADOS DE CADA TABELA EM ORDEM
-- TABELA SETOR
INSERT INTO Setor (Setor_Codigo, Setor_Nome, Setor_Localizacao)
VALUES (101, 'Recursos Humanos', 'Andar 3'),
	   (103, 'Financeiro', 'Andar 5'),
       (107, 'Comercial', 'Andar 2'),
       (114, 'TI', 'Andar 6'),
       (154, 'Marketing', 'Andar 2'),
       (124, 'Administrativo', 'Andar 7');


-- TABELA FUNCIONARIO
INSERT INTO  funcionario (Funcionario_Codigo, Funcionario_Nome, Funcionario_Cargo, Funcionario_Email, Funcionario_Telefone, ID_Setor, Funcionario_Salario)
  VALUES(1001, 'Marcos', 'Coordenador', 'Marcos489@gmail.com', '(91) 94578-3402', 1, 1300),
		(1012, 'Jorge', 'Vendas', 'Jorgema81@gmail.com', '(91) 98754-8797', 3, 5200),
		(1015, 'Cláudio', 'Assistente', 'Claudi17a@gmail.com', '(91) 94571-1145', 2, 1200),
		(1090, 'Sara', 'Estagiária', 'sa4rat@gmail.com', '(91) 97844-2287', 4, 1000),
		(1087, 'Lucas', 'Estagiário', 'Lucas4as7@gmail.com', '(91) 92244-8870', 6, 1000),
		(1048, 'Aya', 'Edição', 'Aya7t20@gamil.com', '(91) 95214-3345', 5, 3000),
        (1090, 'Jericho', 'Analista de TI', 'jericdr777@gmail.com', '(91) 94717-3354', 4, 5000),
        (1785, 'Otávio', 'Gerente de loja', 'OtaviMa@gmail.com', '(91) 99974-8926', 5, 2500),
        (1478, 'Francisco', 'Filme maker', 'Franmendes@techgmail.com', '(91) 96414-7177', 6, 2000),
        (1246, 'Laurinda', 'Assitente admistrador', 'laurq818@gmail.com', '(91) 91983-6249', 2, 1600);


 

-- INSERIR OS REGISTROS DA TABELA DOS RESPONSAVEIS TECNICOS ATENDIMENTOS 
INSERT INTO Tecnico (Tecnico_Codigo, Tecnico_Nome, Tecnico_Especialidade, Tecnico_Email)
VALUES (784, 'Augusto', 'Suporte de TI', 'AugustoMa470@gmail.com'),
       (759, 'Marcelo', 'Sistemas de RH', 'Marcel78a@gmail.com'),
       (746, 'Jonas', 'Sistemas Comerciais', 'Jon47a0@gmail.com'),
       (785, 'Marcela', 'Suporte Administrativo', 'Marcela084@gmail.com'),
       (711, 'Levi', 'Sistemas Financeiros', 'Levi095@gmail.com'),
       (741, 'Alex', 'Sistemas de Marketing', 'Alex774@gmail.com');

-- TABELA CATEGORIA
INSERT INTO Categoria (Categoria_Nome)
VALUES ('Hardware'),
	   ('Software'),
       ('Rede'),
       ('Sistema'),
       ('Acesso'),
       ('Impressora'),
       ('Email'),
       ('Outros');


-- AQUI FAZEMOS A LIGAÇÃO DE IDS DAS TABELAS (PRECISA REVISAR)
INSERT INTO Chamado_has_Categoria (ID_Chamado, ID_Categoria)
VALUES (1, 1), (2, 4), (3, 3), (4, 6), (5, 5), (6, 7), (7, 2), (8, 1), 
       (9, 1), (10, 4), (11, 3), (12, 6), (13, 5), (14, 1);



-- TABELA CHAMADO
INSERT INTO Chamado (Chamado_Codigo, Chamado_Titulo, Chamado_Descricao, Chamado_Data, Chamado_Prioridade, Chamado_Situacao, ID_Funcionario, ID_Tecnico)
VALUES (501, 'PC nao liga', 'Computador nao da sinal de vida apos queda de energia.', '2026-10-01', 'Alta', 'Resolvido', 1, 1),
(502, 'Erro no sistema ERP', 'Nao consigo emitir relatorios na tela financeira.', '2026-10-02', 'Urgente', 'Em atendimento', 5, 2),
(503, 'Internet oscilando', 'A conexao cai a cada 10 minutos no setor comercial.', '2026-10-03', 'Alta', 'Aberto', 2, 1),
(504, 'Impressora atolando papel', 'Impressora multifuncional travando na segunda folha.', '2026-10-04', 'Media', 'Aberto', 3, 3),
(505, 'Sem acesso a pasta compartilhada', 'Mensagem de erro de permissao negada no servidor.', '2026-10-05', 'Media', 'Resolvido', 6, 4),
(506, 'Email corporativo bloqueado', 'Usuario nao consegue enviar mensagens para fora da empresa.', '2026-10-06', 'Alta', 'Aberto', 6, 2),
(507, 'Instalacao de software de design', 'Necessario instalar pacote Adobe na maquina da Aya.', '2026-10-07', 'Baixa', 'Em atendimento', 6, 2),
(508, 'Teclado com defeito', 'Varias teclas nao estao respondendo no faturamento.', '2026-10-08', 'Baixa', 'Aberto', 2, 3),
(509, 'Monitor piscando', 'Tela do monitor perde o sinal frequentemente.', '2026-10-08', 'Media', 'Aberto', 6, 3),
(510, 'Instabilidade no servidor interno', 'Sistemas fora do ar para o setor administrativo.', '2026-10-09', 'Urgente', 'Aberto', 3, 1),
(511, 'Configuracao de VPN', 'Acesso remoto necessario para trabalho em home office.', '2026-10-09', 'Media', 'Resolvido', 4, 3),
(512, 'Troca de toner', 'Impressao saindo borrada e clara no RH.', '2026-10-10', 'Baixa', 'Aberto', 1, 3),
(513, 'Esqueci a senha do Windows', 'Usuario bloqueou a conta por errar a senha.', '2026-10-10', 'Alta', 'Resolvido', 2, 4),
(514, 'Mouse quebrado', 'Botao esquerdo do mouse nao clica.', '2026-10-10', 'Baixa', 'Resolvido', 3, 3),
(515, 'Atualizacao de antivirus', 'Mensagem de alerta de licenca expirada no PC.', '2026-10-10', 'Media', 'Aberto', 5, 2);


-- AQUI VAMOS FAZER ALTERAÇÕES DA TABELA
ALTER TABLE Funcionario
ADD Funcionario_Data DATE;

UPDATE Funcionario SET Funcionario_Data = '2024-01-15' WHERE ID_Funcionario = 1;
UPDATE Funcionario SET Funcionario_Data = '2023-05-10' WHERE ID_Funcionario = 2;
UPDATE Funcionario SET Funcionario_Data = '2024-02-20' WHERE ID_Funcionario = 3;
UPDATE Funcionario SET Funcionario_Data = '2025-08-01' WHERE ID_Funcionario = 4;
UPDATE Funcionario SET Funcionario_Data = '2021-11-12' WHERE ID_Funcionario = 5;
UPDATE Funcionario SET Funcionario_Data = '2023-09-18' WHERE ID_Funcionario = 6;

-- ATUALIZAR INFORMAÇÕES DOS REGISTROS DENTRO DA TABELA
UPDATE Funcionario
SET Funcionario_Telefone = '(91) 94875-3384'
WHERE id_Funcionario = 4;


UPDATE Funcionario
SET ID_Setor = 3
Where ID_Funcionario = 1;

UPDATE Chamado
SET Chamado_Situacao = 'Em Atendimento'
WHERE ID_Chamado = 3;

UPDATE Chamado
SET Chamado_Situacao = 'Resolvido'
WHERE ID_Chamado = 7;

UPDATE Tecnico
SET Tecnico_Email = 'marcel48@gmail.com'
WHERE ID_Tecnico = 4;


-- EXCLUSÃO DE REGISTROS
DELETE FROM Chamado
WHERE ID_Chamado = 15;

DELETE FROM Categoria
WHERE ID_Categoria = 5;


-- USO DO SELECT 
SELECT *  FROM  Funcionario;

SELECT Funcionario_Nome, Funcionario_Email, Funcionario_Telefone FROM Funcionario;

SELECT * FROM Chamado;

SELECT ID_Chamado, Chamado_Titulo, Chamado_Situacao FROM Chamado WHERE Chamado_Situacao = 'Aberto';

SELECT ID_Chamado, Chamado_Titulo, Chamado_Situacao, Chamado_Prioridade FROM Chamado WHERE Chamado_Prioridade = 'Alta';

SELECT ID_Chamado, Chamado_Titulo, Chamado_Situacao, Chamado_Prioridade FROM Chamado WHERE Chamado_Prioridade = 'Urgente' OR Chamado_Prioridade = 'Alta';

-- AQUI A GENTE TEM  UM INNER JOIN (JUNÇÃO DE DUAS TABELAS PARA VISUALIZAÇÃO)
SELECT Funcionario.Funcionario_Nome,
       Setor.Setor_Nome 
FROM Funcionario
INNER JOIN Setor
ON Funcionario.ID_Setor = Setor.ID_Setor;


-- Fase 9 USANDO WHERE
SELECT ID_Chamado, Chamado_Titulo, Chamado_Prioridade
FROM Chamado
WHERE Chamado_Prioridade = 'Urgente';


SELECT ID_Chamado, Chamado_Titulo, Chamado_Situacao
FROM Chamado
WHERE Chamado_Situacao = 'Resolvido';


SELECT ID_Chamado, Chamado_Titulo, Chamado_Situacao
FROM Chamado
WHERE Chamado_Situacao = 'Aberto';


SELECT Funcionario.Funcionario_Nome, Setor.Setor_Nome
FROM Funcionario
INNER JOIN Setor 
    ON Funcionario.ID_Setor = Setor.ID_Setor
WHERE Funcionario.ID_Setor = 4;

SELECT Chamado_Titulo, Chamado_Situacao, Chamado_Data
FROM Chamado
WHERE ID_Chamado;

-- FASE 10 - JOIN
SELECT Chamado.Chamado_Codigo,
	   Chamado.Chamado_Titulo,
       Funcionario.Funcionario_Nome,
       Chamado.Chamado_Data
FROM Chamado
INNER JOIN Funcionario 
ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario;
        

SELECT Chamado.Chamado_Titulo,
	Funcionario.Funcionario_Nome,
    Tecnico.Tecnico_Nome,
    Chamado.Chamado_situacao
    
    FROM Chamado
    INNER JOIN Funcionario
    ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario
    INNER JOIN Tecnico 
    ON Chamado.ID_Tecnico = Tecnico.ID_Tecnico;
    
    
    SELECT Chamado.Chamado_Titulo,
           Categoria.Categoria_Nome,
           Chamado.Chamado_Prioridade,
           Chamado.Chamado_Situacao
           FROM Chamado
           INNER JOIN Chamado
           ON Chamado_has_Categoria.ID_Chamado = Chamado.ID_Chamado
           INNER JOIN Categoria
           ON Chamado.ID_Categoria = Categoria.ID_Categoria;
           
           
	SELECT Funcionario.Funcionario_Nome,
		   Setor.Setor_Codigo,
		   Chamado.Chamado_Titulo,
                  Chamado.Chamado_Data
	FROM Funcionario 
	INNER JOIN Setor
	ON Funcionario.ID_Setor = Setor.ID_Categoria;
            
            
	SELECT Funcionario.Funcionario_Nome,
                   Setor.Setor_Nome,
                   Chamado.Chamado_Titulo,
                   Chamado.Chamado_Data
	FROM Chamado
	INNER JOIN Funcionario
	ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario
	INNER JOIN Setor
	ON Funcionario.ID_Setor = Setor.ID_Setor;

            
-- FASE 18

SELECT 
    Chamado.ID_Chamado,
    Funcionario.Funcionario_Nome,
    Setor.Setor_Nome,
    Categoria.Categoria_Nome,
    Tecnico.Tecnico_Nome,
    Chamado.Chamado_Prioridade,
    Chamado.Chamado_Situacao,
    Chamado.Chamado_Data
FROM Chamado
INNER JOIN Funcionario ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario
INNER JOIN Setor ON Funcionario.ID_Setor = Setor.ID_Setor
INNER JOIN Tecnico ON Chamado.ID_Tecnico = Tecnico.ID_Tecnico
INNER JOIN Chamado_has_Categoria ON Chamado.ID_Chamado = Chamado_has_Categoria.ID_Chamado
INNER JOIN Categoria ON Chamado_has_Categoria.ID_Categoria = Categoria.ID_Categoria;


-- DESAFIO FINAL

-- PERGUNTA 1: 
SELECT ID_Chamado, Chamado_Codigo, Chamado_Titulo, Chamado_Situacao 
FROM Chamado 
WHERE Chamado_Situacao = 'Aberto';

-- PERGUNTA 2: 
SELECT Funcionario.Funcionario_Nome, Chamado.Chamado_Titulo
FROM Chamado
INNER JOIN Funcionario ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario;

-- PERGUNTA 3: 
SELECT Setor.Setor_Nome, Chamado.Chamado_Titulo
FROM Chamado
INNER JOIN Funcionario ON Chamado.ID_Funcionario = Funcionario.ID_Funcionario
INNER JOIN Setor ON Funcionario.ID_Setor = Setor.ID_Setor;

-- PERGUNTA 4: 
SELECT * FROM Chamado 
WHERE Chamado_Prioridade = 'Urgente';

-- PERGUNTA 5: 
SELECT Tecnico.Tecnico_Nome, Chamado.Chamado_Titulo, Chamado.Chamado_Situacao
FROM Chamado
INNER JOIN Tecnico ON Chamado.ID_Tecnico = Tecnico.ID_Tecnico
WHERE Chamado.Chamado_Situacao = 'Resolvido';

-- PERGUNTA 6: 
SELECT Chamado.Chamado_Titulo, Categoria.Categoria_Nome
FROM Chamado_has_Categoria
INNER JOIN Chamado ON Chamado_has_Categoria.ID_Chamado = Chamado.ID_Chamado
INNER JOIN Categoria ON Chamado_has_Categoria.ID_Categoria = Categoria.ID_Categoria
WHERE Categoria.Categoria_Nome = 'Hardware';

-- PERGUNTA 7: 
SELECT * FROM Chamado 
WHERE Chamado_Situacao = 'Resolvido';

-- PERGUNTA 8: 
SELECT * FROM Chamado 
WHERE Chamado_Data BETWEEN '2026-10-01' AND '2026-10-05';



     SELECT COUNT(*) AS Quantidade_funcionarios
	 FROM Funcionarios;
     
     
       
       
SELECT 
SUM(Funcionario_Salario);

-- SOMA (SUM())  e AS(Nome temporário de tabela para visualização)
SELECT SUM(Funcionario_Salario) AS Total_Codigos
FROM funcionario;
       
-- Média (AVG
SELECT AVG(Funcionario_Salario) AS Total_Salario
FROM funcionario;


-- Maximo
SELECT 
MAX(Funcionario_Salario) AS Maximo_Salario
FROM funcionario;

-- Minimo
SELECT
MIN(Funcionario_Salario) AS Minimo_Salario
FROM funcionario;


-- Uso do LIKE (Acha as informações de acordo com a posição da porcentagem, inicio, final ou )
SELECT * 
FROM tecnico
WHERE Tecnico_Nome LIKE 'J';




-- Junta as tabelas e agrupa 
SELECT 
 Chamado.Chamado_Titulo,
 COUNT(funcionario.Funcionario_Nome) AS Titulos_Funcionarios
   FROM Chamado
        INNER JOIN funcionario
        ON Chamado.ID_Funcionario = funcionario.ID_Funcionario
        GROUP BY Chamado.Chamado_Titulo;
        
        

SELECT 
funcionario.Funcionario_Nome,
chamado.Chamado_Titulo,
AVG(funcionario.Funcionario_Salario) AS Media_Salarial
FROM funcionario
INNER JOIN chamado
ON chamado.ID_Funcionario = funcionario.ID_Funcionario;



        
        
        
SELECT 
	CURSO.Nome_curso,
	AVG(Aluno.Idade_Aluno) AS Idade_Media
	FROM Matricula
	INNER JOIN aluno
	ON Matricula.id_aluno = Aluno.id_aluno
	INNER JOIN Curso
	ON Matricul.id_Curso = curso.id_curso
	GROUP BY Idade_Media > 20.000;




