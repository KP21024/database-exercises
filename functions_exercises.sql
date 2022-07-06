USE employees;


SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees
WHERE month(birth_date) = '12'
  AND day(birth_date) = '25';

SELECT * FROM employees
WHERE year(hire_date) BETWEEN '1990' AND '1999'
  AND month(birth_date) = '12'
  AND day(birth_date) = '25'
ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(CURDATE(), hire_date) AS tenure,
       CONCAT(first_name, ' ', last_name) AS full_name
FROM employees WHERE hire_date BETWEEN '1990' AND '1999' AND birth_date LIKE '%25' ORDER BY birth_date, hire_date DESC;