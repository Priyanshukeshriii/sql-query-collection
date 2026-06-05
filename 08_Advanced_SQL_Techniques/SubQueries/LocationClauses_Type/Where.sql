
-- ! comparisoin operators
-- ? Find the product that have a price higher than the average price of all products

SELECT *
from salesdb.products
where price > (SELECT avg(price)  from salesdb.products);

-- ! IN operator
-- ? show the details of orders made by customers in Germany
select *
from salesdb.orders
where customerid in (select customerid from salesdb.customers where country = 'Germany');

