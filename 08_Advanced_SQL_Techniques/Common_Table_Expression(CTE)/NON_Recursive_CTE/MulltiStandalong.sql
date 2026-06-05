

-- Todo: 1. find the total sales per customers
with CTE_Total_Sales AS (
SELECT
    customerid,
    sum(sales) total_sales
from salesdb.orders
GROUP BY customerid)

-- todo: 2. find the last order date for each customer
, CTE_Last_Order as (
    SELECT
        customerid,
        Max(orderdate) as orderdate
    from salesdb.orders
    GROUP BY customerid
)
-- ! Main Query
SELECT
c.customerid,
c.firstname,
c.lastname,
cts.total_sales,
cto.orderdate
from salesdb.customers c
LEFT JOIN CTE_Total_Sales cts
on cts.customerid = c.customerid
LEFT JOIN CTE_Last_Order cto
on c.customerid = cto.customerid;