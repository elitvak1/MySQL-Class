create table customers (
	customer_id int auto_increment,
	first_name varchar(255),
	last_name varchar(255),
	email_address varchar(255) not null,
	number_of_complaints int,
    primary key (customer_id)
);
alter table customers 
add column gender enum('M', 'F') after last_name;

insert into customers (first_name, last_name, gender, email_address, number_of_complaints) values ('John', 'Mackinley', 'M','john.mackinley@365careers.com',0); 
