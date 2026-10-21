create database imcc;
use imcc;
create table orders (
   order_id INT primary key,
   customer_name varchar(10),
   status varchar(20)
);
desc orders;
set autocommit = 0;
Insert into orders Values(101, 'Geet', 'Pending');
Insert into orders values(102, 'Bob', 'Pending');
Savepoint sp1;
select * from orders;
-- update one order
Update orders set customer_name = 'Raj' where order_id = 101;
rollback to savepoint sp1;

Update orders set status = "Complete" where order_id = 102;

-- 15-10-2026--
create table customer1 (custID int primary key, cust_name varchar(10), city varchar(10), product varchar(10), Price int);
desc customer1;
insert into customer1 values( 01, 'Viraj','Pune','book',30);
insert into customer1 values( 02, 'Ayush','MUmbai','pen',20);
insert into customer1 values( 03, 'gandhi','Pune','pen',50);

select custID, cust_name, city from Customer1;
select * from Customer1 where custID = 03;
select * from Customer1 where custID = 01 or custID = 03;
-- create clone of the table 
create table CloneTable as select * from Customer1;
select * from CloneTable;
drop table CloneTable;

select cust_name, product, price from customer1 where price > 30;
select cust_name from customer1 where city = "pune";
select max(price) from customer1;
-- sorting data order by multiple columns
select * from customer1 order by city, price;

select * from customer1 order by city desc,price asc;

/*Single-row function*/
/*case conversion function*/
select upper(cust_name), lower(product) from customer1;
alter table customer1 add column lastname varchar(20);
update customer1 set lastname = "deshpande" where custID = 01;
update customer1 set lastname = "bhoir" where custID = 02;
select concat(cust_name," ",lastname) as FullName from customer1;
select substr(cust_name,1,3) from customer1;

/* aggregate functions */
/* SUM, AVG, MIN, MAX */
select count(*) from orders;

select count(order_id) from orders where customer_name = "geet";
select MIN(order_id) from orders where customer_name = "geet";
select max(order_id) from orders where customer_name = "geet";
select avg(order_id) from orders where customer_name = "geet";

-- find the dep wise employee count
select role , count(*) as employee_count
from employee group by role;

-- find the gender wise employee count
select gender ,count(*) as employee_count
from employee group by gender;

-- select * from employee;
select DEPT , SUM(Experience) as total_experience
from employee group by dept
having total_experience >= 10 and total_experince <=20;

select role, Sum(experince) as total_experince;


-- fetch department wise employee count using
-- having clause and sort the data,
select dept , count(empid)
from employee
group by dept
having count(empid)>2
order by count(empid) desc;
