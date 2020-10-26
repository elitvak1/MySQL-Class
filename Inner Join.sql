use employees;
#Inner Join Part 2 - Exercise:
SELECT 
    d.emp_no, d.dept_no, e.first_name, e.last_name, e.hire_date
FROM
    dept_manager d
        INNER JOIN
    employees e ON e.emp_no = d.emp_no;
/*first try!*/

#solution given:

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;
    /* samething but solution made employees primary table while I made deparment manager primary table.*/
    
#Left Join:
select e.emp_no, m.dept_no, e.first_name, e.last_name, m.from_date
from employees e
left join 
dept_manager m on e.emp_no = m.emp_no
where last_name = 'markovitch' and dept_no is not null;

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , e.emp_no;


