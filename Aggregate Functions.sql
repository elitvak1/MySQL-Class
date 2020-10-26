#Aggregate Functions - Count():
# how many departments are in the employees table?
/* two ways to do it*/
SELECT 
    COUNT(DISTINCT dept_no) AS no_departments
FROM
    dept_emp;
#Aggregate Functions - sum():

select sum(salary) from salaries where from_date > '1997-01-01';

# min and max
select max(emp_no) from employees;
select min(emp_no) from employees;

#average
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
#Round():
SELECT 
    round(AVG(salary),2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
