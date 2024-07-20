create database bk;
use bk;

create table course(
cid integer,
cname varchar(15),
primary key(cid)
);

insert into course values(101,'python'),
(102,'sql'),
(103,'devop'),
(104,'html'),
(105,'css');

create table student(
sid int,
sname varchar(15),
cid integer,
foreign key(cid) references course(cid)
);

insert into student values(1,'vg',102),
(2,'bk',103),
(3,'vdr',105),
(4,'adr',104),
(5,'mk',101);

desc course;
desc student;

select * from course;
select * from student;

drop table student;
drop table course;