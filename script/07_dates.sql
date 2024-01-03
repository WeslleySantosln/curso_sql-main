USE sakila;

SELECT * FROM actor 
WHERE actor_id = 2;

SELECT *, ADDDATE(last_update, "5 DAYS") AS "C M J" FROM actor
WHERE actor_id = 1;
	
SELECT *, ADDDATE(last_update, INTERVAL 2 MONTH) AS "C M J" FROM actor
WHERE actor_id = 2;

SELECT *, ADDDATE(last_update, INTERVAL -3 YEAR) AS "C M J" FROM actor
WHERE actor_id = 2;


SELECT *, ADDDATE(last_update, INTERVAL -3 YEAR), DATEDIFF(ADDDATE(last_update, INTERVAL 3 YEAR), last_update) AS "C M J" FROM actor
WHERE actor_id = 2;

SELECT last_update, WEEKOFYEAR(last_update) AS "Semana do ano"
FROM actor;

SELECT last_update, WEEKOFYEAR(last_update) AS "Semana do ano",
WEEKOFYEAR(ADDDATE(last_update, INTERVAL 4 MONTH))
FROM actor;

SELECT last_update, MONTH(last_update) AS "MÊS do ano"
FROM actor;


SELECT last_update, YEAR(last_update) AS "ano"
FROM actor;
