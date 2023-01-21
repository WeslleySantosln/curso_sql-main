USE employees;

DELIMITER $$

SELECT * FROM salaries$$


CREATE PROCEDURE fullName()
BEGIN
	SELECT CONCAT(first_name, " ", last_name) AS full_name FROM employees;
END$$

CREATE PROCEDURE nameAndSalaries()
BEGIN
	SELECT emp.first_name, sa.salary FROM employees AS emp
    JOIN salaries AS sa ON emp.emp_no = sa.emp_no
	WHERE salary > 100000;
END$$

CREATE PROCEDURE salariesHigh(
	IN valorHigh INT
)
BEGIN
	SELECT emp.first_name, sa.salary FROM employees AS emp
    JOIN salaries AS sa ON emp.emp_no = sa.emp_no
	WHERE sa.salary > valorHigh;
END$$


call fullName()$$

call nameAndSalaries()$$

call salariesHigh(100000)$$


SHOW PROCEDURE STATUS$$

SHOW CREATE PROCEDURE fullName$$


DROP PROCEDURE nameAndSalaries$$










