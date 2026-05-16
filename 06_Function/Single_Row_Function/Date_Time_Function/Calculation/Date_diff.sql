

SELECT
orderdate,
DATEdiff(shipdate,orderdate) AS year_diff,
TIMESTAMPDIFF(YEAR,orderdate,shipdate) AS year_diff2,
TIMESTAMPDIFF(MONTH,orderdate,shipdate) AS month_diff,
TIMESTAMPDIFF(DAY,orderdate,shipdate) AS day_diff,
TIMESTAMPDIFF(HOUR,orderdate,shipdate) AS hour_diff,    
TIMESTAMPDIFF(MINUTE,orderdate,shipdate) AS minute_diff,
TIMESTAMPDIFF(SECOND,orderdate,shipdate) AS second_diff
FROM salesdb.orders;