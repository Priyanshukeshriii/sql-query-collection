SELECT
orderdate,
CONVERT(date_format(orderdate, '%M-%Y-%D--%H:%i:%s') , CHAR(50)) AS orderdate_format
from salesdb.orders;

SELECT
CONVERT('2023-10-23T14:05:04', DATE) AS orderdate_format;
