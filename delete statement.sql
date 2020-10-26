#Delete Statement Part 1:
use employees;
commit;

select * from employees order by emp_no desc limit 10; # check to see emp_no 999903 is there

delete from employees where emp_no = 999903; #deletes emp_no 999903

# Delete Statement Part 2:


select * from titles order by emp_no desc limit 10; #is emp_no 999903 removed from titles table? =Yes
/*titles table has emp_no foreign key set to on delete cascade*/

rollback; #Undo changes to most recent commit

#Delete Statement Part 2 Exercise:
select * from departments order by dept_no desc;

delete from departments where dept_no = 'd010';



