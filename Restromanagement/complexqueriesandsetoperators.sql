create database store;
use store;

create table customer
(
	Cust_ID INT,
    Cust_name varchar(30),
    Cust_address varchar(30)
);
insert into customer values(1, "Abhir", "pune");
insert into customer values(2, "nikhil", "mumbai");
insert into customer values(3, "rihu", "jalgaon");
insert into customer values(4, "piyu", "delhi");
insert into customer values(5, "Aaruhi", "mumbai");
insert into customer values(6, "Abhinav", "surat");
insert into customer values(7, "Akshu", "ahmdabad");
insert into customer values(8, "Abhi", "pune");
select *from  customer;

create table employee
(
	Emp_ID int,
    Emp_name  varchar(30),
    Emp_address varchar(40)
);
insert into employee values(1, "Abhir", "pune");
insert into employee values(2, "nikhil", "pune");
insert into employee values(3, "rihu", "pune");
insert into employee values(4, "piyu", "pune");
insert into employee values(9, "Aaruhi", "pune");
insert into employee values(10, "Abhinav", "pune");
insert into employee values(11, "Akshu", "pune");
insert into employee values(12, "Abhi", "pune");
select *from employee;

 -- UNION
select Cust_ID, Cust_name from customer
UNION
select Emp_ID, Emp_name from employee;

 -- UNION ALL
select Cust_ID, Cust_name from customer
UNION ALL
select Emp_ID, Emp_name from employee;


 -- INTERSECT
select Cust_ID, Cust_name from customer
INTERSECT
select Emp_ID, Emp_name from employee;

 -- MINUS
select Cust_ID, Cust_name from customer
EXCEPT
select Emp_ID, Emp_name from employee;