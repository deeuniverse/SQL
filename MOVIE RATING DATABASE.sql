-- STEP 1 CREATE THE DATABASE
CREATE database MovieratingDB;
USE MovieratingDB;
-- CREATE THE TABLES 
-- Create three main tables based on relational logic:

CREATE TABLE Users 
( Name VARCHAR (50) not null,
Age INT not null,
Gender VARCHAR(50) not null,
Location VARCHAR (50) not null);
INSERT INTO Users VALUES
 ('John Doe', 28, 'Male', 'Lagos'),
('Mary Johnson', 34, 'Female', 'Abuja'),
('Samuel Peters', 22, 'Male', 'Kano'),
('Ada Obi', 30, 'Female', 'Enugu'),
('Grace Yusuf', 26, 'Female', 'Ibadan'),
('Emeka Uzo', 40, 'Male', 'Port Harcourt'),
('Tunde Ajayi', 24, 'Male', 'Lagos'),
('Bola Ade', 31, 'Female', 'Abeokuta'),
('Fatima Musa', 27, 'Female', 'Abuja'),
('Chinedu Eze', 35, 'Male', 'Owerri'),
('Ngozi Nnamdi', 29, 'Female', 'Onitsha'),
('Ibrahim Sule', 33, 'Male', 'Kaduna'),
('Peace Akpan', 21, 'Female', 'Uyo'),
('Segun Bello', 37, 'Male', 'Lagos'),
('Oluwakemi Adebayo', 25, 'Female', 'Ilorin'),
('David Okoro', 32, 'Male', 'Benin'),
('Hauwa Abdullahi', 27, 'Female', 'Sokoto'),
('Kelvin Bright', 23, 'Male', 'Jos'),
('Rita Johnson', 36, 'Female', 'Abuja'),
('Collins Ojo', 29, 'Male', 'Lagos');
SELECT * FROM Users;

-- INSERT INTO Movies (title, release_year, genre, director) VALUES
CREATE TABLE Movies
(Title VARCHAR (50) not null,
Release_year INT not null,
Genre VARCHAR (50) not null,
Director VARCHAR(50) not null);
SELECT *FROM Movies;

INSERT INTO Movies VALUES
('Inception', 2010, 'Sci-Fi', 'Christopher Nolan'),
('Black Panther', 2018, 'Action', 'Ryan Coogler'),
('Titanic', 1997, 'Romance', 'James Cameron'),
('The Matrix', 1999, 'Sci-Fi', 'Lana Wachowski'),
('Avatar', 2009, 'Adventure', 'James Cameron'),
('The Dark Knight', 2008, 'Action', 'Christopher Nolan'),
('Avengers: Endgame', 2019, 'Action', 'Anthony Russo'),
('The Shawshank Redemption', 1994, 'Drama', 'Frank Darabont'),
('Forrest Gump', 1994, 'Drama', 'Robert Zemeckis'),
('Interstellar', 2014, 'Sci-Fi', 'Christopher Nolan'),
('Joker', 2019, 'Drama', 'Todd Phillips'),
('Parasite', 2019, 'Thriller', 'Bong Joon Ho'),
('Gladiator', 2000, 'Action', 'Ridley Scott'),
('Frozen', 2013, 'Animation', 'Chris Buck'),
('The Lion King', 1994, 'Animation', 'Roger Allers'),
('Doctor Strange', 2016, 'Action', 'Scott Derrickson'),
('The Godfather', 1972, 'Crime', 'Francis Coppola'),
('Spider-Man: No Way Home', 2021, 'Action', 'Jon Watts'),
('Dune', 2021, 'Sci-Fi', 'Denis Villeneuve'),
('Oppenheimer', 2023, 'Biography', 'Christopher Nolan');

-- INSERT INTO Ratings (user_id, movie_id, rating_value, rating_date) VALUES (...
CREATE TABLE Ratings
(user_id INT not null,
movie_id INT not null,
rating_value INT not null,
rating_date VARCHAR (50) not null);

INSERT INTO Ratings VALUES
(1, 1, 4.5, '2024-06-01'),
(1, 3, 4.2, '2024-06-02'),
(2, 2, 5.0, '2024-06-03'),
(2, 5, 4.6, '2024-06-04'),
(3, 4, 4.0, '2024-06-05'),
(3, 6, 4.3, '2024-06-06'),
(4, 2, 4.8, '2024-06-07'),
(4, 8, 4.9, '2024-06-08'),
(5, 1, 3.9, '2024-06-09'),
(5, 7, 4.7, '2024-06-10'),
(6, 9, 4.2, '2024-06-11'),
(6, 10, 4.5, '2024-06-12'),
(7, 5, 4.6, '2024-06-13'),
(7, 12, 4.3, '2024-06-14'),
(8, 11, 3.8, '2024-06-15'),
(8, 14, 4.1, '2024-06-16'),
(9, 13, 4.7, '2024-06-17'),
(9, 15, 4.9, '2024-06-18'),
(10, 3, 3.6, '2024-06-19'),
(10, 17, 4.4, '2024-06-20'),
(11, 16, 4.8, '2024-06-21'),
(11, 19, 4.9, '2024-06-22'),
(12, 18, 4.5, '2024-06-23'),
(12, 20, 4.7, '2024-06-24'),
(13, 7, 4.2, '2024-06-25'),
(13, 10, 4.4, '2024-06-26'),
(14, 9, 3.7, '2024-06-27'),
(14, 2, 4.5, '2024-06-28'),
(15, 8, 4.1, '2024-06-29'),
(15, 6, 4.0, '2024-06-30'),
(16, 4, 4.3, '2024-07-01'),
(16, 19, 4.6, '2024-07-02'),
(17, 11, 4.7, '2024-07-03'),
(17, 13, 4.8, '2024-07-04'),
(18, 1, 3.5, '2024-07-05'),
(18, 14, 4.2, '2024-07-06'),
(19, 15, 4.0, '2024-07-07'),
(19, 18, 4.3, '2024-07-08'),
(20, 5, 4.9, '2024-07-09'),
(20, 9, 4.6, '2024-07-10'),
(1, 7, 4.3, '2024-07-11'),
(2, 8, 4.5, '2024-07-12'),
(3, 10, 4.1, '2024-07-13'),
(4, 12, 4.8, '2024-07-14'),
(5, 13, 4.6, '2024-07-15'),
(6, 14, 3.9, '2024-07-16'),
(7, 16, 4.5, '2024-07-17'),
(8, 17, 4.7, '2024-07-18'),
(9, 19, 4.8, '2024-07-19'),
(10, 20, 4.9, '2024-07-20'),
(11, 15, 4.1, '2024-07-21'),
(12, 11, 4.3, '2024-07-22'),
(13, 9, 4.5, '2024-07-23'),
(14, 6, 4.2, '2024-07-24'),
(15, 5, 4.4, '2024-07-25'),
(16, 8, 4.7, '2024-07-26'),
(17, 2, 4.6, '2024-07-27'),
(18, 4, 4.1, '2024-07-28'),
(19, 7, 4.3, '2024-07-29'),
(20, 10, 4.9, '2024-07-30');
SELECT * FROM Ratings;

desc Ratings;
describe Users;
desc Movies;
-- list all movies
SELECT title FROM Movies;
SHOW TABLES;
-- VIEW ALL USERS
SELECT * FROM Users;

-- view all ratings
SELECT * FROM ratings;
-- find movies rated by a specific user
SELECT rating_value From ratings WHERE user_id = 1;
SELECT DISTINCT rating_value From ratings;

-- PHASE 3 USING COMPARISON & LOGIC OPERATORS
-- Find users older than 25
SELECT * FROM users where Age > 25;
-- movies  released between 2000 and 2020
SELECT *FROM movies WHERE Release_year BETWEEN 2000 AND 2020;
-- female users from Abuja
SELECT *from Users WHERE Gender = 'Female' AND Location = 'Abuja';
-- find movies that are not SCIFI
SELECT * From movies WHERE Genre != 'Sci-Fi';
-- Find rating greater than or equal to 4
SELECT * FROM ratings WHERE rating_value >= 4;

-- PHASE 4
-- 1. Sort movies by release year (newest first)
SELECT * FROM movies ORDER BY release_year desc;
-- 2. List distinct genres
SELECT DISTINCT Genre FROM movies;
-- . Top 3 highest ratings
SELECT rating_value FROM ratings ORDER BY rating_value DESC LIMIT 3;
-- Skip the first 2 rows and display next 3
SELECT * FROM movies LIMIT 2,3;
SELECT * FROM movies OFFSET  LIMIT 2,3;
SELECT * FROM movies;

-- 5. Sort users alphabetically
SELECT * FROM Users ORDER BY Name ASC;





