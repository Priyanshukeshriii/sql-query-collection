

select
orderid,
orderdate,
sales,
sum(sales) over() as total_sales,
productid,
sum(sales) over(partition by productid) as total_sales_by_product
from salesdb.orders;