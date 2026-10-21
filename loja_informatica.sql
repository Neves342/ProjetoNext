CREATE DATABASE loja_informatica;
USE loja_informatica;

CREATE TABLE Produtos (
ID_Produtos INT AUTO_INCREMENT,
Nome_Produto VARCHAR(30) NOT NULL,
Categoria_Produto VARCHAR(70) NOT NULL,
Preco_Produto DECIMAL(10,2),
Estoque_Produto INT,
PRIMARY KEY(ID_Produtos)
);


INSERT INTO Produtos(Nome_Produto, Categoria_Produto, Preco_Produto, Estoque_Produto)
VALUES("Mouse Logitech M170", "Mouse", 59.90, 15),
      ("Teclado Mecânico RGB", "Teclado", 189.90, 8),
      ("Monitor LG 24", "Monitor", 899.90, 5),
      ("Headeset Gamer", "Áudio", 149.90, 12),
      ("Webcam Full HD", "Webcam", 219.90, 7);

SELECT * FROM Produtos;
SELECT  Nome_Produto, Preco_Produto FROM Produtos;
SELECT Categoria_Produto Mouse FROM Produtos;

SELECT Nome_Produto, Estoque_Produto 
FROM Produtos
WHERE Estoque_Produto < 10;

SELECT Nome_Produto, Preco_Produto 
FROM Produtos 
WHERE Preco_Produto > 200;

UPDATE Produtos 
SET Preco_Produto = 169.90 
WHERE ID_Produtos = 2;

UPDATE Produtos
SET Estoque_Produto = 10
WHERE ID_Produtos = 3;

UPDATE Produtos
SET Nome_Produto = "Headset Gamer RGB"
WHERE ID_Produtos = 4;

DELETE FROM Produtos
WHERE ID_Produtos = 5;

INSERT INTO Produtos (Nome_Produto, Categoria_Produto, Preco_Produto, Estoque_Produto)
VALUES ("SSD NVMe 1TB", "Armazenamento", 399.90, 10 ); 





