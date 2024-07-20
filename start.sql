show databases;
create database venudb;
use venudb;
show tables;

create table student(roll_no int, name varchar(20), sem char, mob_no varchar(10)) ;

desc student;

insert into student(roll_no, name, sem, mob_no) values (11,'bhoom',5,1234567891), (56,'venu',7,9876543219), (12,'aishu',5,1234565491), (10,'dgr',7,9874567891), (57,'lalitha',3,1254367891) ;

truncate student;

select * from student;