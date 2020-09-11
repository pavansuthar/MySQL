create database shirts_db;
create table shirts (
	shirt_id int auto_increment not null primary key,
    article varchar(50) not null,
    color varchar(50),
    shirt_size varchar(10),
    last_worn int
);
desc shirts;

insert into shirts(article, color, shirt_size, last_worn) 
values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- getting all data
select * from shirts;

-- adding new shirt
insert into shirts(article, color, shirt_size, last_worn)
values('polo shirt', 'purple', 'M', 50);

-- Print Out Article and Color
select article, color from shirts;

-- Print out all medium shirts except ID
select article, color, shirt_size, last_worn from shirts
where shirt_size = 'M';

-- update polo shirts size
-- select * from shirts
update shirts set shirt_size = 'L'
where article = 'polo shirt';

-- update last_worn shirt
update shirts set last_worn = 0
where last_worn = 15;

-- update all white shirts
update shirts set shirt_size = 'XS', color = 'off white'
where color = 'white';

-- delete old shirts/top shirts
select * from shirts where article = 'tank top';
delete from shirts 
where article = 'tank top';

-- delete all shirts
delete from shirts;

drop table shirts;
show tables;
 
DESC shirts;