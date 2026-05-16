
SELECT
orderdate,
week(orderdate) as `week`
FROM salesdb.orders;