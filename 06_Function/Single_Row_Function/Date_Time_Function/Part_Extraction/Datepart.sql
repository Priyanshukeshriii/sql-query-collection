

-- The DATEPART() function is used to extract a part of a date or datetime expression.
-- this function is used in SQL Server and Sybase. In MySQL, we can use YEAR(), MONTH(), DAY() functions to extract the year, month, and day from a date or datetime expression.
SELECT
orderdate ,
Datepart(year , orderdate) as `year`,
Datepart(month , orderdate) as `month`,
Datepart(day , orderdate) as `day`,
datepart(quarter , orderdate) as `quarter`,
datepart(week , orderdate) as `week`
FROM salesdb.orders;