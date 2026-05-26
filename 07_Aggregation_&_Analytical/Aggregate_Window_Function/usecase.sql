
-- find the percentage contibution of each product to the total sales;

SELECT
    orderid,
    productid,
    sales,
    SUM(sales) OVER() AS total_sales,
    round ((CAST(sales AS float) / SUM(sales) OVER()) * 100 , 2 )AS percentage_contribution
FROM salesdb.orders;


select
version() as version;

-- running total and rolling total
-- tasks1: calculate the moving average of sales for each product over the last 3 orders;
-- tasks2: calculate the moving average of sales for each product over time;

-- task 1

select 
    orderid,
    productid,
    orderdate,
    sales,
    avg(sales) over(partition by productid ORDER BY orderdate ASC rows between 3 preceding and current row) as moving_avg_sales,
    avg(sales) over(partition by productid order by orderdate  rows between UNBOUNDED PRECEDING and 1 following) as moving_avg_sales_over_time
from salesdb.orders;