SELECT * FROM departments;
SELECT * FROM dept_emp;

SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;

SELECT dept_no FROM departments
UNION ALL SELECT dept_no FROM dept_emp;

SELECT gender, COUNT(gender) AS "QUANTIDADES POR GENERO" FROM employees
GROUP BY gender;

SELECT title, COUNT(title) AS "QUANTIDADES POR CARGO" FROM titles
GROUP BY title;

SELECT hire_date, COUNT(hire_date) AS "QTD POR DATA DE CONTRATAÇÃO" 
FROM employees
GROUP BY hire_date
ORDER BY hire_date DESC;

SELECT hire_date, COUNT(hire_date) AS "QTD POR DATA DE CONTRATAÇÃO" 
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;

SELECT hire_date, COUNT(hire_date) AS "QTD POR DATA DE CONTRATAÇÃO" 
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) > 110
ORDER BY COUNT(hire_date) DESC;

SELECT title, COUNT(title) AS "QTD DE TITULOS"
FROM titles
GROUP BY title
HAVING COUNT(title) > 100000;


SELECT hire_date, COUNT(hire_date) AS "QTD DE PESSOAS CONTRATADAS"
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) <= 50
ORDER BY COUNT(hire_date);


SELECT employees.emp_no, employees.first_name, last_name, (
	SELECT SUM(salary)
	FROM salaries
    where employees.emp_no = salaries.emp_no
    ) AS "SOMA DE SALARIO"
FROM employees;



SELECT employees.emp_no, employees.first_name, last_name, (
	SELECT SUM(salary)
	FROM salaries
    where employees.emp_no = salaries.emp_no
    ) AS "SOMA DE SALARIO"
FROM employees
WHERE (
	SELECT SUM(salary)
	FROM salaries
    where employees.emp_no = salaries.emp_no
    ) > 2000000
;

SELECT employees.emp_no, employees.first_name, last_name, (
	SELECT SUM(salary)
	FROM salaries
    where employees.emp_no = salaries.emp_no
    ) AS "SOMA DE SALARIO"
FROM employees
WHERE EXISTS (
	SELECT salary
	FROM salaries
    where employees.emp_no = salaries.emp_no
    HAVING SUM(salary) > 2000000
) ;


SELECT employees.emp_no, employees.first_name, employees.last_name
FROM employees
WHERE employees.emp_no = ANY  (
	SELECT salaries.emp_no
    FROM salaries
    WHERE salary > 150000
);





