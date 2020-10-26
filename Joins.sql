drop table departments_dup;
create table departments_dup (
	dept_no varchar(4) null,
    dept_name varchar(40) null
);
insert into departments_dup select * from departments;
select * from departments_dup order by dept_no desc;
insert into departments_dup (dept_name) values ('Public Relations');
delete from departments_dup where dept_no = 'd002';
insert into departments_dup (dept_no) values ('d010'), ('d011');

#169) intro to joins exercise 2:
/* preparing duplicates for lesson*/
DROP TABLE IF EXISTS dept_manager_dup;
CREATE TABLE dept_manager_dup (
  emp_no int(11) NOT NULL,
  dept_no char(4) NULL,
  from_date date NOT NULL,
  to_date date NULL
  );
INSERT INTO dept_manager_dup
select * from dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES                (999904, '2017-01-01'),

					  (999905, '2017-01-01'),

					  (999906, '2017-01-01'),

					  (999907, '2017-01-01');
DELETE FROM dept_manager_dup
WHERE
					dept_no = 'd001';
select * from dept_manager_dup order by emp_no desc;

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

#old join syntax
select e.emp_no, dm.dept_no, e.first_name, e.last_name, e.hire_date
from 
dept_manager dm,
employees e
where 
dm.emp_no = e.emp_no;

SELECT

    e.emp_no,

    e.first_name,

    e.last_name,

    dm.dept_no,

    e.hire_date

FROM

    employees e,

    dept_manager dm

WHERE

    e.emp_no = dm.emp_no;



#New Join Syntax:

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
    
    set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');
    
#Join and where clause used together
select e.emp_no, e.first_name, e.last_name, e.hire_date, t.from_date, t.to_date, t.title
from 
employees e
inner join
titles t on e.emp_no = t.emp_no
where first_name = 'margareta' and last_name = 'Markovitch';
#Cross Join Exercise 1:
/*two methods to complete cross join exercise*/
#1:
select dm.*, d.*
from 
dept_manager dm
cross join 
departments d
where d.dept_no = 'd009'
order by dm.emp_no desc;
#2:
select dm.*, d.*
from 
dept_manager dm,
departments d
where d.dept_no = 'd009'
order by emp_no desc;

#Answer:
SELECT 
    dm.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY d.dept_name;

#Cross Join Exercise 2
select e.*, d.*
from
employees e
cross join 
departments d
where e.emp_no <= 10010
order by e.emp_no, d.dept_no;
#multiple table join
select
dm.emp_no,
dm.dept_no,
t.title,
dm.from_date,
e.first_name,
e.last_name,
e.hire_date,
d.dept_name
from
employees e
join
dept_manager dm on e.emp_no = dm.emp_no
join
departments d on dm.dept_no = d.dept_no
join titles t on e.emp_no = t.emp_no
order by e.emp_no;

#Answer
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;

select 
dm.*, t.title
from 
dept_manager dm
join 
titles t on dm.emp_no = t.emp_no;





