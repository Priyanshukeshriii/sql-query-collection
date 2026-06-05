

-- ? find the total sales per customers
with CTE_Total_Sales AS (
SELECT
    customerid,
    sum(sales) total_sales
from salesdb.orders
GROUP BY customerid)

-- ! Main Query
SELECT
c.customerid,
c.firstname,
c.lastname,
cts.total_sales
from salesdb.customers c
LEFT JOIN CTE_Total_Sales cts
on cts.customerid = c.customerid;