

-- ? find the lowest and highest sales for each product

SELECT
    orderid,
    productid,
    sales,
    first_value(sales) over(partition by productid order by sales) as lowest_sales,
    last_value(sales) over(partition by productid order by sales rows between current row and unbounded FOLLOWING) as highest_sales
from salesdb.orders;