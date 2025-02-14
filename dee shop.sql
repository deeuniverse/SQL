Create database Dee_shop;
Use Dee_shop;

CREATE Table Customer
(
Customer_ID INT primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
age int not null,
address varchar (50),
country varchar (50) default "UK"
);
/*to view a table created we use select stament*/
SELECT * FROM Customer;

/*Add values into tables*/
Insert into Customer VALUES
(1,"Vici","Cole",34,"21 Shell Ave",default),
(2,"Mark","Kings",45,"10 Sky Str",default),
(3,"Dave","Lowe",18,"32 Victoria Rd",default),
(4,"Kiara","Moland",50,"1 Ashby cose",default),
(5,"Steve","Mobs",40,"32 Ashton Junction",default);

SELECT*FROM Customer;

/*To view specific items on the table*/
SELECT first_name FROM Customer;
SELECT age,country FROM Customer;
SELECT  Customer_ID FROM Customer;

/*update the customer table by adding phone numbers*/
ALTER TABLE Customer ADD phone_number int not null;  
/*change table to varchar data type*/
ALTER TABLE Customer ADD phonenumber1 varchar (11) not null;

SELECT* FROM Customer;
/*update the Customer table by adding customer phone numbers*/
/*UPDATE Customer SET phonenumber1=07564334088 WHERE customerID=1*/
UPDATE Customer SET phonenumber1=07567543211 WHERE Customer_ID=1;
UPDATE Customer SET phonenumber1=07823487229 WHERE Customer_ID=2;
UPDATE Customer SET phonenumber1=07654398712 WHERE Customer_ID=3;
UPDATE Customer SET phonenumber1=07567980733 WHERE Customer_ID=4;
UPDATE Customer SET phonenumber1=07983278145 WHERE Customer_ID=5;

/*to drop the phonenumber column from the customer table*/
ALTER TABLE Customer DROP COLUMN phonenumber1;
 
ALTER TABLE Customer ADD phonenumber1 varchar (11) not null;
UPDATE Customer SET phonenumber1=07567543211 WHERE Customer_ID=1;
UPDATE Customer SET phonenumber1=07823487229 WHERE Customer_ID=2;
UPDATE Customer SET phonenumber1=07654398712 WHERE Customer_ID=3;
UPDATE Customer SET phonenumber1=07567980733 WHERE Customer_ID=4;
UPDATE Customer SET phonenumber1=07983278145 WHERE Customer_ID=5;

ALTER TABLE Customer DROP COLUMN phone_number;

/*add info into table customer*/
INSERT INTO Customer VALUES (7,"Mai","Gen",23,"3 Down Street","France","07348790343");

SELECT*FROM Customer;

/*to alter a column on a table, use (ALter table, change column old_name new_name) statements*/
ALTER TABLE Customer CHANGE COLUMN address home_address varchar (50) not null;
ALTER TABLE Customer CHANGE COLUMN phonenumber1 mobile_number varchar (50) not null;

/*rename a column*/
ALTER TABLE Customer RENAME COLUMN home_address TO address;
ALTER TABLE Customer RENAME COLUMN mobile_number TO phone_number;

/* Exercise 1. Create a table for a business to store data about their product, such as: product name,
categories, quantity, unit cost, stock date*/

Create Table Products(
Product_ID int primary key,
Product_name varchar (100) not null,
Categories varchar (50) not null,
Quantity int not null,
Unit_cost decimal (4,2) not null,
Stock_date date not null);

SELECT *FROM Products;
INSERT INTO Products 
VALUES
(1,"Tom Ford Oud Wood EDP","Woody",25,25.00,"2025-01-04"),
(3,"Burberry Her EDT","Fruity",30,15.00,"2025-01-10"),
(4,"Prada Amber EDP","Woody",30,10.00,"2025-01-10"),
(5,"Yves Saint Laurent Black Opium EDP","Vanilla",20,13.99,"2025-01-04");

INSERT INTO Products VALUES(2,"Chanel No. 5 EDP","Floral",50,12.00,"202-01-01");

/*date=yyyy-mm-dd*/
/*note: DECIMAL(4,2) means 4 is the limit, while 2 is the Decimal place*/

SELECT DATE_FORMAT(Stock_date, "%d-%m-%Y") AS Stock_date FROM Products;
SELECT*FROM Products;

/*Correct stockdate for productid 2*/
UPDATE Products SET Stock_date= "2025-01-02" WHERE Product_ID=2;

/*change data type*/
ALTER TABLE Products MODIFY COLUMN Quantity char(100) not null;

INSERT INTO Products VALUES(7,"Jo Malone Lime Basil & Mandarin EDT","Citrus",30,85.00,"202-01-04"),
(8,"Escada Sorbetto Rosso EDT","Fruity",45,55.50,"2025-01-02");

ALTER TABLE Products ADD store varchar (50) not null;

UPDATE Products SET store =CASE
WHEN Product_ID=1 THEN "StoreA"
WHEN Product_ID=2 THEN "StoreB"
WHEN Product_ID=3 THEN "StoreC"
WHEN Product_ID=4 THEN "StoreA"
ELSE "No_store"
END;

SELECT *FROM Products;
/*PROBLEM STATEMENT.(The use of SELECT and WHERE)*/
SELECT*FROM Customer;
/*1. Identify the address of the customer whose first name is Vici.*/
SELECT address FROM Customer WHERE first_name="Vici";
SELECT first_name,address FROM Customer WHERE first_name="Vici";

/*2. Identify the customers whose ages are greater than 30.*/
SELECT *FROM Customer WHERE age>30;
/*last names for customers below age 30*/
SELECT last_name FROM Customer WHERE age<30;
SELECT last_name,age FROM Customer WHERE age<30;

/*3. Identify the firstname, age,country and homeaddress of the customer 
whose last name begins with letter L.
3B. Same question but last name starts with M*/
SELECT first_name,age,country,address FROM Customer WHERE last_name LIKE "L%";
SELECT first_name,age,country,address FROM Customer WHERE last_name LIKE "M%";
/*4. Identify the product categories for Woody with unit cost greater than $10.*/
SELECT Product_name,Categories,Unit_cost FROM Products WHERE Categories="Woody" and Unit_cost>10;
SELECT Categories FROM Products WHERE Categories="Woody" and Unit_cost>10;
SELECT*FROM Products WHERE Categories="Woody" AND Unit_cost>10;
/*5. Identify the product with quantity ordered less than 30.*/
SELECT*FROM Products WHERE Quantity<30;
SELECT Product_name,Quantity FROM Products WHERE Quantity<30;

/*6. Identify the product that belong to the Vanilla categories*/

SELECT*FROM Products WHERE Categories="Vanilla";
SELECT Product_name,Categories FROM Products WHERE Categories="Vanilla";


/*TEXT FUNCTIONS*/
/*CONCATENATE, used to join two or more columns with string data type together*/
/*PROBLEM STATEMENT
1. create a user column which contains the user firstname and lastname.*/
SELECT*FROM Products;
SELECT CONCAT(first_name," ",last_name) AS users_fullname FROM Customer;
SELECT CONCAT(Product_name," ",Unit_cost) AS info FROM Products;

/*To permanently add a user column that stores the concatenated
 first_name and last_name, you can do the following:*/
 SELECT*FROM Customer;
ALTER TABLE Customer ADD Users varchar(100);
UPDATE Customer SET Users=CONCAT(first_name," ",last_name);

/*Substring, used to extract subtext from maintext indicating the position and size*/
SELECT SUBSTRING("learning SQL is fun and interesting",25,11) AS sub_info;

/*UPPER
Definition: used to change the case type of a string data to UPPER CASE
Use_case Change these words to its upper case; (learning Sql is fun)*/
SELECT upper("learning Sql is fun") AS info;


/*LOWER
Definition: used to change the case type of a string data to lower case
Use_case Change these words to its lower case; (LEARNING SQL IS FUN)*/
SELECT lower("LEARNING SQL IS FUN") AS info;

/*NUMERIC FUNCTIONS.*/
/* ABS
definition: used to change the value of a number from negative to positive
Use_case; -5.20 to positive*/
SELECT abs(-5.20) AS info;

/* ROUND
definition: used to round off numbers to specific number of decimal place
Use_case: 5.20009 to 2 decimal place*/
SELECT ROUND(5.20009,2) AS information;
SELECT ROUND (3.20008,2) AS information;

/*AGGREGATE FUNCTIONS. 
Used to perform calculations on your table in a database*/

/*SUM
definition: used to add up quantitative data in a table
Use_case: whats the total quantity ordered by the customers*/
SELECT SUM(quantity) AS Total_Quantity FROM Product;
SELECT*FROM Products;
SELECT*FROM Customer;

/*AVG
definition: used to find the mean/average of your data in a column
use_case: find the average unit price of product purchased by the customers*/
SELECT AVG(Unit_cost) AS Average_unitcost FROM Products;
 
 /*COUNT
definition: used to count the number of rows in a table
use_case: count the number of customers based in united kingdom*/
SELECT COUNT(*) AS UK_citizens FROM Customer WHERE country="united kingdom";
/*the parameter in the count function bracket doesnt matter but must not be empty*/

/*MAX
definition: used to find the highest data point in a column
use_case: find the most costly product in the store*/
SELECT MAX(Unit_cost) AS most_expensive FROM Products;
SELECT*FROM Products;

/*LENGTH
definition; used to find the total number of characters in a text
use_case: "learning Sql is not so great but its application is nice" 
how many characters are here*/
SELECT LENGTH("learning Sql is not so great as i thought, but its application is nice") AS LENGTH;

/*REPLACE
definition: used to substitute a word for another word or group of words in a text
Use_case: In the statement replace the word Sql with Javascript 
 "learning Sql is not so great but its application is nice"*/
 SELECT REPLACE("learning Sql is not so great but its application is nice","Sql","Javascript") AS Replacement;





