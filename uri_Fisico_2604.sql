-- Criar base de Dados
CREATE DATABASE uri_2604;

-- Usar Base de Dados
USE uri_2604;

-- Criar tabela
CREATE TABLE products(
	id 		INT NOT NULL AUTO_INCREMENT,
    name	VARCHAR(100) NOT NULL,
    amount	BIGINT NOT NULL,
    price 	FLOAT NOT NULL,
    
    CONSTRAINT products_PK PRIMARY KEY (id)
);

-- Inserir dados
INSERT INTO products (name, amount, price) VALUES('Two-door wardrobe', 100, 80);
INSERT INTO products (name, amount, price) VALUES('Dining table', 1000, 560);
INSERT INTO products (name, amount, price) VALUES('Towel holder', 10000, 5.50);
INSERT INTO products (name, amount, price) VALUES('Computer desk', 350, 100);
INSERT INTO products (name, amount, price) VALUES('Chair', 3000, 210.64);
INSERT INTO products (name, amount, price) VALUES('Single bed', 750, 99);

-- Ver dados
SELECT * FROM products;

-- Resposta exercicio
SELECT id, name
FROM products
WHERE price > 100 OR price < 10;
	

-- Apagar Base de Dados
DROP DATABASE uri_2604;