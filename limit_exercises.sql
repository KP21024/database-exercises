use employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT DISTINCT emp_no FROM salaries ORDER BY salary DESC LIMIT 5;

SELECT DISTINCT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45;

# 10 pages of results from the above query
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 0; page 1
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 5; page 2
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 10; page 3
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 15; page 4
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 20; page 5
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 25; page 6
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 30; page 7
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 35; page 8
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 40; page 9
# SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 offset 45; page 10

