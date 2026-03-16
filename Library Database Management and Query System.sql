show databases;
use library_db;
show tables;
select * from books;
-- View all books
-- Show all registered members
select * from members;
-- Find all loans made on a specific date
select * from loan where loan_date = "10/01/2023";
-- Display all books with more than 3 available copies
select * from books where available_copies >= 3;

-- Phase 4: Applying Comparison and Logical Operators 
-- Books published after 2015:
select * from books where publication_year > "2015";


-- Members who joined before 2022
select * from members where join_date <"01/01/2022";
-- Books that are either Fiction or Mystery
select * from books where book_category in ("Fiction" , "Mystery");
-- Loans that have not been returned
Select * from loan where return_date is null;
-- Members who joined after 2020 and have borrowed books (bonus)

SELECT DISTINCT m.*
FROM   members m
JOIN   loan l ON m.member_id = l.member_id
WHERE  m.join_date > "31/12/2020";

-- Sort all books alphabetically by title
select * from books order by title ASC;
-- List distinct book genres
select distinct genre from books;
select distinct genre from books order by genre ASC;

-- Get top 5 most recent members
select * from members order by join_date desc limit 5;

-- Skip the first 5 books and display the next 5
select * from books order by book_id ASC LIMIT 5 offset 5;
-- Show the 10 most recent loans not yet returned
Select * from loan where return_date is null order by loan_date desc limit 10;


