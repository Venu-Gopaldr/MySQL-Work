create database bhooki;
use bhooki;
create table student(
sid integer,
sname varchar(15),
branch varchar(10),
perc float not null,
age integer,
college varchar(15) default 'UBDT',
primary key(sid),check(age>18)
);

insert into student values(101,'vg','cse',70.56,19,'BIET');

insert into student(sid,sname,branch,perc,age) values(110,'vg','cse',70.56,19),
(102,'bk','cse',85.56,22),
(103,'vdr','cse',90.56,29),
(104,'bhoom','cse',100.00,21);

desc student;

select * from student;

drop table student;