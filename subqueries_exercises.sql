se employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

select * from employees where hire_date = (select hire_date from employees where emp_no = 101010);


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select distinct title from titles where emp_no IN (SELECT emp_no FROM employees where first_name = 'Aamod');
# select * from employees where first_name = 'Aamod';


# Find all the current department managers that are female.
select first_name, last_name From employees where gender = 'F' and emp_no IN (SELECT emp_no FROM dept_manager where to_date = '9999-01-01')

