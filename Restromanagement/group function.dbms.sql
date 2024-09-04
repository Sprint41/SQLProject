create database numbers;
use numbers;
create table employee(emp_id int, e_name varchar(20), emp_salary int, emp_position varchar(20));
insert into employee values(1,'yash',12000,'manager');
insert into employee values(1,'ankit',12000,'developer');
insert into employee values(1,'sumit',12000,'marketing');
select * from employee;
select count(*) from employee;
select emp_id, count(*) as emp_count
from employee
group by emp_id;
select sum(emp_salary) from employee;
select max(emp_salary) from employee;
select min(emp_salary) from employee;
select avg(emp_salary) from employee;
