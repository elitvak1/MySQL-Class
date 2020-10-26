CREATE TABLE customers 
(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0
); 
alter table customers
change number_of_complaints number_of_complaints int default 0;

insert into customers (first_name, last_name, gender) values ('Peter','Figaro', 'M');

alter table customers
change email_address email_address varchar(255) not null;

create table company 
(
	company_id varchar(255) not null primary key,
	company_name varchar(255) default('X'),
    headquarters_phone_number varchar(255) unique key
);

drop table company

create table company 
(
	company_id varchar(255) not null primary key,
    company_name varchar(255),
    headquarters_phone_number varchar(255)
);

alter table company
add unique key (headquarters_phone_number);

alter table company
change company_name company_name varchar(255) default('X');

insert into company (company_id, headquarters_phone_number) 
values (2, '203-216-4898');

alter table company 
change headquarters_phone_number headquarters_phone_number varchar(255) not null;

alter table company
modify headquarters_phone_number varchar(255) null;






