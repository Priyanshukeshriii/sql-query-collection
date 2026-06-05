
-- * we need a sclar subquery to use in the select clause;

-- show the product ids ,name , prices  and the  total number of orders;

-- ! first query
select productid,product,price
from salesdb.products;

-- ! Second query
select
count(*) as total_orders
from salesdb.orders;

-- ! we can combine the two queries using a subquery in the select clause to get the desired result;
select
productid,
product,
price,
-- ! subquery
(select count(*) from salesdb.orders as total_sales)
from salesdb.products;

