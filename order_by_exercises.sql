USE employees;

# SELECT * FROM employees WHERE first_name In ('Irena', 'Vidya', 'Maya');
# SELECT * FROM employees WHERE first_name In ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
# SELECT * FROM employees WHERE first_name In ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
# SELECT * FROM employees WHERE first_name In ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
SELECT * FROM employees WHERE first_name In ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;


# SELECT * FROM employees WHERE last_name Like 'E%';
SELECT * FROM employees WHERE last_name Like '%E%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name Like '%E%' ORDER BY emp_no DESC;


SELECT *FROM employees WHERE last_name like '%q';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE first_name = ('Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR first_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE 'E%' AND first_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';