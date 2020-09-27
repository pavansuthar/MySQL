show databases;
-- create database books;
use books;
show tables;
desc books_store;
select * from books_store;

-- CASE STATEMENTS
select title, released_year,
case 
when released_year >= 2000 then 'Modern lit'
else '20th century lit'
end as Genre
from books_store;

select title, stock_quantity,
case 
when stock_quantity between 0 AND 50 then '*'
when stock_quantity between 50 AND 100 then '**'
else '***'
end as Stock
from books_store;