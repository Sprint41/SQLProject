create database sports;
use sports;
create table student(sreg_no int primary key, sname varchar(20), class varchar(20) check(class in('Fybca','Sybca','Tybca')));
insert into student values(1,'beena','Fybca');
insert into student values(2,'meena','Sybca');
insert into student values(3,'suraj','Tybca');
create table competition(c_no int primary key,c_name varchar(20),c_type varchar(20));
insert into competition values(101,'quiz','intercollege');
insert into competition values(201,'drawing','state level');
insert into competition values(301,'poster painting','district level');
select * from competition;
CREATE TABLE S_C (
  Sreg_no INT,
  C_no INT,
  position INT,
  Year INT,
  CONSTRAINT pkS_C PRIMARY KEY (Sreg_no, C_no),
  FOREIGN KEY (Sreg_no) REFERENCES Student(sreg_no),
  FOREIGN KEY (C_no) REFERENCES Competition(c_no)
);
Insert into S_C values (1,101, 1, 2017);
Insert into S_C values (1,102, 2, 2017);
Insert into S_C values (2,101, 2, 2018);
Insert into S_C values (2,103, 1, 2018);
Insert into S_C values (3,101, 3, 2017);
select sname
from student,competition
where student.sreg_no=S_C.sreg_no
and competition.c_no=S_C.c_no
and cname='quiz';