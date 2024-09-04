create database triggers;
use triggers;
show tables;

create table account1(accno int, amount int);
delimiter //
create trigger upd_check1 before update on account1
for each row begin
if new.amount<0 then
set new.amount=0;
elseif new.amount>100 then
set new.amount=100;
end if;
end; //
insert into account1 values(3, 19);
insert into account1 values(2, 10);
insert into account1 values(1, 58);
update account1 set amount=55;
select *from account1;

create table t1(a int, b varchar(20));
create table t2(c varchar(20), d int);
delimiter //
create trigger trig3 before insert on t1
for each row begin
insert into t2 set c=new.b, d=new.a;
end; //
insert into t1 values(102, "abc");
insert into t2 values("pqr", 101);
select *from t2;
select *from t1;

create table t3(a int, b varchar(20));
create table t4(c varchar(20), d int);
delimiter //
create trigger trig2 after insert on t3
for each row begin
insert into t4 set c=new.b, d=new.a;
end; //
insert into t3 values(102, "abc");
insert into t4 values("pqr", 101);
select *from t4;
select *from t3;