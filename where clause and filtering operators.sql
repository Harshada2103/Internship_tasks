-- Using database and table created in task-1 by just adding some more entries in it

-- part A
use company_db;

alter table employees
rename column name to employee_name;

insert into employees
(employee_id, employee_name, department, salary, city, joining_date, email, status)
values
(107, 'Raj Shah', 'IT', 68000, 'Nashik', '2025-09-18', null, 'Active'),
(108, 'Pooja Patil', 'HR', 30000, 'Pune', '2024-11-25', 'pooja.patil@gmail.com', 'Inactive'),
(109, 'Sagar Kulkarni', 'Sales', 45000, 'Mumbai', '2025-12-05', null, 'Active'),
(110, 'Neha Sharma', 'Testing', 39000, 'Mumbai', '2026-02-14', 'neha.sharma@gmail.com', 'Active'),
(111, 'Akash More', 'IT', 75000, 'Pune', '2023-07-10', 'akash.more@gmail.com', 'Active'),
(112, 'Riya Joshi', 'HR', 36000, 'Nashik', '2025-07-22', null, 'Active'),
(113, 'Sameer Patil', 'Sales', 62000, 'Pune', '2026-03-01', 'sameer.patil@gmail.com', 'Active'),
(114, 'Ramesh Deshmukh', 'Support', 28000, 'Nagpur', '2024-05-16', null, 'Inactive'),
(115, 'Kavita More', 'Finance', 58000, 'Mumbai', '2025-03-12', 'kavita.more@gmail.com', 'Active'),
(116, 'Sonia Shah', 'IT', 47000, 'Pune', '2026-04-05', null, 'Active'),
(117, 'Ravi Sharma', 'Testing', 33000, 'Nashik', '2025-10-11', 'ravi.sharma@gmail.com', 'Inactive'),
(118, 'Meena Patil', 'HR', 41000, 'Mumbai', '2026-01-25', 'meena.patil@gmail.com', 'Active'),
(119, 'Sachin Joshi', 'Sales', 70000, 'Pune', '2024-12-20', null, 'Active'),
(120, 'Snehal More', 'IT', 50000, 'Nagpur', '2025-05-08', 'snehal.more@gmail.com', 'Active'),
(121, 'Rohit Kulkarni', 'Support', 31000, 'Nashik', '2024-09-14', null, 'Inactive'),
(122, 'Swati Sharma', 'Finance', 65000, 'Pune', '2026-02-20', 'swati.sharma@gmail.com', 'Active'),
(123, 'Suresh Patil', 'Sales', 43000, 'Mumbai', '2025-08-17', null, 'Active'),
(124, 'Rekha Joshi', 'HR', 34000, 'Pune', '2024-06-30', 'rekha.joshi@gmail.com', 'Inactive'),
(125, 'Rakesh More', 'IT', 90000, 'Mumbai', '2026-05-10', 'rakesh.more@gmail.com', 'Active'),
(126, 'Arjun Sharma', 'IT', 46000, 'Pune', '2025-01-20', 'arjun.sharma@gmail.com', 'Active'),
(127, 'Simran Patil', 'Sales', 54000, 'Nashik', '2025-11-15', null, 'Active'),
(128, 'Ritesh Joshi', 'Testing', 37000, 'Mumbai', '2024-10-05', 'ritesh.joshi@gmail.com', 'Inactive'),
(129, 'Kiran More', 'HR', 40000, 'Pune', '2026-06-12', null, 'Active'),
(130, 'Sanjay Kulkarni', 'Finance', 59000, 'Nagpur', '2025-03-25', 'sanjay.kulkarni@gmail.com', 'Active');

select * from employees;

-- part B
select * from employees where city = 'Pune';

select * from employees where city = 'Mumbai';

select * from employees where department = 'IT';

select * from employees where department = 'HR';

select * from employees where department = 'Sales';

select * from employees where status = 'Active';

select * from employees where status = 'Inactive';

select * from employees where employee_id = 103;

select * from employees where employee_name = 'Priya Sharma';

select * from employees where salary = 35000;

select * from employees where city != 'Pune';

select * from employees where department <> 'Testing';

-- part C
select * from employees where salary > 40000;

select * from employees where salary < 35000;

select * from employees where salary >= 50000;

select * from employees where salary <= 30000;

select * from employees where joining_date > '2025-01-01';

select * from employees where joining_date <= '2024-12-31';

select * from employees where employee_id > 110;

select employee_name, joining_date from employees where joining_date >= '2026-01-01';

-- part D
select * from employees where city = 'Pune' and status = 'Active';

select * from employees where department = 'IT' and salary > 50000;

select * from employees where city = 'Mumbai' and status = 'Inactive';

select * from employees where department = 'Sales' and city = 'Pune' and salary >= 42000;

select * from employees where department = 'HR' and joining_date > '2025-06-01';

select * from employees where status = 'Active' and salary >= 40000 and salary <= 70000;

select * from employees where city = 'Mumbai' and department = 'Testing' and salary > 38000;

select * from employees where status = 'Active' and joining_date >= '2026-01-01' and salary > 45000;

-- part E
select * from employees where city = 'Pune' or city = 'Mumbai';

select * from employees where department = 'IT' or department = 'HR';

select * from employees where salary < 32000 or salary > 60000;

select * from employees where city = 'Nashik' or salary > 55000;

select * from employees where not department = 'HR';

select * from employees where not status = 'Inactive';

select * from employees where (city = 'Pune' or city = 'Mumbai') and status = 'Active';

select * from employees where city != 'Pune' and salary > 40000;

-- part F
select * from employees where salary between 35000 and 55000;

select * from employees where salary not between 40000 and 65000;

select * from employees where joining_date between '2025-01-01' and '2025-12-31';

select * from employees where employee_id between 105 and 115;

select * from employees where department in ('IT', 'HR', 'Sales');

select * from employees where city in ('Pune', 'Mumbai', 'Nagpur');

select * from employees where department not in ('Testing', 'Support');

select * from employees where city not in ('Mumbai', 'Nashik');

select * from employees where employee_id in (101, 105, 110, 115, 120);

select * from employees where department in ('IT', 'Sales') and salary between 45000 and 75000;

-- part G
select * from employees where employee_name like 'A%';

select * from employees where employee_name like 'R%';

select * from employees where employee_name like '%a';

select * from employees where employee_name like '%sh%';

select * from employees where employee_name like 'P%a';

select * from employees where employee_name like '_____';

select * from employees where employee_name like '_a%';

select * from employees where employee_name not like 'R%';

-- part H
select * from employees where email is null;

select * from employees where email is not null;

select * from employees where city = 'Pune' and email is null;

select * from employees where status = 'Active' and email is not null and salary > 40000;

-- part I
select * from employees
where status = 'Active'
and city in ('Pune', 'Mumbai')
and department in ('IT', 'Sales')
and salary between 40000 and 70000
and joining_date > '2025-01-01';

select * from employees
where (employee_name like 'S%' or employee_name like 'R%')
and email is not null
and status = 'Active'
and city in ('Pune', 'Nashik');