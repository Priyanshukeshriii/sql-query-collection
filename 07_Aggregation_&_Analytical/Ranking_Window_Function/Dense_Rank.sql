-- * Assign a rank to each row
-- * it handles ties by giving the same rank to rows with the same value in the order by clause.
-- ! but it does not skip the next rank, meaning that the next rank will be the same as the previous rank.

select
orderid,
productid,
sales,
dense_rank() over(order by sales desc) as sales_rank
from salesdb.orders;