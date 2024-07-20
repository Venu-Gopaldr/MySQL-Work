show databases;
create database bhoo;
use bhoo;

create table emp(emp_no integer primary key,ename varchar(15),job varchar(15),hire_date date,mgr integer,sal integer,comm integer,dept_no integer);

insert into emp(emp_no,ename,job,hire_date,mgr,sal,dept_no) values
(7369,'smith','clerk','80-12-17',7902,800,20),
(7566,'jones','manager','81-04-02',7839,2975,20),
(7698,'blake','manager','81-05-01',7839,2850,30),
(7782,'clark','manager','81-06-09',7839,2450,30),
(7788,'scott','analyst','87-04-19',7566,3000,20),
(7876,'adams','clerk','87-05-23',7788,1100,20),
(7900,'james','clerk','81-12-03',7698,950,30),
(7902,'ford','analyst','81-12-03',7566,3000,20),
(7934,'miller','clerk','82-01-23',7782,1300,10);

insert into emp values
(7499,'allen','salesman','81-02-20',7698,1600,300,30),
(7521,'ward','salesman','81-02-22',7698,1250,500,30),
(7654,'martin','salesman','81-09-28',7698,1250,1400,30),
(7844,'turner','salesman','81-08-08',7698,1500,0,20);

insert into emp(emp_no,ename,job,hire_date,sal,dept_no) values
(7839,'king','president','81-11-17',5000,10);
insert into emp(emp_no,ename,job,hire_date,sal,dept_no) values
(7840,'jhonson','manager','81-07-23',6000,20);

select * from emp;

#single row functions

select length('venugopal') from dual;

select concat('venu','gopal') from dual;

select upper('venu') from dual;

select lower('VeNu') from dual;

select initcap('venugopal') from dual;

select reverse('venugopal') from dual;