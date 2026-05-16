-- task 1: - how many orders were placed in each month in a year?

SELECT
-- Date_Format(orderdate, '%Y-%m') as `month`,
MonthName(orderdate) as `month`,
COUNT(*) as `num_orders`
from salesdb.orders
group by `month`
order by `num_orders` Asc;

-- task 2: - how many orders were placed during february?

SELECT
monthname(orderdate) as `month`,
count(*) as `num_orders`
from salesdb.orders
where monthname(orderdate) = 'February'
group by `month`;