-- how to check how many databases is there
show databases;
-- how we create the db
create database dm89;
-- create another database
-- and your database is sql
create database mysql1;
drop database mysql1;
-- create one database
-- give db name school
-- drop the particular db
create database school;
drop database school;
show databases;
create database school1;
-- utilize/use the db
use school1;
-- how to crate the table
-- stu_name stu_id stu_dept stu_marks
create table clg(
stu_name varchar(30),
stu_id varchar(20),
stu_dept varchar(10),
stu_marks decimal(10,2));
select*from clg;
insert into clg(stu_name,stu_id,stu_dept,stu_marks) value('mp',1,'ds',89.8),
('a','bscds345','da',90.8),
('rishika','ai89','stat',98.8);
-- create another table emplo
-- emp_id,emp_name,emp_doj
create table employee(
emp_id varchar(30),
emp_name varchar(20),
emp_doj year);
select*from employee;
insert into employee(emp_id,emp_name,emp_doj) 
value('shanu','05','2015'),('xxx','07','2018');
select*from employee;


