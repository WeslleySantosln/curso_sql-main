SELECT * FROM employees WHERE emp_no = 491008;

SELECT * FROM salaries WHERE salary <= 65000;
 
SELECT * FROM Salaries WHERE salary >= 155000;

SELECT DISTINCT title FROM titles;

SELECT * FROM salaries WHERE salary > 80000 AND from_date > "1991-12-12";

SELECT * FROM salaries WHERE salary > 150000 AND from_date > "1998-12-12" AND emp_no > 12800;

SELECT * FROM salaries WHERE salary > 150000 OR from_date > "2010-01-01";

SELECT * FROM salaries WHERE salary > 150000 || from_date > "2010-01-01";

SELECT * FROM titles WHERE title = "Senior Engineer" || title = "Staff" || emp_no > 12500 ORDER BY emp_no DESC;

SELECT * FROM titles WHERE NOT title = "senior Engineer" AND NOT title = "Staff" AND NOT emp_no > 12500 AND from_date > "2000/01/01";

SELECT * FROM titles ORDER BY title DESC LIMIT 10; 

SELECT * FROM salaries ORDER BY salary DESC LIMIT 15;

USE employees;

SELECT * FROM departments ORDER BY dept_name ASC LIMIT 5;


SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;
SELECT MIN(salary) AS salary FROM salaries;

SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT MAX(salary) FROM salaries;
 
 
 SELECT COUNT(*) FROM salaries WHERE salary > 100000;
 
 SHOW DATABASES;
 
 SHOW TABLEs;
 
 SELECT * FROM employees;
 
 SELECT COUNT(*) FROM employees WHERE gender = "M";
 
 SELECT AVG(salary) FROM salaries WHERE salary > 100000;

 SELECT AVG(salary) AS salary FROM salaries WHERE salary > 100000;
 
 SELECT SUM(salary) FROM salaries;

SELECT SUM(salary) FROM salaries WHERE salary > 100000;  

SELECT * FROM employees WHERE first_name LIKE "%BER%";

SELECT first_name FROM employees WHERE first_name LIKE "Ber%";

SELECT first_name FROM employees WHERE first_name LIKE "%Ber";

SELECT first_name FROM employees WHERE first_name LIKE "%Ber";

SELECT * FROM employees WHERE last_name LIKE "%BER%" AND gender = "m" ;

SELECT * FROM titles WHERE title LIKE "%engineer%";

SELECT COUNT(title) FROM titles WHERE title LIKE ("%engineer%");

SELECT * FROM employees WHERE last_name IN ("Facello", "Peac");

SELECT * FROM employees WHERE last_name IN ("Facello", "Peac") AND gender = "f";

SELECT * FROM salaries WHERE salary BETWEEN 125000 AND 175000;
 
SELECT COUNT(*) FROM salaries WHERE salary BETWEEN 125000 AND 175000;





















