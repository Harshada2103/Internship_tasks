-- part A
create database ecommerce_db;
use ecommerce_db;

create table products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    brand varchar(50),
    price decimal(10,2),
    quantity int,
    city varchar(50),
    status varchar(20)
);

desc products;
show tables;

-- part B
insert into products
(product_id, product_name, category, brand, price, quantity, city, status)
values
(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000.00, 15, 'Pune', 'Available'),
(202, 'iPhone 15', 'Mobile', 'Apple', 65000.00, 8, 'Mumbai', 'Available'),
(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000.00, 20, 'Pune', 'Available'),
(204, 'Inspiron 15', 'Laptop', 'Dell', 58000.00, 6, 'Nashik', 'Available'),
(205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000.00, 12, 'Mumbai', 'Available'),
(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000.00, 4, 'Pune', 'Out of Stock'),
(207, 'Apple Watch SE', 'Watch', 'Apple', 30000.00, 10, 'Mumbai', 'Available'),
(208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000.00, 18, 'Pune', 'Available'),
(209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000.00, 5, 'Nashik', 'Available'),
(210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000.00, 25, 'Mumbai', 'Available');

-- part C
select * from products;

select product_name from products;

select product_name, price from products;

select product_name, category, brand, price from products;

select * from products where city = 'Pune';

select * from products where city = 'Mumbai';

select * from products where category = 'Mobile';

select * from products where category = 'Laptop';

select * from products where price > 30000;

select * from products where price < 30000;

select * from products where price = 35000;

select * from products where price >= 45000;

select * from products where price <= 30000;

select * from products where quantity > 10;

select * from products where quantity < 10;

-- part D
select * from products
where city = 'Pune' and category = 'Mobile';

select * from products
where city = 'Mumbai' and status = 'Available';

select * from products
where price > 30000 and quantity > 5;

select * from products
where price >= 30000 and price <= 60000;

select * from products
where city = 'Pune' or city = 'Mumbai';

select * from products
where category = 'Mobile' or category = 'Laptop';

select * from products
where quantity < 10 or price > 50000;

select * from products
where category = 'Mobile' and price > 30000;

select * from products
where brand = 'Samsung' or brand = 'Apple';

select * from products
where city = 'Pune' and status = 'Available' and quantity > 10;

-- part E
select * from products
where price between 25000 and 50000;

select * from products
where quantity between 5 and 15;

select * from products
where category in ('Mobile', 'Laptop', 'Tablet');

select * from products
where city in ('Pune', 'Mumbai');

select * from products
where brand not in ('Samsung');

select * from products
where status not in ('Out of Stock');

select * from products
where price != 30000;

select * from products
where product_name like 'Galaxy%';

select * from products
where product_name like '%Pad%';

select * from products
where category = 'Mobile'
and (price > 30000 or quantity > 15);

-- part F
update products
set price = 34000
where product_name = 'Galaxy M55';

update products
set quantity = 12
where product_name = 'iPhone 15';

update products
set status = 'Available'
where product_name = 'Galaxy Watch 6';

update products
set price = price + 2000
where category = 'Mobile';

update products
set quantity = quantity + 5
where city = 'Pune';

update products
set status = 'Out of Stock'
where quantity < 5;

-- part G
delete from products
where product_id = 210;

delete from products
where price < 8000;

delete from products
where status = 'Out of Stock'
and quantity < 5;

delete from products
where category = 'Tablet'
and price > 30000;