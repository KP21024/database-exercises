use employees;

show tables;

describe current_dept_emp;
show index from current_dept_emp;
show create table current_dept_emp;

describe departments;
show index from departments;
show create table departments;

describe dept_emp;
show index from dept_emp;
show create table dept_emp;

describe dept_emp_latest_date;
show index from dept_emp_latest_date;
show create table dept_emp_latest_date;
describe dept_manager;
show index from  dept_manager;
show create table dept_manager;

use codeup_test_db;


show tables;
select * from albums;

describe albums;
show index from albums;

ALTER TABLE albums
    ADD UNIQUE(name, artist);

INSERT INTO albums (artist, name, released_date, sales, genre)
VALUES ('test artist', 'test album',2000, 11, 'test, test, test');

ALTER TABLE albums
    DROP INDEX;