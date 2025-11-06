/*
Diwali Sales Analysis
*/

create database Sales_analysis;

use sales_analysis;

SELECT * FROM sales_analysis.diwali_sales; 

Select * from diwali_sales
limit 10;

/*
Analysis by Gender
*/
select gender, count(*) as total_customers, sum(Amount) as total_sales
from diwali_sales
group by gender
order by total_sales desc;

/*
Analysis by Age Group
*/
select `Age Group`, count(*) as total_customers, sum(Amount) as total_sales
from diwali_sales
group by `Age Group`
order by total_sales desc;

/*
Top 5 States
*/
select State, sum(Amount) as total_sales
from diwali_sales
group by State
order by total_sales desc
limit 5;

/*
Top 10 Product Categories
*/
select Product_Category, sum(Amount) as total_amount
from diwali_sales
group by Product_Category
order by total_amount desc
limit 10;

/*
Analysis by Marital Status
*/
select Marital_Status, count(*) as total_customers, sum(Amount) as total_sales
from diwali_sales
group by Marital_Status
order by total_sales desc;