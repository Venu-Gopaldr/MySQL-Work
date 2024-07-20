show databases;
use venudb;

create table table1( A varchar(2), B varchar(2) );
create table table2( B varchar(2), C varchar(2));

insert into table1(A,B) values (1, 2), (3, 4), (5, 6), (7, 8);
insert into table2(B,C) values (2, 1), (8, 1), (9, 1);

select * from table1;
select * from table2;

select * from table1 inner join table2 on table1.B = table2.B;

select * from table1 natural join table2;

select * from table1 left outer join table2 on table1.B = table2.B;

select * from table1 right outer join table2 on table1.B = table2.B;

select * from table1 full join table2;
select * from table1 full join table2 on table1.B = table2.B;
select * from table1 full join table2 on table1.B = table2.B order by table1.B;

select * from table1 cross join table2;