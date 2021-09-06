-- Criar base de dados
CREATE DATABASE uri_2603;

-- Usar base de dados
USE uri_2603;

-- Criar Tabela
CREATE TABLE customers(
	id				INT NOT NULL AUTO_INCREMENT,
    name			VARCHAR(100) NOT NULL,
    street			VARCHAR(100) NOT NULL,
    city			VARCHAR(100) NOT NULL,
	state			CHAR(2) NOT NULL,
    credit_limit	FLOAT NOT NULL,
    
	CONSTRAINT customers_PK PRIMARY KEY (id)
);

-- Inserir dados
INSERT INTO customers (name, street, city, state, credit_limit) VALUES('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO customers (name, street, city, state, credit_limit) VALUES('Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

-- Ver dados
SELECT * FROM customers;

-- Resposta Exercício
SELECT name, street
FROM customers
WHERE city = 'Porto Alegre';

-- Apagar base de dados
DROP DATABASE uri_2602;