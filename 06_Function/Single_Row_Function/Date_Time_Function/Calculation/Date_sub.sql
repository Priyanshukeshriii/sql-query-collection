SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 second) AS orderdate_plus_7
FROM salesdb.orders;

SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 minute) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 hour) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 day) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 month) AS orderdate_plus_7
FROM salesdb.orders;
SELECT
orderdate,
DATE_sub(orderdate,INTERVAL 7 year) AS orderdate_plus_7
FROM salesdb.orders;
