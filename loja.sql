CREATE DATABASE Loja_informatica;
USE Loja_informatica;

CREATE TABLE produtos(
ID_Produtos INT AUTO_INCREMENT,
ID_Fornecedor INT,
Nome_Produtos VARCHAR(50) NOT NULL,
Categoria_Produto VARCHAR(50) NOT NULL,
Preco_Produto DECIMAL(10,2),
Estoque_Produto INT,
PRIMARY KEY (ID_Produtos),

FOREIGN KEY (ID_Fornecedor) REFERENCES fornecedor (ID_Fornecedor)
);

INSERT INTO produtos( Nome_Produtos, Categoria_Produto, Preco_Produto, Estoque_Produto)
VALUES('Mouse Logitech M170', 'Mouse', 59.90, 15),
      ('Teclado Mecânico RGB', 'Teclado', 189.90, 8),
      ('Monitor LG 24', 'Monitor', 899.90, 5),
      ('Headset Gamer', 'Àudio', 149.90, 12),
      ('Webcam Full HD', 'Webcam', 219.90, 7);
      
      -- Nova Tabela --
      CREATE TABLE fornecedor(
      ID_Fornecedor INT AUTO_INCREMENT,
      Nome_Fornecedor VARCHAR(50) NOT NULL,
      Loja_Fornecedor VARCHAR(100),
      PRIMARY KEY(ID_Fornecedor)
      );
      
      -- Valores Adiconados --
      INSERT INTO fornecedor(Nome_Fornecedor, Loja_Fornecedor)
       VALUES ('Paulo Garcia', 'Senan'),
			  ('Vinicius Martins', 'Codde'),
              ('Claudio Freitas', 'Do Bom');
              
	 -- Nova Tabela -- 
      CREATE TABLE pedidos(
      ID_Pedidos INT AUTO_INCREMENT,
      Codigo_Pedidos INT,
      PRIMARY KEY(ID_Pedidos)
      );        
      
      -- Valores Adicionados --
      INSERT INTO pedidos(Codigo_Pedidos)
      VALUES(87994),
			(68865),
            (74189),
            (63786),
            (24587);
      
      
      SELECT * FROM produtos;
      SELECT Nome_Produtos, Preco_Produto FROM produtos;
      SELECT Categoria_Produto Mouse FROM Produtos;
      
      SELECT Nome_Produtos, Estoque_Produto 
      FROM produtos
      WHERE Estoque_Produto <10;
      
      SELECT Nome_Produtos, Preco_Produto
      FROM produtos
      WHERE Preco_Produto > 200
      ORDER BY Preco_Produto desc;
      
      UPDATE produtos
      SET Preco_Produto = 169.90
      WHERE ID_Produtos = 2;
      
      UPDATE produtos
      SET Estoque_Produto = 10
      WHERE ID_Produtos = 4;
      
      UPDATE produtos
      SET Nome_Produtos = 'Headset Gamer RGB'
      WHERE ID_Produtos = 4;
      
      DELETE FROM produtos
      WHERE ID_Produtos = 5;
      
      
      INSERT INTO produtos(Nome_Produtos, Categoria_Produto, Preco_Produto, Estoque_Produto)
	  VALUES('SSD NVMe 1TB', 'Armazenamento', 399.90, 10);
      
      SELECT * FROM produtos;
      SELECT Nome_Produtos 
      FROM produtos
      WHERE Estoque_Produto >10;
      
      SELECT Nome_Produtos
      FROM Produtos
      WHERE Categoria_Produto = 'Teclado';
      
      SELECT Nome_Produtos
      FROM produtos
      WHERE Preco_Produto < 200.00;
      
	  SELECT Nome_Produtos
      FROM produtos
      WHERE Estoque_Produto  <= 200.00;
      
      
      SELECT 
       produtos.Nome_Produtos,
       fornecedor.Nome_Fornecedor,
       fornecedor.Loja_Fornecedor
       FROM produtos
       INNER JOIN fornecedor ON produtos.ID_Fornecedor = fornecedor.ID_Fornecedor;
       
       
      