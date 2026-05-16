

SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 DAY) AS orderdate_plus_7
FROM salesdb.orders;

SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 Month) AS orderdate_plus_7
FROM salesdb.orders;

SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 year) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 hour) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 minute) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_ADD(orderdate,INTERVAL 7 second) AS orderdate_plus_7
FROM salesdb.orders;
