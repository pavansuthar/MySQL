show databases;
USE BOOKS;
select * from books_store;

select count(*) from books_store;
select count(distinct author_lname, author_fname) from books_store;

select title 
from books_store
where title like "%the%";

select count(*) 
from books_store
where title like "%the%";

select author_lname, count(*) 
from books_store
group by author_lname;


select released_year, count(*)
from books_store
group by released_year;

select concat("In ", released_year ," " , count(*) , " " , "book(s) released" ) as BooksPerYear from books_store
group by released_year;

select min(pages) from books_store;

select * from books_store
where pages = (select max(pages) from books_store);

select * from books_store
order by pages desc limit 1;

select author_fname, author_lname, max(pages) as Longestbook
from books_store
group by author_lname, author_fname
order by author_lname, author_fname asc;