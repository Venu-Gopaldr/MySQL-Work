create database venugopal;
show databases;
use venugopal;
show tables;

create table student(name varchar(10),age integer,roll_no integer);

insert into student values('venu',18,101);
insert into student values('bhooma',6,102);
insert into student values('vg',13,103);
insert into student values('vdr',17,104);
insert into student values('bk',10,105);

show table status;
desc student;
select * from student;

#drop table student;
#drop database venugopal; 

insert into student(name,age,roll_no) values('venu',18,101),('bhooma',6,102),('vg',13,103),('vdr',17,104),('bk',10,105);
#multiple value insertion
