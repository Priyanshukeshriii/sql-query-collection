
-- ? find the product that have a price higher than the avg price of all the products;

select * 
from
(select
productid,
price ,
avg(price) over() as avg_price
from salesdb.products ) t
where price > avg_price;


-- ? rank the customers based on their total amount of sales;


select *,
rank() over(order by total_sales desc) as sales_rank
FROM
(select 
customerid,
sum(sales) as total_sales
from salesdb.orders
group by customerid) t;
