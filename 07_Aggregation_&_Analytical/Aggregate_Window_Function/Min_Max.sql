

SELECT
    orderid,
    productid,
    sales,
    min(sales) over() as min_sales,
    max(sales) over() as max_sales,
    min(sales) over(partition by productid) as min_sales_by_product,
    max(sales) over(partition by productid) as max_sales_by_product
from salesdb.orders;