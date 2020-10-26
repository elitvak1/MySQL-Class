SELECT 
    *
FROM
    employees;

insert into employees
values
(
	999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC limit 10;

#Insert Statement Exercise 1
select * from titles order by emp_no desc limit 10;

insert into titles 
 (
 emp_no, 
 title, 
 from_date
 )
 values
 (
 999903,
 'Senior Engineer',
 '1997-10-01'
 );
 SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC limit 10;

#Insert statement part 2
use employees;

select * from dept_emp order by emp_no desc limit 10;

delete from dept_emp where emp_no = 999903;

insert into dept_emp
values
(
	999903,
    'd005',
    '1997-10-01',
    '1999-01-01'
);
#insert data into new table:
create table departments_dup (
	dept_no char(4) not null,
    dept_name varchar(40) not null
);

select * from departments_dup;
use employees;
insert into departments_dup 
(
	dept_no,
    dept_name
)
select * from departments;

select * from departments_dup;

# add data into new table exercise:

insert into departments 
(
	dept_no,
    dept_name
)
values 
(
'd010',
'Business Analyses'
);

select * from departments;




 
	


    
    
    
    