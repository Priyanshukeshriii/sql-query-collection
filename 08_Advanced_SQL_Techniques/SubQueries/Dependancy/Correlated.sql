
-- * Subquery is dependent of main query

-- ? Show all customer details and find the total orders of each customer

-- ! main query
SELECT
*,
(select count(*) from salesdb.orders o where o.customerid = c.customerid) total_sales
from salesdb.customers c;