show databases;
-- create database books;
use books;
show tables;
desc books_store;
select * from books_store;

select concat(author_fname, ' ' , author_lname) as full_name from books_store;
select author_fname as firstName, author_lname as lastName, concat(author_fname, ' ', author_lname) as Full_Name
from books_store;
select author_fname as firstName, author_lname as lastName, concat_ws(' - ', author_fname, author_lname) as Full_Name
from books_store;
select substring(replace('Hello world', 'Hello', '!@#$'), 1, 3);
select substring(title, 1, 9) as short_titles from books_store;
select REVERSE(concat(substring(replace(title, 'e', 'E'), 1, 9), '...')) as short_titles from books_store;
select replace(title, 'e', 'E') as E_Letter from books_store;

use cat_app;
show tables;
select * from books;

select upper(reverse("Why does my cat look at me with such hatred?")) as column_name;
select replace(concat('I', ' ', 'like', ' ', 'cats'), ' ' , '- ') as column_name;
select replace(title, ' ', '->') as new_title from books;
select author_lname as forwards, reverse(author_lname) as bakward from books;
select upper(concat(author_fname, ' ' ,author_lname)) as  full_name from books;
select concat(title, "was released in ", released_year, " by ", concat(author_fname, ' ' ,author_lname)) as Blurb from books;
select concat(substring(title, 1, 4), "...") as short_title, concat(author_lname, ",", author_fname) as author, concat(stock_quantity, " in stock") as quantity from books;





