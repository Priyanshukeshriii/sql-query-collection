
-- * the rank() function handles ties by giving the same rank to rows with the same value in the order by clause, 
-- ! but it skips the next rank.

SELECT
    orderid,
    productid,
    sales,
    rank() over(order by sales desc) as sales_rank
from salesdb.orders;

