-- char = string of fixed length - abbr, flags y/n etc (varchar)
show databases;
use dogapp;
show tables;

CREATE TABLE dogs (
    name CHAR(5),
    breed VARCHAR(10)
); 
INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle'), ('robby', 'corgi');

-- Error Code: 1406. Data too long for column 'name' at row 1	0.000 sec
-- INSERT INTO dogs (name, breed) values ('Princess Jane', 'Retriever');

SELECT 
    *
FROM
    dogs;
-- Error Code: 1406. Data too long for column 'name' at row 1	0.000 sec
-- INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');

SELECT 
    *
FROM
    items;
CREATE TABLE items (
    price DECIMAL(5 , 2 )
);
 
INSERT INTO items(price) VALUES(7);

-- Error Code: 1264. Out of range value for column 'price' at row 1
-- INSERT INTO items(price) VALUES(7987654);
 
INSERT INTO items(price) VALUES(34.88);

-- 1 row(s) affected, 1 warning(s): Error Code: 1265 Data truncated for column 'price' at row 1
INSERT INTO items(price) VALUES(298.9999);
INSERT INTO items(price) VALUES(1.9999);
 
-- float ~7 digits & double ~15 digits (store large numbers using less space @ cost of precision, so use double)
SELECT 
    *
FROM
    thingies;
CREATE TABLE thingies (
    price FLOAT
);
INSERT INTO thingies(price) VALUES(88.45);
INSERT INTO thingies(price) VALUES(8877.45);
INSERT INTO thingies(price) VALUES(8877665544.45);

-- date yyyy-mm-dd & time & dateTime yyyy-mm-dd hh:mm:ss
SELECT 
    *
FROM
    people;
SELECT NOW();
CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthday DATETIME
);
insert into people (name, birthdate, birthtime, birthday)
values ('Toaster', current_date(), current_time(), now());

SELECT 
    name,
    birthday,
    DAY(birthday) AS day,
    DAYNAME(birthday) AS dayname,
    DAYOFMONTH(birthday) AS month,
    DAYOFWEEK(birthday) AS week,
    DAYOFYEAR(birthday) AS year,
    DATE_FORMAT(birthday, '%W/%M/%Y') AS format,
    DATEDIFF(NOW(), birthdate) AS Diff,
    DATE_ADD(birthday, INTERVAL 3 QUARTER) AS DateAdd
FROM
    people;
    
-- timestamps
SELECT 
    *
FROM
    comments2;
CREATE TABLE comments2 (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);
insert into comments2 (content)
values('what a funny post comments 2');

UPDATE comments2 
SET 
    content = 'its not a funny post'
WHERE
    content = 'what a funny post comments 2'