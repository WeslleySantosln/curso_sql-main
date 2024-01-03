CREATE DATABASE constrant;

USE constrant;

CREATE TABLE pessoas(
	nome VARCHAR(100) NOT NULL,
    idade INT
);

CREATE TABLE pessoas2(
	nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL
);


ALTER TABLE pessoas ADD COLUMN email VARCHAR(200) UNIQUE; 


INSERT INTO pessoas VALUES("Maria", 25, "maria@gmail.com");

INSERT INTO pessoas VALUES("Maria123", 25, "maria@gmail.com");

SELECT * FROM pessoas;

CREATE TABLE produtos(
	id INT NOT NULL,
    nome VARCHAR(200), 
    sku varchar(200) UNIQUE,
    PRIMARY KEY(id)
);

INSERT INTO produtos VALUES( 1, "BATEDEIRA", "123ABC");
INSERT INTO produtos VALUES( 2, "Fogão", "1234ab");
INSERT INTO Produtos VALUES( 3, "TV", "TV_sMART");

SELECT * FROM produtos;

CREATE TABLE fruta(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL
);

ALTER TABLE fruta ADD COLUMN nome VARCHAR(100);

INSERT INTO fruta (nome) VALUES ("mamão");

INSERT INTO fruta (nome) VALUES ("laranja");

INSERT INTO fruta (nome) VALUES ("mamão");

SELECT * FROM fruta;

DELETE FROM fruta WHERE ID = 3;

DROP TABLE pessoas;

CREATE DATABASE banco;

USE banco;

CREATE TABLE contas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    saldo INT,
    data_nascimento date
    );
    
    
    SELECT * FROM contas;  
    
    CREATE INDEX idx_saldos
    ON contas(saldo);
    
    INSERT INTO contas (nome, sobrenome, saldo, data_nascimento) VALUES( "maria", "julia", 3000, "2022-12-20");
    
    UPDATE contas
    SET nome = "Heitor"
    WHERE id = 2;
    

USE Employees;   

SELECT * FROM employees;
SELECT * FROM salaries;

SELECT employees.first_name, employees.last_name, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;



SELECT employees.first_name, employees.last_name, salaries.salary AS salario
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >120000
ORDER BY salaries.salary DESC;

USE employees;

SELECT employees.first_name, employees.gender,titles.title
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no;
 

USE constrant;

CREATE TABLE pessoas2 ( 
	ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    NOME VARCHAR(200), 
    endereço VARCHAR(200),
    EEMAIL VARCHAR(200)
    );


INSERT INTO pessoas2 (nome, endereco, email) VALUES("isllany", "rua da manga", "gatinho2@gatinho1.com");

SELECT * FROM pessoas2; 

INSERT INTO pessoas (nome) VALUES("heitor");

DELETE FROM pessoas
WHERE ID = 2 OR ID = 3 OR ID=4;

SELECT pessoas2.*, pessoas.nome
FROM pessoas2
LEFT JOIN pessoas
ON pessoas.id = pessoas2.id;

SELECT pessoas2.*, pessoas.nome
FROM pessoas2
RIGHT JOIN pessoas
ON pessoas.id = pessoas2.id;

USE employees;

SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no;

