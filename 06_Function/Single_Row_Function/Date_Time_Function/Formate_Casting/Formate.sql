-- Date Format can be done by using date_format function in MySQL. It takes two parameters, first is the date and second is the format in which you want to display the date.

SELECT
orderdate,
date_format(orderdate, '%M-%Y-%D--%H:%i:%s') AS orderdate_format
from salesdb.orders;