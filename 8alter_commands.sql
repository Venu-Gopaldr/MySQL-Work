use bhooki;

create table student1(sid int,sname varchar(15),perc int);

desc student1;

alter table student1 add age int;

desc student1;

alter table student1 drop column age;

desc student1;

alter table student1 modify column perc float;

desc student1;

alter table student1 modify column perc float not null;

desc student1;

alter table student1 modify perc float not null;
desc student1;

alter table student1 add email varchar(15);
desc student1;

#add constraints

alter table student1 add constraint unique(email);
desc student1;

alter table student1 add constraint primary key(sid);
desc student1;

alter table student1 add constraint check(sid<60);
desc student1;

drop table student1;