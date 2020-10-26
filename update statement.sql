use employees;
#Update Statement Part 1:
select * from employees order by emp_no desc limit 10;
update employees 
set 
first_name = 'Stella',
last_name = 'Parkinson',
birth_date = '1990-12-31',
gender = 'F'
where 
emp_no = 999903;
select * from employees order by emp_no desc limit 10;
#Update Statements Part 2:
/*MUST USE WHERE - IT IS CRUCIAL - IF NOT ALL ROWS WILL BE UPDATED 
rarely will have to update an entire table only certain rows using the where operator
 commit only when you know you have made no mistakes */

# Update Statement Exercise Part 2:
select * from departments;
UPDATE departments 
SET 
    dept_name = 'Data Analyses'
WHERE
    dept_no = 'd010';
SELECT 
    *
FROM
    departments
order by dept_no desc;

select * from employees order by emp_no desc limit 10;

insert into employees 
values 
(
	999901,
    '1977-09-14',
    'Jonathan',
    'Creak',
    'M',
    '1999-01-01'
);
# switching data all data from 999903 to 999901 and vice versa to match the lecture:
update employees 
set
	birth_date = '1990-12-31',
    first_name = 'Stella',
    last_name = 'Parkinson',
    gender = 'F',
    hire_date = '1999-01-01'
where emp_no = 999901;

update employees 
set
	birth_date = '1977-09-14',
    first_name = 'Jonathan',
    last_name = 'Creak',
    gender = 'M',
    hire_date = '1999-01-01'
where emp_no = 999903;

select * from employees order by emp_no desc limit 10;



