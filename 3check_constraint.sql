create database bhoom;
use venudb;

create table student(
sid integer,
sname varchar(15),
branch varchar(10),    #constraint check is used it checks for the condition before inserting the value.
perc float,
age integer,check(age>18));

insert into student(sid,sname,branch,perc,age) values(101,'vg','cse',70.56,19),
(102,'bk','cse',85.56,22),
(103,'vdr','cse',90.56,29),
(104,'bhoom','cse',100.00,21);

desc student;

select * from student;
