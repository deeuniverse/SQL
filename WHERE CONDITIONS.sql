-- WHERE CLAUSE OR STATEMENTS 
-- WHERE CLUASE; Used to filter records based on a conditons
-- SELECT Column 1, Column 2 FROM Table WHERE conditon;
-- We wil create a table and then demonstrate how to use 'where'

CREATE DATABASE hospital_records;
USE hospital_records;
CREATE TABLE patients
(patient_ID INT PRIMARY KEY,
name VARCHAR (100) NOT NULL,
age INT NOT NULL,
city VARCHAR (100) NOT NULL,
state VARCHAR (100) NOT NULL);

INSERT into patients VALUES
(1, 'Faith Turi', 25, 'Atlanta', 'Georgia'),
(2, 'Geoffry Were', 62, 'Columbus', 'Georgia'),
(3, 'Olivia Perry', 41, 'Columbus', 'Georgia'),
(4, 'Edgar Oliver', 36, 'Atlanta', 'Georgia'),
(5, 'Dee Gee', 68, 'Atlanta', 'Georgia');

SELECT * FROM patients;

-- USE WHERE EXERCISE
-- 1. Select patients whose age is greater than 40
SELECT * FROM patients WHERE age > 40;

-- 2. Select patients whose city is Atlanta
SELECT * FROM patients WHERE city = 'Atlanta';

-- 3. Patients whose age is greater than 40  and are from Atlanta
SELECT * FROM patients WHERE age > 40 AND city = 'Atlanta'; 
-- AND- all conditions should be met

-- 4. Patients whose age is greater than 40 or from Atlanta
SELECT * FROM patients WHERE age > 40 OR city = 'Atlanta';
-- OR atleast one of those conditions met

-- 5. View all patients except those in Columbus -> USE ' WHERE NOT'
SELECT * FROM patients WHERE NOT city = 'Columbus';

-- 6. view ages between 20 and 50 (range)
SELECT * FROM patients WHERE age BETWEEN 20 AND 50;
-- NB. BETWEEN will include 20 and 50

-- 7. Provide a specific set of numbers
SELECT * FROM patients WHERE age IN (25, 36);
SELECT * FROM patients WHERE age IN (25, 62, 68);

-- USE OF WILD CARDS
-- example' give me patients whose cities start with 'col' 
SELECT * FROM patients WHERE city LIKE 'col%';
-- or patients starting with 'a'
SELECT * FROM patients WHERE city LIKE 'a%';

-- view patients whose state ends with letter a
SELECT * FROM patients WHERE state LIKE '%a';
-- view patients whose state ends with letter s
SELECT * FROM patients WHERE city LIKE '%s';

-- NB. % is a place holder
/* WILD CARDS
A wild card character in SQL is used with the LIKE clause to replace a single character
or a set of characters in a string*/
