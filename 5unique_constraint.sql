create database dum;
use dum;

create table student(
sid integer,
sname varchar(15),
branch varchar(10),
perc float not null,
age integer,
college varchar(15),
contact integer unique,check(age>18)
);


insert into student(sid,sname,branch,perc,age,contact) values(101,'vg','cse',70.56,19,12345),
(102,'bk','cse',85.56,22,67895),
(103,'vdr','cse',90.56,29,98765),
(104,'bhoom','cse',100.00,21,546789);

desc student;

select * from student;

drop table student;