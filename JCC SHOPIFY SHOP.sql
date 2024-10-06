CREATE database shopify;
USE shopify;
CREATE TABLE Customers
(CustomerID INT primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
age int not null,
address varchar(50),
country varchar(50) default "UK");

/*See table created*/
SELECT* FROM Customers;

/*add value to table created above*/
INSERT INTO Customers
VALUES
(1,"Philip","James",34,"35 Andrew street",default),
(2,"Bola","Timothy",25,"76 Data Street",default),
(3,"Bunmi","Waters",18,"23 Great London Street",default),
(4,"Akin","Moses",50,"36 Morrocco street",default),
(5,"Louis","Jobs",40,"25 Southgate street",default);

SELECT* FROM Customers;

/*to view specific columns*/
Select firstname FROM Customers;
Select lastname FROM Customers;
Select address FROM Customers;
Select age FROM Customers;
Select CustomerID FROM Customers;

/*TO ADD COLUMNS IN A TABLE*/
ALTER table Customers ADD phonenumber varchar (11) not null;
ALTER table Customers ADD birthday varchar (11) not null;
ALTER table Customers ADD gender varchar(23) not null;
ALTER table Customers ADD height INT not null;
ALTER table Customers ADD email varchar(20) not null;
ALTER table Customers ADD weight INT not null;
ALTER table Customers ADD review INT not null;

/*ADD INFORMATION TO THE NEW COLUMNS MADE ABOVE
 e.g UPDATE Customer SET phonenumber=07564334088 WHERE customerID=1;*/
/*PHONE NUMBER*/
UPDATE Customers SET phonenumber=07564334088 WHERE CustomerID=1;
UPDATE Customers SET phonenumber=07564134081 WHERE CustomerID=2;
UPDATE Customers SET phonenumber=07564334083 WHERE CustomerID=3;
UPDATE Customers SET phonenumber=07564334085 WHERE CustomerID=4;
UPDATE Customers SET phonenumber=07564334086 WHERE CustomerID=5;

SELECT* FROM Customers;
/*FILL IN BIRTHDAYS*/
UPDATE Customers SET birthday="19 OCT 90" WHERE age=34;
UPDATE Customers SET birthday="06 MAY 99" WHERE age=25;
UPDATE Customers SET birthday="11 SEPT 96" WHERE age=18;
UPDATE Customers SET birthday="06 JUN 74" WHERE age=50;
Update Customers SET birthday="94 JUL 84" WHERE age=40;

/*GENDER*/
UPDATE Customers SET gender="Male" WHERE firstname="Philip";
UPDATE Customers SET gender="Female" WHERE firstname="Bola";
UPDATE Customers SET gender="Female" WHERE firstname="Bunmi";
UPDATE Customers SET gender="Male" WHERE firstname="Akin";
UPDATE Customers SET gender="Male" WHERE firstname="Louis";
SELECT * FROM Customers;
/*to drop  column from the customer table
e,g ALTER TABLE Customer DROP COLUMN phonenumber; */

/*drop height,email,weight,review*/
ALTER TABLE Customers DROP COLUMN height;
ALTER TABLE Customers DROP COLUMN email;
ALTER TABLE Customers DROP COLUMN weight;
ALTER TABLE Customers DROP COLUMN review;

/*ADD A CUSTOMER(S) IN THE TABLE*/
/*INSERT INTO Customer 
VALUES (6,"Mary","James",32,"35 Helen street","France","07335647659") */

INSERT INTO Customers
VALUES
(6,"Garry","Herb",32,"35 Sinki st","France",07345678901,"19 JUN 92","Female");
INSERT INTO Customers VALUES
(7,"Nona","Smith",19,"44 Maje Ave","Malta",07987654321,"28 JUL 97","Male");
SELECT* FROM Customers;

/*delete information/vaue from  customer table e.g
DELETE FROM Customer WHERE customerID=7; */

DELETE FROM Customers WHERE CustomerID=6;
DELETE FROM Customers WHERE CustomerID=7;
DELETE FROM Customers WHERE CustomerID=5;
DELETE FROM Customers WHERE CustomerID=4;
SELECT * FROM Customers;
SELECT age FROM Customers;

INSERT INTO Customers VALUES
(4,"Akin","Moses",50,"36 Morrocco street",default, 07564334988,"24 OCT 90","Male"),
(5,"Louis","Jobs",40,"25 Southgate street",default,07654124981,"12 SEPT 95","Female");
SELECT*FROM Customers;
/*to rename a column on a table, use (ALter table, change column old_name new_name) statements*/
ALTER TABLE Customers Change column address home_address varchar (50) not null;
ALTER TABLE Customers Change column phonenumber phone_number varchar (11) not null;
ALTER TABLE Customers Change column firstname First_name varchar (50) not null;
ALTER TABLE Customers Change column lastname Last_name varchar (50) not null;
ALTER TABLE Customers Change column age Age INT not null;
ALTER TABLE Customers Change column home_address Address varchar (50) not null;
ALTER TABLE Customers Change column country Country varchar (50) default "UK";
ALTER TABLE Customers Change column phone_number Mobile_number char (50) not null;
ALTER TABLE Customers Change column birthday Birthday varchar (50) not null;
ALTER TABLE Customers Change column gender Gender varchar (50) not null;
SELECT *FROM Customers;
/*To rename just the column name, you can also use the RENAME statement.
 To change the Column name and the data type, you use the CHANGE statement
example ALTER TABLE Customer RENAME COLUMN address TO homeaddress*/ 
ALTER TABLE Customers RENAME COLUMN Address TO Home_address;
ALTER TABLE Customers RENAME COLUMN Age TO Cust_Age;

ALTER TABLE Customers ADD COLUMN Email varchar (50) not null;
UPDATE  Customers SET Email="peejay@yahoo.com" WHERE CustomerID=1;
UPDATE Customers SET Email="bolat@yahoo.com" WHERE CustomerID=2;
UPDATE Customers SET Email="bun.waters@gmailcom" WHERE CustomerID=3;
UPDATE Customers SET Email="akin100@gmail.com" WHERE CustomerID=4;
UPDATE Customers SET Email="ljobs@rocketmail.co.uk" WHERE CustomerID=5;


/* Exercise 1. Create a table for a business to store data about their product, such as: product name,
categories, quantity, unit cost, stock date*/
CREATE TABLE Products
(ProductID int primary key,
product_name char (100) not null,
catgoriees varchar (50) not null,
quantity int not null);

SELECT * from Products;
/*Enterring values individually or as a block*/
INSERT INTO Products VALUES
(1,"bag","office",507.00);
INSERT INTO Products VALUES
(2,"phone","electronics",25.50);

INSERT INTO Products VALUES
(3,"chairs","office",450.00),
(4,"bags","school",510.50),
(5,"shoes","office",105.50);
/* to add additional columns in table products*/
ALTER TABLE Products ADD Unit_cost float (4,2) not null;
/*To delet that column you just added*/
ALTER TABLE Products DROP COLUMN Unit_cost;
/*you can use float or decimal*/
ALTER TABLE Products ADD Unit_cost decimal (4,2) not null;
ALTER TABLE Products ADD Stockdate DATE DEFAULT NULL;
SELECT *FROM Products;
UPDATE Products SET Unit_cost=14.00 WHERE ProductID=1;
UPDATE Products SET Unit_cost=20.00 where ProductID=2;
UPDATE Products SET Unit_cost=30.00 where ProductID=3;
UPDATE Products SET Unit_cost=45.00 where ProductID=4;
UPDATE Products SET Unit_cost=50.00 where ProductID=5;

UPDATE Products SET Stockdate="2024-02-22" where productID=1;
UPDATE Products SET Stockdate="2024-01-20" where productID=2;
UPDATE Products SET Stockdate="2024-03-25" where productID=3;
UPDATE Products SET Stockdate="2024-04-15" where productID=4;
UPDATE Products SET Stockdate="2024-05-15" where productID=5;

/*to view the date column in another format dd-mm-yyy different from the
original format yyyy-mm-dd, we indicate it in the SELECT statement*/
SELECT product_name,DATE_FORMAT(Stockdate,"%m-%y") AS Stockdate FROM Products;
SELECT DATE_FORMAT(Stockdate,"%m-%y") AS Stockdate FROM Products;