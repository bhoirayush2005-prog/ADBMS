create database User;
show databases;

use user;

create table customer (custid int,custname varchar(15),
city varchar(10), product varchar(15), price int);

desc customer;

insert into customer values(01,'ayush','pune','laptop',50);
insert into customer values(02,'viraj','pune','iphone',90);
insert into customer values(03,'dipesh','mumbai','tv',60);
alter table customer add primary key(custid);
select custid , custname, city from customer;
select * from customer where custid = 01;
select * from customer where custid = 01 or custid = 03;


create table CloneTable as select * from customer;
select * from CloneTable;
drop table CloneTable;


select custname , product , price from customer where price>60;
select * from customer where city = 'pune';

-- sorting data using order by single column

select * from customer;


-- sorting data using order by multi column--
select * from customer order by city,price;

select * from customer order by city desc, price asc;

-- single row function
-- case conversion function

select upper(custname),lower(product) from customer
where custid<3; -- uppercase & lower function

select upper(custname),lower(product) from customer;

alter table customer add column lastname varchar(15);
select * from customer;
update customer set lastname = 'bhoir' where custid = 01;
update customer set lastname = 'deshpande' where custid = 02;
update customer set lastname = 'kokate' where custid = 03;

select * from customer;


-- concate 2 coloumn

select concat(custname,' ',lastname)as fullname from customer;
concat_name from customer;

-- use of SUBSTR and INSTR function

select * from customer;
select substro