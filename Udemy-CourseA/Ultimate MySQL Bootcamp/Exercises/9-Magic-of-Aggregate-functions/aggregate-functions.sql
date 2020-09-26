-- count
show databases;
use books;
show tables;
select * from books_store;

SELECT COUNT(*) FROM books_store; 
SELECT COUNT(author_fname) FROM books_store; 
SELECT COUNT(DISTINCT author_fname) FROM books_store; 
SELECT COUNT(DISTINCT author_lname) FROM books_store; 
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books_store; 
SELECT title FROM books_store WHERE title LIKE '%the%'; 
SELECT COUNT(*) FROM books_store WHERE title LIKE '%the%';

-- groupby
show databases;
use books;
show tables;
select * from books_store;

SELECT title, author_lname FROM books_store; 
SELECT title, author_lname FROM books_store GROUP BY author_lname; 
SELECT author_lname, COUNT(*) FROM books_store GROUP BY author_lname; 
SELECT title, author_fname, author_lname FROM books_store; 
SELECT title, author_fname, author_lname FROM books_store GROUP BY author_lname; 
SELECT author_fname, author_lname, COUNT(*) FROM books_store GROUP BY author_lname; 
SELECT author_fname, author_lname, COUNT(*) FROM books_store GROUP BY author_lname, author_fname; 
SELECT released_year FROM books_store; 
SELECT released_year, COUNT(*) FROM books_store GROUP BY released_year; 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books_store GROUP BY released_year;

-- min/max
show databases;
use books;
show tables;
select * from books_store;

SELECT MIN(released_year) FROM books_store; 
SELECT MIN(released_year) FROM books_store; 
SELECT MIN(pages) FROM books_store; 
SELECT MAX(pages) FROM books_store; 
SELECT MAX(released_year) FROM books_store; 
SELECT MAX(pages), titleFROM books_store;

-- sub query
SELECT * FROM books_store 
WHERE pages = (SELECT Min(pages) 
                FROM books_store); 
 
SELECT title, pages FROM books_store 
WHERE pages = (SELECT Max(pages) 
                FROM books_store); 
 
SELECT title, pages FROM books_store 
WHERE pages = (SELECT Min(pages) 
                FROM books_store); 
 
SELECT * FROM books_store 
ORDER BY pages ASC LIMIT 1;
 
SELECT title, pages FROM books_store 
ORDER BY pages ASC LIMIT 1;
 
SELECT * FROM books_store 
ORDER BY pages DESC LIMIT 1;

-- min/max with groupby
SELECT author_fname, 
       author_lname, 
       Min(released_year) 
FROM   books_store 
GROUP  BY author_lname, 
          author_fname;
 
SELECT
  author_fname,
  author_lname,
  Max(pages)
FROM books_store
GROUP BY author_lname,
         author_fname;
 
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books_store
GROUP BY author_lname,
         author_fname;
         
-- sum
SELECT SUM(pages) FROM books_store;
SELECT SUM(released_year) FROM books_store;
 
SELECT author_fname, author_lname, Sum(pages) FROM books_store
GROUP BY author_lname, author_fname;
 
SELECT author_fname,
       author_lname,
       Sum(released_year)
FROM books_store
GROUP BY
    author_lname,
    author_fname;
    
-- avg
SELECT AVG(released_year) 
FROM books;
 
SELECT AVG(pages) 
FROM books;
 
SELECT AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
 
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;