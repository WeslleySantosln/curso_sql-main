USE sakila;

SELECT amount, CEIL(amount) AS "Arredondando P/ CIMA"
FROM payment;

SELECT amount, FLOOR(amount) AS "Arredondando p/ baixo" 
FROM payment;

SELECT customer_id, COUNT(customer_id) AS "CONTAGENS DE CLIENTES CADASTRADOS"
FROM customer;

SELECT MAX(amount) AS "Maior pagamento" 
FROM payment;

SELECT MIN(amount) AS "Menor pagamento" 
FROM payment;

SELECT SUM(amount) AS "Soma de pagamento" 
FROM payment;