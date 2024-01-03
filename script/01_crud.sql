CREATE DATABASE cadastro;
USE cadastro;
CREATE TABLE pessoas( nome VARCHAR(50), rg VARCHAR(7), cpf VARCHAR(11), limite INT(10));


INSERT INTO pessoas( nome, rg, cpf,limite) VALUES ("Weslley", "9780001", "7049103243", 1000 ); 
INSERT INTO pessoas( nome, rg, cpf,limite) VALUES ("Islanny", "9123001", "1321621143", 3000 ); 
INSERT INTO pessoas( nome, rg, cpf,limite) VALUES ("Maria", "3780002", "1104903243", 2000 ); 
INSERT INTO pessoas( nome, rg, cpf,limite) VALUES ("Heitor", "4784401", "7049126543", 5000 ); 
INSERT INTO pessoas( nome, rg, cpf,limite) VALUES ("Luiz", "5786041", "7049031443", 100 ); 

SELECT * FROM pessoas;

SELECT nome, rg FROM pessoas;

 INSERT INTO pessoas VALUES("JOAQUIM", "032165", "1238474782", 123);
 
UPDATE pessoas
SET  nome = "Joaquim Nambuco"
WHERE nome = "joaqU im nambuco ";

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM pessoas WHERE nome = "joaquim";

SELECT * FROM pessoas;

UPDATE pessoas
SET limite = 1000
WHERE nome = "heitor";

SELECT * FROM pessoas WHERE nome = "HEITOR";

SELECT * FROM pessoas;

DELETE FROM pessoas WHERE NOME = "JOAQUIM NAMBUCO"; 

DELETE FROM pessoas;

SELECT * FROM pessoas; -- nunca faça isso

DELETE FROM











 




