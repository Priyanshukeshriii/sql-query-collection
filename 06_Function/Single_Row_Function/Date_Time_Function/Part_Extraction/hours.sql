
SELECT
orderdate,
HOUR(orderdate) as `hour`
FROM salesdb.orders;

SELECT
orderdate,
MINUTE(orderdate) as `minute`
FROM salesdb.orders;

SELECT
orderdate,
SECOND(orderdate) as `second`
FROM salesdb.orders;