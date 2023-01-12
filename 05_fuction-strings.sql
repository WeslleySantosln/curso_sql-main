USE sakila;

SELECT first_name, CHAR_LENGTH(first_name), last_name, CHAR_LENGTH(last_name) FROM actor;

USE EMPRESA;

SELECT * FROM funcionarios;

SELECT CONCAT( nome, " tem ", idade, " anos de idade!") AS " Nome e idade"
FROM funcionarios ;

USE sakila;

SELECT CONCAT_WS( "-", nome , idade) AS " Nome e idade"
FROM funcionarios ;


SELECT customer_id, amount, FORMAT(amount, 1) AS "CASA ARREDONDADA"
FROM payment;
  
SELECT email, INSTR(email, "@") FROM customer;
  
SELECT LCASE(address.address) FROM address;

SELECT email, LEFT(EMAIL, INSTR(email, "@")-1) AS "USER"
FROM customer;


SELECT CONCAT(LEFT(first_name, 1), LCASE(RIGHT(first_name, CHAR_LENGTH(first_name) - 1))) AS "Nome",
CONCAT(LEFT(last_name, 1), LCASE(RIGHT(last_name, CHAR_LENGTH(last_name) - 1))) AS "Sobrenome"
FROM customer;


SELECT REPLACE(first_name, "MARY", "Mary") AS "nome", REPLACE(last_name, "SMITH" , "Smith") AS "Sobrenome" 
FROM customer;
 
SELECT SUBSTR(last_update, INSTR(last_update, " ") +1 , 5)
FROM actor;
 
SELECT UCASE(country) 
FROM country;


SELECT amount, CEIL(amount) AS "Arrendondado"
FROM payment;

