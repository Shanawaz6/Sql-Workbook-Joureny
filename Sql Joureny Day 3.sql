use school;
select*from emp;

-- i want to change to salary from 5000 to 7000
-- where emp_id is 1
update emp set emp_salary=7000 where emp_id=1;
select*from emp;

-- change the emp_age and emp_des where emp_id is 4
update emp set emp_age=25,emp_des='DS'
where emp_id=3;
select*from emp;

-- update the emp_age,emp_des and emp_salary
-- where ep_id is 4
update emp set emp_age=28,emp_des='AI',emp_salary=6500
where emp_id=4;
select*from emp;

-- i want to delete the entire row 
-- where the emp_id is 1
delete from emp where emp_id=1;
select*from emp;

-- delete only emp_sal where emp_id=4
update emp set emp_salary=null where emp_id=4;
select*from emp;

alter table emp add emp_exp decimal(10,2);
alter table emp add emp_name varchar(10);
select*from emp;

-- edit emp_exp where emp_id is 3
update emp set emp_exp=2 where emp_id=3;
select*from emp;

-- delete emp_name
alter table emp drop emp_name;
alter table emp drop emp_exp;
select*from emp;

-- modify the datatype
-- emp_salary into decimal
alter table emp modify emp_salary decimal(10,2);

-- change the emp_des varchar(10)
alter table emp modify emp_des varchar(10);

-- change the emp_salary to emplo_sal
alter table emp rename 
column emp_salary to emplo_sal;

-- change the emp_age to e_age
alter table emp rename column emp_age to e_age;
alter table emp rename to emp799;
select*from emp799;
alter table emp799 rename to emp800;
select *from emp800;

-- delete entire values in the table
truncate table emp800;
select*from emp800;

-- delete the table
drop table emp800;


select*from sales;

-- orderid,orderdate,sales
select orderid,state,sales from sales;
select profit,country,sales from sales;
select distinct(category) from sales;
select distinct(subcategory) from sales;
select distinct(region) from sales;

-- change orderid to id
select orderid as id from sales;

-- try to find out only the technology related data
select*from sales where category='technology';

-- try to find out only art realted data
select*from sales where subcategory='art';

-- try to find out the data for east region
select*from sales where region='east';

-- try to find out the quantity greater than 5
select*from sales where quantity>5;

-- try to find out the sales less than50
select*from sales where sales<50;

-- state='texas'
-- category='furniture'
-- sales>5
select*from sales where state='texas'and category='furniture' and sales>5;

-- profit>5
-- segment is consumer
-- quantity=3
select*from sales where segment='consumer' and profit>5 and quantity=3;

-- region south and east
select*from sales where region='east' or region='south';

-- subcategory phones and art
select*from sales where subcategory='phones' or subcategory='art';

-- subcategory phones
-- quantity=6 
-- discount=0.2
select*from sales where subcategory='phones' and quantity=6 and discount=0.2;

-- region should be central and west
select * from sales where region='west' or region='central';

-- not related to technology
select*from sales where not category='technology';

-- region is not central
select*from sales where not region='central';

-- order by
-- arrange into asc and desc manner
-- i want to arrange sales in asc
select*from sales order by sales asc;
select*from sales order by sales desc;

-- try to find out quantity in desc 
-- where the segment='consumer'
select*from sales where segment='consumer' order by quantity desc;