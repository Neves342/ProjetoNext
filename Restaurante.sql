CREATE DATABASE Restaurante ;
USE Restaurante;

CREATE TABLE  Clientes(
ID_Clientes INT AUTO_INCREMENT,
Clientes_NomeCompleto VARCHAR(100),
Clientes_CPF VARCHAR(11),
Clientes_Telefone VARCHAR(11),
Clientes_Email VARCHAR(70),
Clientes_DataCadastro DATE,
PRIMARY KEY (ID_Clientes)
);



CREATE TABLE Funcionarios (
ID_Funcionarios INT AUTO_INCREMENT,
Funcionarios_NomeCompleto VARCHAR(100),
Funcionarios_CPF VARCHAR(11),
Funcionarios_Cargo VARCHAR(45),
Funcionarios_Salario DECIMAL(10,2),
Funcionarios_Telefone VARCHAR(11),
Funcionarios_DataContratacao DATE,
PRIMARY KEY (ID_Funcionarios)
);



CREATE TABLE Produtos_Cardapio (
ID_Produtos INT AUTO_INCREMENT,
Produtos_Nome VARCHAR(45),
Produtos_Descricao VARCHAR(200),
Produtos_Preco DECIMAL(10,2),
Produtos_Quantidade INT,
PRIMARY KEY (ID_Produtos),

FOREIGN KEY (ID_Categorias) REFERENCES Categoria_Cardapios (ID_Categorias) 
);



CREATE TABLE Pedidos (
ID_Pedidos INT AUTO_INCREMENT,
ID_Pedidos INT NOT NULL,
ID_Fucionarios INT NOT NULL,
ID_PedidosIT INT NOT NULL,
Pedidos_Funcionario VARCHAR(45) NOT NULL,
Pedidos_Data TIMESTAMP NOT NULL,
Pedidos_Status ENUM('Pedido Realizado', 'Pedido em preparo') NOT NULL,
Pedidos_ValorTotal DECIMAL(10,2) NOT NULL,
PRIMARY KEY (ID_Pedidos),

FOREIGN KEY (ID_Pedidos) REFERENCES Pedidos (ID_Pedidos),
FOREIGN KEY (ID_Funcionarios) REFERENCES Funcionarios (ID_Funcionarios)

);


CREATE TABLE Produtos_Cardapio_has_Pedidos (
    ID_Pedidos INT NOT NULL,
    ID_Funcionarios INT NOT NULL,
    
    -- AS TABELAS FORMAM UMA CHAVE
    PRIMARY KEY (ID_Pedidos, ID_Funcionarios, ID_PedidosIT),
    
    FOREIGN KEY (ID_Pedidos) REFERENCES Pedidos (ID_Pedidos),
    FOREIGN KEY (ID_Funcionarios) REFERENCES Funcionarios (ID_Funcionarios),
    FOREIGN KEY (ID_PedidosIT) REFERENCES Itens_Pedidos (ID_PedidosIT)
);



CREATE TABLE Itens_Pedidos (
ID_PedidosIT INT AUTO_INCREMENT,
Itens_QuantidadeSolicitada INT NOT NULL,
Itens_Precounitario DECIMAL(10,2),
Itens_SubTotal INT,
PRIMARY KEY (ID_Pedidos)
);



CREATE TABLE Pagamentos (
ID_Pagamentos INT AUTO_INCREMENT,
Pagamentos_Data DATE NOT NULL,
Pagamentos_ValorPago DECIMAL(10,2),
Pagamentos_FormaPagamento ENUM('Credito', 'Debito', 'Pix', 'Dinheiro'),
Pagamentos_Status ENUM('Pago', 'Em Espera'),
PRIMARY KEY (ID_Pagamentos)
);


INSERT Pedidos (Clientes_NomeCompleto, )