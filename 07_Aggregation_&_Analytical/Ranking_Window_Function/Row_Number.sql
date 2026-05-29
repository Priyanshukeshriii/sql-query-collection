

-- * the row_number() function do not handle ties, it gives a unique rank to each row.
-- the $order by$  function is not stable, meaning that the order of rows with the same value in the order by clause is not guaranteed.

SELECT
    orderid,
    productid,
    sales,
    row_number() over(order by sales desc) as sales_rank
from salesdb.orders;