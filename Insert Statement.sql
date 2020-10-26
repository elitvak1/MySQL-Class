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



 
	


    
    
    
    