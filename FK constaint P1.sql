CREATE TABLE company (
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    hq_phone_number INT(12)
);
CREATE TABLE items (
	item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id 	VARCHAR(255)
    );
CREATE TABLE sales (
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(255)
);
CREATE TABLE customers (
	customer_id int primary key auto_increment,
	first_name varchar(255),
	last_name varchar(255),
	email_address varchar(255),
	number_of_complaints int
);
ALTER TABLE sales
add foreign key (customer_id) references customers(customer_id) on delete cascade;

alter table sales
drop foreign key sales_ibfk_1;

alter table customers
add unique key (email_address);

alter table customers
drop index email_Address;



    
    
    