create database procedures;
use procedures;
delimiter $$
create procedure multiplication
(
in x int,
in y int,
out result int
)
begin
set result=x*y;
end $$
delimiter ;
call multiplication(2,6,@result);
select @result;





