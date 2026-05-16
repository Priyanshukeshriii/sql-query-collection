
-- DAYNAME() function is used to extract the name of the day from a date value. It returns the name of the day as a string.
SELECT
orderdate ,
DAYNAME(WEEK,orderdate) as `dayname`
FROM salesdb.orders;

-- Monthname() function is used to extract the month name from a date or datetime value. It returns the full name of the month (e.g., 'January', 'February', etc.) corresponding to the given date.

SELECT
orderdate ,
Monthname(orderdate) as `monthname`
FROM salesdb.orders;
