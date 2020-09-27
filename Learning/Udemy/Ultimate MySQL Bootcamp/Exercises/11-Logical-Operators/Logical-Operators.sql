show databases;
-- create database books;
use books;
show tables;
desc books_store;
select * from books_store;

-- !=
select title, released_year from books_store
where released_year != 2017;

SELECT title FROM books_store WHERE released_year = 2017; 
SELECT title FROM books_store WHERE released_year != 2017; 
SELECT title, author_lname FROM books_store; 
SELECT title, author_lname FROM books_store WHERE author_lname = 'Harris'; 
SELECT title, author_lname FROM books_store WHERE author_lname != 'Harris';

-- NOT LIKE
select title from books_store where title not like "W%";

SELECT title FROM books_store WHERE title LIKE 'W'; 
SELECT title FROM books_store WHERE title LIKE 'W%'; 
SELECT title FROM books_store WHERE title LIKE '%W%'; 
SELECT title FROM books_store WHERE title LIKE 'W%'; 
SELECT title FROM books_store WHERE title NOT LIKE 'W%';

-- >= greater than/equal to | -- <= less than/equal to
SELECT title, released_year FROM books_store ORDER BY released_year;
 
SELECT title, released_year FROM books_store 
WHERE released_year > 2000 ORDER BY released_year;

SELECT title, released_year FROM books_store 
WHERE released_year <= 2000 ORDER BY released_year;

SELECT title, released_year FROM books_store 
WHERE released_year >= 2000 ORDER BY released_year;
 
SELECT title, stock_quantity FROM books_store;
 
SELECT title, stock_quantity FROM books_store WHERE stock_quantity >= 100;
SELECT 99 > 1; 
SELECT 99 > 567;
SELECT 3 < -10;
SELECT -10 < -9;
SELECT 42 <= 42;
SELECT 'h' < 'p';
SELECT 'Q' <= 'q';

-- And - OR - COMBINE
SELECT title, released_year FROM books_store 
WHERE released_year >= 2010 AND author_lname = 'Eggers' ORDER BY released_year;

SELECT title, author_lname, released_year FROM books_store
WHERE author_lname='Eggers';
 
SELECT title, author_lname, released_year FROM books_store
WHERE released_year > 2010;
 
SELECT  
    title, 
    author_lname, 
    released_year FROM books_store
WHERE author_lname='Eggers' 
    OR released_year > 2010;
 
SELECT 1 < 5 && 7 = 9;
SELECT -10 > -20 && 0 <= 0;
SELECT -40 <= 0 AND 10 > 40;
SELECT 54 <= 54 && 'a' = 'A';
 
SELECT * 
FROM books_store
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';

-- BETWEEN / NOT BETWEEN
SELECT * 
FROM books_store
WHERE released_year not between 2004 AND 2015
order by released_year;

SELECT title, released_year FROM books_store WHERE released_year >= 2004 && released_year <= 2015; 
SELECT title, released_year FROM books_store 
WHERE released_year BETWEEN 2004 AND 2015; 
SELECT title, released_year FROM books_store 
WHERE released_year NOT BETWEEN 2004 AND 2015; 
SELECT CAST('2017-05-02' AS DATETIME); 
show databases;
use new_testing_db; 
SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';
SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);
 
-- in / not in
select title, author_fname, author_lname from books_store
where author_lname in ('Carver', 'Lahiri', 'Smith')
show databases();
use book_shop;
 
SELECT 
    title, 
    author_lname 
FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';
 
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
 
SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);
 
SELECT title, released_year FROM books
WHERE released_year != 2000 AND
      released_year != 2002 AND
      released_year != 2004 AND
      released_year != 2006 AND
      released_year != 2008 AND
      released_year != 2010 AND
      released_year != 2012 AND
      released_year != 2014 AND
      released_year != 2016;
 
SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);
 
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);
 
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0;
 
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0 ORDER BY released_year;