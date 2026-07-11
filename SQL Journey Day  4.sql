use school1;
select*from sales;

-- profit dec
select*from sales order by profit desc;
select*from sales where category is null;
select*from sales where category is not null;


select*from sales where discount is null;
select*from sales order by sales desc limit 1,1;

-- 3rd largest sales
select*from sales order by sales desc limit 5;




limit 2,1;
-- try to find out 4th and 5th largest 
-- profit where region is east
select*from sales where region='east' order by 
profit desc limit 5,3;

-- try to find it out 4th largest quantity
-- where subcatergory =" phones"
select*from sales where subcategory ='phones' order by quantity desc;
select*from sales where subcategory ='phones' order by quantity desc limit 3,2;

-- in
select*from sales where subcategory in('paper','phones','art');
select*from sales where region in('south','east');

-- profit in between 0 to 5
select*from sales where profit between 0 and 5;

-- try to find the quantity beetween 5 to 10
-- where the category = 'technology'
select*from sales where category ='technology' and quantity between 5 and 10;

-- based on like 
-- find out west region
select*from sales where region like 'w%';
select*from sales where region like 'w%t';
select*from sales where region like '%es%';
select*from sales where region like 'w___';

-- try to find out category='technology'
select*from sales where category like 't%';
select*from sales where category like 't%y';
select*from sales where category like '%echn%';
select*from sales where category like 't_________';
select*from sales where category like '%y';
select*from sales where category like '%gy%';

-- count
-- how many unique subcategory is there
select count(distinct subcategory) from sales;
select count(distinct subcategory) as no_of_subcategory from sales;
select count(distinct region) from sales;

-- how many time phones realted data is there
select count(*) from sales where subcategory='phones';

-- how many data realted to east is there
select count(*) from sales where region='EAST';


-- find out the total sales
select sum(sales) from sales;
select round(sum(sales),2) from sales;
select round(sum(sales),0) from sales;

-- find out the total profit where the region is east
select sum(profit) from sales where region ='east';

-- try to find out the avg quantity where
-- region is east
-- category is technology

select avg(quantity) from sales where region='east' and category='technology';

-- maximum sales where subcategory='phones'
-- minimum profit where subcategory ='art'
select min(sales) from sales where subcategory='phones';
select max(profit) from sales where subcategory='art'


-- total sales based on region
select region,sum(sales) from sales group by region;

-- find out the total quantity for each and every category
select sum(quantity),category from sales group by category;

-- try to find out minimum sales
-- based on subcategory
select subcategory,min(sales) from sales group by subcategory;
select subcategory,min(sales) from sales group by subcategory;
select subcategory,min(sales) from sales group by subcategory having min(sales)>5;




-- find the average selling price of cars for each brand
-- calculate the total selling price grouped by fuel type
-- find the number of cars available for each other 

select*from cars;

select brand,avg(selling_price)as avg_price from cars group by brand;

select fuel,sum(selling_price)as total_selling_price from cars group by fuel;

select brand,count(brand)from cars group by brand;


-- find out brand that have more than one car listed in the data set

select count(*) as no_of_car,brand from cars group by brand having no_of_car>1;

-- identify onwer type where the total selling price of cars exceeds ---100000 (1 lakh)

select owner,sum(selling_price) from cars group by owner having sum(selling_price)>1000000;