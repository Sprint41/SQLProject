create database library;
use library;

create table Books
(
	Book_ID int,
    Book_title varchar(50),
    Author varchar(30),
    Publication_date date,
    Available_copies int
);
insert into Books values(1, "Harry potter", "J.K", "2001-01-01", 24);
insert into Books values(2, "Its start with us", "S.R", "2012-04-05", 40);
insert into Books values(3, "Its end with us", "S.R", "2007-01-20", 20);
insert into Books values(4, "Twilight", "P.S", "2003-05-01", 80);
insert into Books values(5, "Anna karenina", "R.D", "2013-07-07", 60);
insert into Books values(6, "Something I never told you", "J.S", "2005-04-06", 10);
insert into Books values(7, "Gift me a new beginning", "K.S", "2004-06-02", 03);
insert into Books values(8, "When I am with you", "A.K", "2001-01-03", 100);
select *from Books;

 -- NOW()
select NOW();

 -- CURDATE()
select CURRENT_DATE;

 -- CURTIME()
select CURRENT_TIME;

 -- DATE()
select DATE(Publication_date) from Books;

 -- EXTRACT()
select EXTRACT(Year FROM Publication_date) from Books;
select EXTRACT(Month FROM Publication_date) from Books;
select EXTRACT(Day FROM Publication_date) from Books;

 -- DATE_ADD()
select DATE_ADD(Publication_date, INTERVAL 1 YEAR) AS new_publication_date
from Books;
select DATE_ADD(Publication_date, INTERVAL 1 Month) AS new_publication_date
from Books;
select DATE_ADD(Publication_date, INTERVAL 10 Day) AS new_publication_date
from Books;

 -- DATE_SUB()
select DATE_SUB(Publication_date, INTERVAL 1 YEAR) AS new_publication_date
from Books;
select DATE_SUB(Publication_date, INTERVAL 1 Month) AS new_publication_date
from Books;
select DATE_SUB(Publication_date, INTERVAL 10 Day) AS new_publication_date
from Books;

 -- DATEDIFF()
select DATEDIFF(Publication_date, CURDATE()) AS Days_diff
from Books;

 -- DATE_FORMAT()
select DATE_FORMAT(Publication_date, "%M,%d,%Y") AS formatted_Date
from Books;