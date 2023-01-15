USE relacoes;
CREATE TABLE materias(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE estudante_materias(
	estudante_id INT NOT NULL,
    materia_id INT NOT NULL,
    FOREIGN KEY (estudante_id) REFERENCES estudantes(id),
    FOREIGN KEY (materia_id) REFERENCES materias(id)
);

INSERT INTO materias (NOME) VALUES("MATEMATICA");
INSERT INTO materias (NOME) VALUES("Banco de dados");
INSERT INTO materias (NOME) VALUES("Rede de computadores");
INSERT INTO materias (NOME) VALUES("Logica da Programação");

SELECT * FROM materias;

INSERT INTO estudantes (nome, turma) VALUES ("Kessya", "202b");
INSERT INTO estudantes (nome, turma) VALUES ("Julia", "201b");

SELECT * FROM estudantes
JOIN materias ON estudantes.id = materiaS.id;

INSERT INTO estudante_materias (estudante_id, materia_id) VALUES ( 2,1);
INSERT INTO estudante_materias (estudante_id, materia_id) VALUES ( 3,2);
INSERT INTO estudante_materias (estudante_id, materia_id) VALUES ( 4,3);
INSERT INTO estudante_materias (estudante_id, materia_id) VALUES ( 2,4);

SELECT * FROM estudante_materias;
SELECT * FROM materias;

SELECT * FROM estudantes
JOIN estudante_materias ON estudantes.id = estudante_materias.estudante_id
JOIN materias on estudante_materias.materia_id = materias.id;