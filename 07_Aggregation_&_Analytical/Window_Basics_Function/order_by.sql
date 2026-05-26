--  rank each order bassed on their sales from
-- highest to lowest for each product
-- Additionally provide details such as order Id , order date for each product

SELECT 
    orderid,
    orderdate,
    productid,
    sales,
    rank() over(order by sales desc) as sales_rank
FROM salesdb.orders;