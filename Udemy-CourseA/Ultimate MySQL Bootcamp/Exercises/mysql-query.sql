show databases;
use books;
show tables;
select * from books_store;

select title from books_store limit 10;

select title, stock_quantity 
from books_store
order by released_year limit 0,18446744073709551615;

select title, author_fname from books_store where author_fname like "%da%";

select title, author_fname, stock_quantity
from books_store
where stock_quantity like "__";

select title, author_fname
from books_store
WHERE title like "____";

select title from books_store
where title like "%stories%";

select title, max(pages) as pages from books_store
where title like "%";

select title, author_lname from books_store
where author_lname like "% %";

select title, released_year, stock_quantity from books_store
where stock_quantity like "__"
order by stock_quantity asc  limit 3