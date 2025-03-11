-- create a database called college
CREATE DATABASE college;
USE college;
/* create table called student info have the variables
id, first name,gender ,age, departments */
CREATE TABLE student_info (
id INT PRIMARY KEY,
firstname VARCHAR (50),
lastname VARCHAR (50),
gender CHAR (10),
age INT,
department CHAR (100)
);

--  view that tabe you just created
SELECT * FROM student_info;