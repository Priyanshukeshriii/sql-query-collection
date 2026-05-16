

SELECT
orderdate ,
-- EOMONTH(orderdate) as `eomonth`
-- this is equivalent to the following
Last_DAY(orderdate) as `eomonth`
FROM salesdb.orders;