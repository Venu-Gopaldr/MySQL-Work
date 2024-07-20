create database dumdum;

show databases;

use dumdum;

show tables;

create table book(book_id integer,title varchar(15),author varchar(15));

insert into book(book_id,title,author) values(101,'dbms','navathe'),(102,'me','kanishka'),(103,'bgvdgta','krishna');

show table status;

desc book;

select * from book;