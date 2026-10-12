create database clients;
use clients;
create table orders (
   order_id INT primary key,
   customer_name varchar(10),
   status varchar(20)
);
desc orders;
set autocommit = 0;
-- step 1: insert a few orders
Insert into orders Values(101, 'Geet', 'Pending');
Insert into orders values(102, 'Bob', 'Pending');
savepoint sp1;
select * from orders;

-- step 2: Update one order
Update orders set customer_name = 'Raj' where order_id = 101;
savepoint sp2;
rollback to savepoint sp1;

-- step 3: delete another order
delete from orders where order_id = 102;
savepoint sp3;

-- we want to undo the delete but keep the update
rollback to savepoint sp2;
select * from orders;
rollback;

-- now commit the rest