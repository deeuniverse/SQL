-- SELECT STATEMENT; grabs data from a table

-- view all possible databases 
SHOW DATABASES;
-- choose the database to work with
USE shopify;
-- to view the tables in the database
SHOW tables;

-- OR creating a table to work with, CREATE A TABLE CALLED REGIONS
CREATE TABLE regions(
customer_id  INT PRIMARY KEY,
name VARCHAR (100) NOT NULL,
age INT,
country VARCHAR (100) NOT NULL);

-- view the table 
SELECT * FROM regions; -- NB asterisk (*) vews all columns in the table

-- INSERT VALUES
INSERT INTO regions VALUES
(1, 'Ava', 28, 'USA'),
(2, 'Bob', 34, 'Brazil'),
(3, 'Carlos', 29, 'Brazil'),
(4, 'Diana', 25, 'USA');
--  Select a Single Column
-- I want to see the name column
SELECT name FROM regions;

-- I want to see all the columns
SELECT * FROM regions;

-- Select Multiple Columns
SELECT name, age FROM regions;

-- Use DISTINCT to Remove Duplicates
SELECT DISTINCT country FROM regions;

/*Even though "Brazil" appears more than once in the data, 
SELECT DISTINCT ensures each country appears only once. */


