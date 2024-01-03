CREATE DATABASE relacoes;

USE relacoes;

CREATE TABLE estudantes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    turma VARCHAR(5)
);

CREATE TABLE contatos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    telefone VARCHAR(20),
    estudante_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

INSERT INTO estudantes (nome, turma) VALUES ("Weslley", "304d");
INSERT INTO estudantes (nome, turma) VALUES ("Maria", "104d");

SELECT * FROM estudantes;

INSERT INTO contatos (telefone, estudante_id) VALUES ("81 9 8484-8484", 1);
INSERT INTO contatos (telefone, estudante_id) VALUES ("81 9 8585-8585", 2);

SELECT * from estudantes
JOIN contatos ON contatos.estudante_id = estudantes.id;