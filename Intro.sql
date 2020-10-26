create database IF NOT EXISTS Sales;
CREATE TABLE Sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);
CREATE TABLE Customer
(
	customer_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255) NOT NULL,
    number_of_complaints INT NOT NULL
);
-- two ways to select table 
-- #1
use sales; #set database
SELECT * from customers; #select table
-- #2
SELECT * FROM sales.customer; #select DB and table with dot operator

    