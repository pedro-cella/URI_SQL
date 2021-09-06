-- Criar base de Dados
CREATE DATABASE uri_2605;

-- Usar Base de Dados
USE uri_2605;

-- Criar tabela
CREATE TABLE providers(
	id 		INT NOT NULL AUTO_INCREMENT,
    name 	VARCHAR(100) NOT NULL,
    street	VARCHAR(100) NOT NULL,
    city	VARCHAR(100) NOT NULL,
    state	CHAR(2) NOT NULL,
    
    CONSTRAINT providers_PK PRIMARY KEY (id)
);

CREATE TABLE categories(
	id 		INT NOT NULL AUTO_INCREMENT,
    name	VARCHAR(100),
    
    CONSTRAINT categories_PK PRIMARY KEY (id)
);

CREATE TABLE products(
	id 				INT NOT NULL AUTO_INCREMENT,
    name			VARCHAR(100) NOT NULL,
    amount			BIGINT NOT NULL,
    price 			FLOAT NOT NULL,
    id_providers	INT NOT NULL,
    id_categories	INT NOT NULL,
    
    CONSTRAINT products_PK PRIMARY KEY (id),
    CONSTRAINT products_providers_FK FOREIGN KEY (id_providers) REFERENCES providers(id),
     CONSTRAINT products_categories_FK FOREIGN KEY (id_categories) REFERENCES categories(id)
);

-- Inserir dados: providers
INSERT INTO providers (name, street, city, state) VALUES('Henrique', 'Av Brasil', 'Rio de Janeiro',	'RJ');
INSERT INTO providers (name, street, city, state) VALUES('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte',	'MG');
INSERT INTO providers (name, street, city, state) VALUES('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA');
INSERT INTO providers (name, street, city, state) VALUES('Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS');
INSERT INTO providers (name, street, city, state) VALUES('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR');
INSERT INTO providers (name, street, city, state) VALUES('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

-- Inserir dados: categories
INSERT INTO categories (name) VALUES('old stock');
INSERT INTO categories (name) VALUES('new stock');
INSERT INTO categories (name) VALUES('modern');
INSERT INTO categories (name) VALUES('commercial');
INSERT INTO categories (name) VALUES('recyclable');
INSERT INTO categories (name) VALUES('executive');
INSERT INTO categories (name) VALUES('superior');
INSERT INTO categories (name) VALUES('wood');
INSERT INTO categories (name) VALUES('super luxury');
INSERT INTO categories (name) VALUES('vintage');

-- Inserir dados: products
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Two-door wardrobe',	100, 800, 6, 8);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Dining table', 1000, 560, 1, 9);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Towel holder', 10000, 25.50, 5, 1);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Computer desk', 350, 320.50, 4,	6);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Chair', 3000, 210.64, 3, 6);
INSERT INTO products (name, amount, price, id_providers, id_categories) VALUES('Single bed', 750, 460, 1, 2);

-- Ver dados
SELECT * FROM providers;

SELECT * FROM categories;

SELECT * FROM products;

-- Resposta exercicio
SELECT products.name, providers.name
FROM products
INNER JOIN providers
ON products.id_providers = providers.id
WHERE products.id_categories = 6;

-- Apagar Base de Dados
DROP DATABASE uri_2605;
