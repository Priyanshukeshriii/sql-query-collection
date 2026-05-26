
select 
orderid,
orderdate,
sales,
avg(coalesce(sales,0)) over(partition by productid) as avg_sales
from salesdb.orders;


-- handle null values in avg function by using coalesce function to replace null with 0
select
customerid,
firstname,
lastname,
score,
avg(score) over() as avg_score,
avg(coalesce(score,0)) over() as 
avg_score_with_coalesce
from salesdb.customers;

select *
from(select
orderid,
productid,
sales,
avg(sales) over() as avg_sales
from salesdb.orders)t
where sales > avg_sales;