CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	qtd_itens INT(10),
    total FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, data_nascimento) VALUES ("Heitor", "2019/01/9");
INSERT INTO clientes (nome, data_nascimento) VALUES ("Daniel", "1921/03/4");

UPDATE clientes 
SET data_nascimento = "2019/01/9"
WHERE id = 1;

DELETE FROM clientes
WHERE id = 1;

SELECT * FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT * FROM clientes;

INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 5, 214.01, 2);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 8, 314.01, 2);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 7, 414.01, 2);

INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 4, 514.01, 3);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 7, 714.01, 3);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES ( 5, 114.01, 3);




