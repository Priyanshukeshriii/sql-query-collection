-- rank customers based on their total sales;

select
    customerid,
    sum(sales) as total_sales,
    rank() over(order by sum(sales) desc) rank_customer
from salesdb.orders
group by customerid;