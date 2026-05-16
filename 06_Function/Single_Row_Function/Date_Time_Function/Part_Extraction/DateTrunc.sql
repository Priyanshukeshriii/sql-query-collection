

SELECT
orderdate ,
-- DATETRUNC('DAY', orderdate) as `day_trunc`
-- this is equivalent to the following
DATE(orderdate) as `day_trunc`,
-- DATETRUNC('month', orderdate) as `month_trunc`
-- this is equivalent to the following
DATE_FORMAT(orderdate, '%Y-%m-01') as `month_trunc`
FROM salesdb.orders;