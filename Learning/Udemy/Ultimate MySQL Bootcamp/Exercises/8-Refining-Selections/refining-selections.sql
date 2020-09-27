show databases;
use books;
show tables;

INSERT INTO books_store
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
SELECT 
    title
FROM
    books_store;
    
-- DISTINCT
SELECT author_lname FROM books_store; 
SELECT DISTINCT author_lname FROM books_store; 
SELECT author_fname, author_lname FROM books_store; 
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books_store; 
SELECT DISTINCT author_fname, author_lname FROM books_store;

-- ORDER BY
SELECT author_lname FROM books_store;
SELECT author_lname FROM books_store ORDER BY author_lname; 
SELECT title FROM books_store; 
SELECT title FROM books_store ORDER BY title;
SELECT author_lname FROM books_store ORDER BY author_lname DESC; 
SELECT released_year FROM books_store; 
SELECT released_year FROM books_store ORDER BY released_year; 
SELECT released_year FROM books_store ORDER BY released_year DESC; 
SELECT released_year FROM books_store ORDER BY released_year ASC; 
SELECT title, released_year, pages FROM books_store ORDER BY released_year; 
SELECT title, pages FROM books_store ORDER BY released_year; 
SELECT title, author_fname, author_lname 
FROM books_store ORDER BY 2; 
SELECT title, author_fname, author_lname 
FROM books_store ORDER BY 3; 
SELECT title, author_fname, author_lname 
FROM books_store ORDER BY 1; 
SELECT title, author_fname, author_lname 
FROM books_store ORDER BY 1 DESC; 
SELECT author_lname, title
FROM books_store ORDER BY 2; 
SELECT author_fname, author_lname FROM books_store 
ORDER BY author_lname, author_fname;

-- LIMIT
SELECT title FROM books_store LIMIT 3;
 
SELECT title FROM books_store LIMIT 1;
 
SELECT title FROM books_store LIMIT 10;
 
SELECT * FROM books_store LIMIT 1;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 5;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 1;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 14;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 0,5;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 0,3;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 1,3;
 
SELECT title, released_year FROM books_store 
ORDER BY released_year DESC LIMIT 10,1;
 
SELECT * FROM tbl LIMIT 95,18446744073709551615;
 
SELECT title FROM books_store LIMIT 5;
 
SELECT title FROM books_store LIMIT 5, 123219476457;
 
SELECT title FROM books_store LIMIT 5, 50;

-- BETTER SEARCH LIKE
SELECT title, author_fname FROM books_store WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname FROM books_store WHERE author_fname LIKE 'da%';
 
SELECT title FROM books_store WHERE  title LIKE 'the';
 
SELECT title FROM books_store WHERE  title LIKE '%the';
 
SELECT title FROM books_store WHERE title LIKE '%the%';

-- WILD CARDS

SELECT title, stock_quantity FROM books_store;
 
SELECT title, stock_quantity FROM books_store WHERE stock_quantity LIKE '____';
 
SELECT title, stock_quantity FROM books_store WHERE stock_quantity LIKE '__';
 
SELECT title FROM books_store;
 
SELECT title FROM books_store WHERE title LIKE '%\%%';
 
SELECT title FROM books_store WHERE title LIKE '%\_%';