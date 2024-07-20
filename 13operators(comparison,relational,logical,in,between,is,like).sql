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


#relational or comparison operators
select ename from emp where dept_no = 20;
select ename,sal from emp where sal > 300;
select ename,sal from emp where dept_no = 10;
select * from emp where sal <1000;
select emp_no from emp where ename = 'blake';
select ename,sal from emp where sal <= 250;

#logical operators
select ename,dept_no,job from emp 
where dept_no = 10;

select ename,dept_no,job from emp
where job = 'manager' and dept_no = 10;

select ename,dept_no,sal from emp
where dept_no = 20 and sal < 3000;

select ename,sal from emp
where sal > 1250 and sal < 3000;

select ename,dept_no from emp
where dept_no = 20 or dept_no = 10;

select ename,job from emp
where not job = 'manager';

select ename,dept_no,sal,job from emp
where sal between 250 and 4000 and dept_no = 20;
#WAQTD name,sal of the EMPLOYEES if emp gets more than 250 but less than 4000 and works in dept 20

#WAQTD name,job,deptno of EMPLOYEES working as a manager in dept no 10 or 30
select ename,dept_no,job from emp
where job = 'manager' and (dept_no = 10 or dept_no =30);

#WAQTD name,deptno,job of EMPLOYEES working in dept 10 or 20 or 30  as a clerk
select ename,dept_no,job from emp
where job = 'clerk' and (dept_no = 10 or dept_no = 20 or dept_no = 30);

#WAQTD name,job,deptno of the EMPLOYESS working as a clerk or manager in dept 10 
select ename,dept_no,job from emp
where (job = 'manager' or job = 'clerk') and dept_no = 10;


#IN operator

select ename,dept_no from emp
where dept_no in (10,30);

select ename,job from emp
where job in ('clerk','manager','salesman');

select emp_no,ename,sal from emp
where sal > 2925 and emp_no in (7902,7839);

#NOT IN operator
select ename,dept_no from emp
where dept_no not in (10,40);

select ename,dept_no,job from emp
where dept_no = 20 and job not in ('clerk','manager');

#BETWEEN operator
select ename,sal from emp
where sal between 1000 and 3000;

select ename,dept_no from emp
where dept_no = 10 and hire_date between '1981-01-01' and '1981-12-31';

select ename,sal,hire_date from emp
where dept_no = 20 and sal > 2000 and hire_date between '1981-01-01' and '1981-12-31';

#NOT BETWEEN operator
select ename,sal from emp
where sal not between 1000 and 3000;

select ename,dept_no from emp
where dept_no = 10 and hire_date not between '1981-01-01' and '1981-12-31';

select ename,sal,hire_date from emp
where dept_no = 20 and sal > 2000 and hire_date not between '1981-01-01' and '1981-12-31';

#IS operator
select ename from emp
where sal is null;

select ename from emp
where comm is null;

select ename,sal,comm from emp
where comm is null and sal is null;   # comm and sal is null also can be used

select ename from emp
where sal is not null;

select ename from emp
where comm is not null;

select ename,sal,comm from emp
where comm is null and sal is not null;

select ename,sal,comm from emp
where comm is not null and sal is not null;

select ename,sal,comm from emp
where comm and sal is not null; 


#LIKE operator
select * from emp
where ename like 'smith';

select * from emp
where ename like 's%';

select ename from emp
where ename like '_a%';

#NOT LIKE operator
select * from emp
where ename not like 's%';

select * from emp
where ename like '%s';

select * from emp
where ename like '%s%'; 

select * from emp 
where ename like '__a%';

select * from emp
where ename like '_o%s';

select ename from emp
where ename like '%t%t%';

select ename,sal from emp
where sal like '%50';

select * from emp
where comm is null;

select * from emp
where mgr is null;

select * from emp
where dept_no = 30 and job in ('salesman');

 select * from emp
 where dept_no in (30) and sal > 1500 and job in ('salesman');

select * from emp
where ename like 's%' or ename like 'a%';

select * from emp
where ename rlike '^[as].+'; #using reg exp

select * from emp
where dept_no not in (10,20);

select * from emp
where ename not like 's%'; 

select * from emp
where dept_no = 10 and mgr is not null;

select * from emp
where comm is null and job in ('clerk');

select * from emp
where mgr is null and dept_no in (10,30);