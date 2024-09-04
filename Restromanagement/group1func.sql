create database campany;
use campany;

create table Employee
(
	Emp_ID int,
    Emp_name varchar(30),
    Emp_salary int,
    Emp_position varchar(30)
);
insert into Employee values(1, "yash", 40000, "senoir developer");
insert into Employee values(2, "abhi", 35000, "Manager");
insert into Employee values(3, "ruhi", 40000, "senoir developer");
insert into Employee values(4, "piya", 45000, "junor developer");
insert into Employee values(5, "aaruhi", 90000, "Manager");
insert into Employee values(6, "akshu", 40000, "senoir developer");
insert into Employee values(7, "subham", 20000, "junor developer");
select *from Employee;

 -- COUNT()
select Emp_ID, COUNT(*) AS Emp_count
from Employee
GROUP BY Emp_ID;
select count(*) from Employee;
 -- SUM()
select SUM(Emp_salary) from Employee;

 -- AVG()
select AVG(Emp_salary) from Employee;

 -- MIN()
select MIN(Emp_salary) from Employee;

 -- MAX()
select MAX(Emp_salary) from Employee;