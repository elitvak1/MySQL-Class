SELECT 
    first_name, COUNT(first_name)  as names_count
FROM
    employees
WHERE
    hire_Date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

#Where vs Having Part II
SELECT 
    emp_no, dept_no, COUNT(emp_no) AS number_of_contract
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no ASC;

select * from dept_emp where emp_no ='499874';
