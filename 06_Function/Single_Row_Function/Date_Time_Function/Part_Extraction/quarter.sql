
SELECT
orderdate,
QUARTER(orderdate) as `quarter`
FROM salesdb.orders;