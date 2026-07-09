show databases;
use school1;
-- unique
create table emp67(
emp_id int unique,
emp_name varchar(30));
insert into emp67(emp_id,emp_name)values
(1,'a'),
(10,'ad');
select*from emp67;
create table student(
s_id int not null,
s_name varchar(20));
insert into student(s_id,s_name) values(1,'a');
select*from student;
create table school37(
s_id varchar(30) not null,
s_score int);
insert into school37(s_id,s_score)
values('',80);
select*from school37;
create table dm(
stu_id int primary key,
stu_place varchar(30));
insert into dm(stu_id,stu_place) values(2,'sikkim'),
(6,'nepal');
select*from dm;

create table mp(
person_name varchar(20),
age int check(age>18));
insert into mp(person_name,age)
values('rishika',19);

create table ticket(
t_id int primary key auto_increment,
p_name varchar(30),
t_date datetime default current_timestamp);
insert into ticket(p_name)values('a'),('b'),('c');
select*from ticket;

-- create table
-- give the name stu900
-- stud id use the autoincrement
-- stu age it will be 20
-- stu marks > 90

create table stu900(
stu_id int primary key auto_increment,
s_age int default 20,
s_marks int check(s_marks>90)),
insert into stud900(s_marks) values(100);
select*from stud900;

create table stu96(
s_id int primary key auto_increment,
s_name varchar(30))
auto_increment=10;
insert into stu96(s_name)values('A'),('B'),('C'),('D');
select*from stu96;

create table stu98(
s_id int primary key auto_increment,
s_name varchar(30))
auto_increment=1;
insert into stu98(s_name)values('A'),('B'),('C'),('D');
select*from stu98;

-- EMP_ID
-- EMP_AGE
-- EMP_DES
-- EMP_SALARY

create table EMP(
EMP_ID int primary key auto_increment,
EMP_AGE INT default 35,
EMP_DES varchar(30) default 'DATA SCIENTIST',
EMP_SALARY int default 5000);
insert into EMP(EMP_DES) values('HR');
select*from Emp;
update EMP set EMP_age=49 where emp_id=1;
emp_id =2 change the emp_des
update emp set emp_des='da' where emp_id=2;