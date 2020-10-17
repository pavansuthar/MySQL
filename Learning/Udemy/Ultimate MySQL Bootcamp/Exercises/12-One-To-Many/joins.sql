-- JOINS
select * from customers where last_name = 'George';
select * from orders where customer_id = 1;
-- sub query?
select * from orders where customer_id = (
	select id from customers where last_name = 'George'
);
-- do with joins
-- implicit cross joins
select * from customers, orders;

-- implicit inner join
select first_name, last_name, order_date, amount from customers, orders
where customers.id = orders.customer_id;

-- explicit inner join
select first_name, last_name, order_date, amount from customers
inner join orders
on customers.id = orders.customer_id;

-- left join
select first_name, last_name, order_date, ifnull(sum(amount), 0) as Total_Amount from customers
left join orders
on customers.id = orders.customer_id
group by customers.id;

-- right join
select * from customers
right join orders
on customers.id = orders.customer_id
