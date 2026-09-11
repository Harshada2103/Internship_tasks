-- part A
create database banking_db;
use banking_db;
create table accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
	customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);

desc accounts;
show tables;

-- part B
insert into accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
values
(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15'),
(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20'),
(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10'),
(1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05'),
(1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18'),
(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');

-- part C
select * from accounts;

select customer_name, account_number from accounts;

select customer_name, account_type, balance, status from accounts;

select * from accounts
where account_type = 'Savings';

select * from accounts
where city = 'Pune';

select * from accounts
where balance > 50000;

select * from accounts
where balance <= 50000;

select * from accounts
where balance between 50000 and 200000;

select * from accounts
where credit_score >= 750;

select * from accounts
where status = 'Active';

select * from accounts
where status = 'Dormant' or status = 'Closed';

select * from accounts
where city = 'Pune' and status = 'Active';

select * from accounts
where city = 'Mumbai' or city = 'Nashik';

select * from accounts
where account_type = 'Savings' or account_type = 'Salary';

select * from accounts
where balance not between 25000 and 100000;

select * from accounts
where customer_name like 'A%';

select * from accounts
where customer_name like '%a';

select * from accounts
where branch like '%Road%';

select * from accounts
order by balance desc
limit 3;

select * from accounts
limit 5;

select * from accounts
limit 3, 3;

select * from accounts
where account_type = 'Savings'
and city = 'Pune'
and status = 'Active'
and balance > 50000;

select * from accounts
where city in ('Pune', 'Mumbai', 'Nashik')
and credit_score >= 750;

select * from accounts
where balance > 100000
and credit_score >= 800;

select * from accounts
where balance between 50000 and 150000
or credit_score > 800;

select * from accounts
where status = 'Active'
and account_type != 'Current';

select * from accounts
where customer_name like '%ar%';

-- part D
update accounts
set balance = 95000
where customer_name = 'Aarav Sharma';

update accounts
set status = 'Active'
where customer_name = 'Vikram Deshmukh';

update accounts
set credit_score = 755
where customer_name = 'Rohan Joshi';

update accounts
set branch = 'College Road'
where customer_name = 'Sneha Kulkarni';

update accounts
set account_type = 'Premium Current'
where customer_name = 'Priya Patil';

update accounts
set balance = balance + 25000
where account_id = 1006;

update accounts
set balance = balance + 5000
where account_type = 'Savings';

update accounts
set city = 'Pune City'
where city = 'Pune';

update accounts
set credit_score = credit_score + 10
where status = 'Active'
and credit_score < 750;

update accounts
set status = 'Dormant'
where balance < 20000;

-- part E
delete from accounts
where account_id = 1005;

delete from accounts
where account_number = 'ACC10004';

delete from accounts
where status = 'Closed';

delete from accounts
where balance < 10000
or credit_score < 600;

delete from accounts
where city = 'Pune'
and status = 'Dormant';

-- part F
alter table accounts
add column email varchar(100);

alter table accounts
add column mobile varchar(15);

alter table accounts
modify column branch varchar(100);

alter table accounts
rename column customer_name to name;

alter table accounts
drop column mobile;

-- part G
alter table accounts
add column account_category varchar(30);
update accounts
set account_category = 'Regular'
where account_id = 1001;
update accounts
set account_category = 'Premium'
where account_id = 1002;
rename table accounts to bank_accounts;

desc bank_accounts;
truncate table bank_accounts;
drop table bank_accounts;
