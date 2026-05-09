
-- No. TOP is used in Microsoft SQL Server, not in MySQL.
SELECT top 2 * from customers;

-- In MySQL, you can use the LIMIT clause to achieve the same result.
SELECT * from customers limit 2;

SELECT * from customers limit 2, 1; -- This will skip the first 2 rows and return the next 1 row.

select * FROM customers order by score DESC limit 2; -- This will return the top 2 customers with the highest scores.