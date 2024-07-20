use bhooki;

create table emp(
emp_id int,
emp_name varchar(15) not null,
comp varchar(15) default 'VDR',
salary int,
ph_no int,
email varchar(15) unique,
primary key(emp_id),
check(salary>40000)
);

desc emp;

create table project(
pro_no int,
pro_name varchar(15) unique,
pro_loc varchar(15) not null,
emp_id int,
primary key(pro_no),
foreign key(emp_id) references emp(emp_id)
);

desc project;

insert into emp(emp_id,emp_name,comp,salary,ph_no,email)values
(101,'venu','V',50000,985764,'abc@gamil.com'),
(102,'gopal','V',60000,675994,'def@gamil.com'),
(103,'bhoom','B',80000,567894,'ghi@gamil.com'),
(104,'bk','B',90000,456387,'jkl@gamil.com'),
(105,'mk','M',70000,988889,'mno@gamil.com');

insert into emp(emp_id,emp_name,salary,ph_no,email)values
(106,'vb',60000,345764,'pqr@gamil.com');

select * from emp;

insert into project(pro_no,pro_name,pro_loc,emp_id) values
(1,'dairy','dvg',105),
(2,'delivery','klgt',103),
(3,'land','jglr',101),
(4,'zoo','bnglr',102),
(5,'edu','msr',104);

select * from project;


#alter command

alter table emp add fam_mem int;
desc emp;

alter table emp drop ph_no;
desc emp;

alter table emp modify column salary float;
desc emp;

alter table emp modify salary float not null;
desc emp;

alter table emp add constraint unique(email);
desc emp;

#update command

update emp set emp_name = 'bhoom'
where emp_id = 103;

select * from emp;