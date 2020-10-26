SELECT 
    first_name, last_name
FROM
    employees;
    
SELECT 
    *
FROM
    employees;
    
SELECT 
    dept_no
FROM
    departments;

SELECT 
    *
FROM
    departments;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'elvis';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis' AND gender = 'M';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'kellie'
        OR first_name = 'Aruna';
        
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = 'Aruna');

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('denis' , 'elvis');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('john' , 'mark', 'jacob');

select * from employees where first_name like ('mark%');
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');

#wildcard character exercise
use employees;    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%jack%');
select * from employees where first_name not like ('%jack%');

#between...and statement operator exercise
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';
SELECT 
    *
FROM
    salaries
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';

#is not null...null exercise
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;
    
#Other comparison operators exercise
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
        
select * from salaries where salary > '150000';

#select distinct exercise
SELECT DISTINCT
    hire_date
FROM
    employees;
    
#Introduction to aggregate functions
# 1) How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?
SELECT 
    COUNT(salary)
FROM
    salaries
WHERE
    salary >= '100,000';
# 2) How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.
SELECT 
    COUNT(*)
FROM
    dept_manager;
use employees;
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

#Group by operator notes:
SELECT 
    first_name, COUNT(first_name) AS emp_with_same_name
FROM
    employees
GROUP BY first_name
ORDER BY first_name ASC;

#Group by and alias exercise:
SELECT 
    salary, COUNT(emp_no) AS employees_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary ASC;

SELECT 
    hire_date, COUNT(emp_no) AS employee_with_same_hire_date
FROM
    employees
WHERE
    hire_Date BETWEEN '1990-01-01' AND '1997-07-20'
GROUP BY hire_date
ORDER BY hire_date ASC;

SELECT 
    *
FROM
    employees
WHERE
    hire_date = '1991-01-01'
        AND first_name = 'bikash'
ORDER BY first_name ASC;

#Having exercise
SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no ASC;

SELECT 
    emp_no, salary
FROM
    salaries
GROUP BY salaries
HAVING AVG(salary) > 120000;

SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

SELECT
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;