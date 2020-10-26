select * from departments_dup order by dept_no asc;
alter table departments_dup
modify dept_name varchar(40) null;
insert into departments_dup(dept_no) values ('d010'),('d011');
alter table departments_dup
add column dept_manager varchar(255) null after dept_name;
commit;
use employees;
SELECT

    dept_no,

    dept_name,

    COALESCE(dept_no, dept_name) AS dept_info

FROM

    departments_dup

ORDER BY dept_no ASC;
select * from departments_dup order by dept_no asc;

select
ifnull(dept_no, 'N/A') as dept_no, 
ifnull(dept_name, 'Department name not provided') as dept_name,
COALESCE(dept_no, dept_name) AS dept_info
from departments_dup
order by dept_no asc;




