show databases;
use libdb;

create table student(
sid int,
sname varchar(15) not null,
branch varchar(15),
perc float,
age int,
contact int unique,
college varchar(15) default 'ubdt',
primary key(sid),check(age>18));

desc student;

insert into student(sid,sname,branch,perc,age,contact) values
(101,'vg','cse',70.56,19,789065),
(102,'bk','cse',85.56,22,23456),
(103,'vdr','cse',90.56,29,234567),
(104,'bhoom','cse',100.00,21,234568);

select distinct branch from student;
select (perc/100)*60 from student;
select sid,sname from student;
select sname,branch from student;
select sname,branch,perc from student;
select * from student;
select sname,sid,perc,branch from student;