show databases;
create database vgdb;
use vgdb;
create table dept2(dept_id int , dept_name varchar(100) not null , manager_id int , lac_id int , constraint deprt_id_pk primary key(dept_id));
create table emp4(emp_id int , f_name varchar(50) not null , l_name varchar(50) not null , email varchar(100) , phone_number int , hire_date date not null , job_id varchar(10) not null , salary int , commision_pct int , manager_id int , dept_id int , constraint empl_emp_id_pk primary key(emp_id) , constraint emp_depat1_fk foreign key(dept_id) references dept2(dept_id));
create table j_grade (grade varchar(2) , low_sal int , high_sal int);

select * from dept2;
select * from emp4;
select * from j_grade;

desc dept2;
desc emp4;
desc j_grade;

insert into dept2(dept_id,dept_name,manager_id,lac_id)values(20,'admin',300,2100);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(21,'marketting',301,2200);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(22,'shipping',302,2300);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(23,'it',303,2400);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(24,'sales',304,2500);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(25,'executive',305,2600);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(110,'acc',306,2700);
insert into dept2(dept_id,dept_name,lac_id)values(190,'contracting',2800);
insert into dept2(dept_id,dept_name,manager_id,lac_id)values(26,'admin',307,2900);

select * from dept2;

insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,job_id,salary,hire_date)values(1,'akash','pandey','akash@gmail.com',9997766,21,'ad_pres',34000.00,'2012-03-29');
insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,job_id,salary,hire_date)values(2,'bhoomika','kabbur','bhoomika@gmail.com',6360919,22,'ad_vp',45000.00,'2012-05-25');
insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,job_id,salary,hire_date)values(3,'venu','gopal','venu@gmail.com',8970314,24,'ad_vp',55000.00,'2012-05-18');
insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,manager_id,job_id,salary,commision_pct,hire_date)values(4,'monika','kabbur','monika@gmail.com',99167602,25,110,'it_prog',36000.00,1.5,'2011-02-27');
insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,manager_id,job_id,salary,commision_pct,hire_date)values(5,'aishwarya','DR','aishwarya@gmail.com',4567843,26,120,'st_man',85000.00,1.2,'2010-08-25');
insert into emp4(emp_id,f_name,l_name,email,phone_number,dept_id,job_id,salary,commision_pct,hire_date)values(6,'andy','J','andy@gmail.com',8579876,27,'st_clerk',28500.00,0.9,'2012-08-28');

select * from emp4;

insert into j_grade values('A',2000,60000);
insert into j_grade values('B',9001,19000);
insert into j_grade values('D',1001,25000);
insert into j_grade values('F',25001,35000);
insert into j_grade values('H',35001,89000);
insert into j_grade values('I',45001,99000);
insert into j_grade values('J',55001,199000);

commit;

select * from j_grade;

select emp_id,f_name,l_name,salary+1000 from emp4;
select emp_id,f_name,l_name,salary-1000 from emp4;
select emp_id,f_name,l_name,salary+(salary*0.1) from emp4;
select emp_id,f_name,l_name,salary-(salary*0.2) from emp4;
select salary*6 from emp4;
select salary*12 from emp4;

savepoint save1;

select emp_id,job_id,dept_id,salary+(salary*0.1) as increment from emp;
select emp_id,job_id,dept_id,(salary*6) as halfyear from emp;
select * from emp4 where dept_id<30;
select * from emp4 where salary<10000;
select email,phone_number,commision_pct from emp4 where commision_pct<=5;
select email,phone_number from emp4 where commision_pct<=2;
select emp_id , f_name,l_name from emp4 where salary<=34000;
select * from emp4 where job_id = 'it_prog';
select * from emp4 where job_id = 'ad_vp';
select f_name , l_name , concat(f_name,'',l_name)as 'full_name'from emp4;
select concat('educade','-','thinkworks')as 'training center'from dual;

savepoint save2;
rollback;
rollback to save1;

select * from emp4 where commision_pct = 2;
select dept_id,dept_name,lac_id from dept2 where lac_id not in(2400,2500);
select dept_id,dept_name,lac_id from dept2 where lac_id in(2400,2700);
select * from j_grade where high_sal not in (3000 and 55000);
select * from emp where salary in(12000,18000,19000);
select dept_id,dept_name from dept2 where lac_id in(2500,2700,2900);
select low_sal,high_sal,grade from j_grade where grade not in ('A','B','C');

select * from emp4;
select * from emp where commision_pct is null;
select * from emp4;

#like operator

select dept_id,dept_name from dept where dept_name like '%ing';
select dept_id,job_id from emp where job_id like 'AD%';
select distinct dept_id from emp4;
select  manager_id , dept_id from emp4 where dept_id like '2%';
select * from j_grade where low_sal like '%1';
select * from dept2 where dept_name like '%ng';
select dept_id from dept2 where manager_id like '304%';
select dept_id,dept_name from dept where manager_id like'%0';
select * from emp4 where f_name like '%a';
select * from emp4 where l_name like '%l';
select * from emp4 where f_name like '_h%';
select * from emp4 where email like '____@%';
select * from emp4 where l_name like '%b__';
select phone_number from emp4 where phone_number like '_3%';

#distinct operator
select distinct dept_id from emp4;
select distinct salary from emp4;

#Between operator
select grade,low_sal from j_grade where low_sal between 2000 and 4000;
select * from emp4;

#airthmatic operator
select emp_id,f_name,l_name,salary+1000 from emp4;
select emp_id,email,phone_number,salary-1000 from emp4;
select emp_id,job_id,dept_id,salary+(salary*0.1) from emp4;
select emp_id,job_id,dept_id,salary-(salary*0.2) from emp4;
select salary*6 as half from emp4; 
select * from emp4 where f_name = 'akash';
select * from emp4 where dept_id < 30;
select * from emp4 where salary > 10000;
select email,phone_number from emp4 where commision_pct <= 5;
select emp_id,f_name,l_name from emp4 where salary <= 34000;
select * from emp4 where job_id != 'st_clerk';

#concat
select concat(f_name,l_name) as full_name from emp4;
select concat('sachin','tendulkar') as full_name from dual;
select concat('111','222') as full_number from dual; 
select concat('bond','7777') as movie_character from dual;
select concat('bond',null) as result from dual;
select distinct dept_id from emp4;
select grade , low_sal from j_grade;

#between not between
select * from emp4 where commision_pct between 1 and 2;
select dept_id,dept_name from dept2 where lac_id not between 2400 and 2500;
select * from j_grade where high_sal not between 3000 and 55000;

#in operator
select * from emp4 where salary in (34000,45000,19000);
select dept_id,dept_name from dept2 where lac_id in (2500,2700,2900);

#is operator
select * from emp4 where commision_pct is null;
select * from emp4 where manager_id is not null;

#like
select * from emp4 where f_name like 'A%';
select dept_id , dept_name from dept2 where dept_name like 'AC%';
select manager_id from dept2 where dept_id like '2%';
select grade from j_grade where low_sal like '%1';
select * from dept2 where dept_name like '%ng';
select dept_id , dept_name from dept2 where manager_id like '%0';
select * from emp4 where f_name like '%a%';
select * from emp4 where l_name like '%a%';
select * from emp4 where f_name like '_h%';
select * from emp4 where email like '__@%';
select * from emp4 where l_name like '%g__';
select * from emp4 where phone_number like '%7___';
select l_name , salary from emp where length(l_name) = 5;

#operators string
select upper('akash') from dual;
select lower('PANDAEY') from dual;
select upper(f_name) from emp4;
select upper(f_name),upper(l_name) from emp4;
select upper(f_name),upper(l_name) from emp4 where l_name = 'gopal';
select upper(f_name) , upper(l_name) , salary from emp4 where f_name = 'akash';
select concat(f_name,l_name) from emp4 ;
select concat('111','222') from dual;
select concat('111','ramu') from dual;
select concat('111',null) from dual;
select length('prabhakaran') from dual;
select trim(leading'm' from 'malayalam') from dual;
select trim(trailing 'm' from 'malayalam') from dual;
select trim(both 'm' from 'malayalam') from dual;
select lpad('sharma',11,'#') from dual;
select rpad('sharma',11,'#!#!') from dual;

#round, count, max, min, sum, avg
select round(45.326,2)from dual;
select round(2346.345,-2) from dual;
select round(2356.345,-2) from dual;
select round(123,-2) from dual;
select count(*) from emp4;
select distinct max(salary) from emp4;
select max(hire_date) from emp4;
select sum(salary) from emp4;
select avg(salary) from emp4;
select distinct avg(salary) from emp4;
select min(hire_date) from emp4;
select dept_id , min(salary) from emp4 group by dept_id;
select dept_id , max(salary) from emp4 where dept_id < 50 group by dept_id;
select dept_id,count(dept_id) from emp4 where dept_id = 22 group by dept_id;
select concat(f_name,l_name) from emp4 where f_name = 'akash';

#substr
select substr('bhoomika',5) from dual;
select substr('bhoomika'from 5) from dual;
select substr('bhoomika',5,2) from dual;
select substr('bhoomika'from 5 for 2) from dual;
select substr('bhoomika',-3) from dual;
select substr('bhoomika',-5,3) from dual;

#f_name start with vowels
select f_name from emp4 where REGEXP_LIKE(f_name ,'^[aeiou].+');
select f_name from emp4 where f_name RLIKE '^[aeiou].+';

#f_name ends with vowels
select distinct f_name from emp4 where REGEXP_LIKE(f_name,'[aeiou]$');
select distinct f_name from emp4 where f_name RLIKE '[aeiou]$';

#f_name that do not start with vowels
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].*';
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].+';

#f_name that do not end with vowels
select distinct f_name from emp4 where f_name RLIKE '[^aeiou]$';

#f_name that either not start with vowels and not end with vowles
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].*' and f_name RLIKE '[^aeiou]$';
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].*&[^aeiou]$';

#f_name that should  not start with vowels and  not end with vowels both
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].*|[^aeiou]$';
select distinct f_name from emp4 where f_name RLIKE '^[^aeiou].*' or f_name RLIKE '[^aeiou]$';

#groupby, orderby
select dept_id , min(salary) from emp group by dept_id;
select dept_id , max(salary) from emp4 where dept_id > 50 group by dept_id;
select dept_id  , count(dept_id) from emp4 where dept_id = 26 group by dept_id;
select dept_id , max(salary) from emp4 where dept_id > 10 group by dept_id having max(salary)>30000 order by dept_id desc;
select dept_id , min(salary) from emp4 where job_id ='st_clerk' or 'it_prog' group by dept_id having sum(salary)<25000 order by dept_id desc;

select * from emp4;
select * from dept2;

select l_name , f_name , salary from emp4 where salary in (select salary from emp4 where salary>'pandey');
select dept_id , f_name from emp4 where dept_id in ( select dept_id from dept2 where dept_id = 'kabbur');
select dept_id , f_name , job_id from emp4 where dept_id in(select dept_id from dept2 where dept_id = 'administration');
select emp_id from emp4 where dept_id in (select dept_id from dept2);
select l_name ,job_id from emp4 where job_id in (select job_id from emp4 where l_name ='kabbur') and (salary > (select salary from emp4 where l_name = 'gopal'));

#groupby, having
select dept_id , min(salary) from emp4 group by dept_id;
select dept_id , max(salary) from emp4 group by dept_id having dept_id > 24;
select dept_id , count(dept_id) from emp4 group by dept_id having dept_id = 26;
select l_name , f_name , salary from emp4 where salary > (select salary from emp4 where l_name = 'gopal');
select f_name , dept_id from emp4 where dept_id = (select dept_id from emp4 where l_name = 'dr');
select dept_id , f_name , job_id from emp4 where dept_id in (select dept_id from dept2 where dept_name = 'admin');
select emp_id from emp4 where dept_id in(select dept_id from dept2 );
select l_name , job_id from emp4 where job_id = (select job_id from emp4 where l_name = 'gopal') and salary in (select salary from emp4 where l_name = 'kabbur');
 
 
 #miscelleneous quiries
 
 select replace(f_name,'a','&') from emp4;
 
 select case
 when l_name='pandey' then salary*0.35
 when l_name='ganeshan' then salary*0.10
 else salary*0.15
 end
 from emp4;

select salary from emp4 order by salary desc limit 2;

SELECT MAX(SALARY) FROM emp4 WHERE SALARY < (SELECT MAX(SALARY) FROM emp4); 

select l_name,job_id from emp4 where job_id = (select job_id from emp4 where l_name = 'gopal') and salary > (select salary from emp4 where l_name = 'gopal');

select job_id from emp4 where l_name = 'gopal';
select salary from emp4 where l_name = 'gopal';
