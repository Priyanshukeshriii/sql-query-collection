SELECT distinct country from customers ;

select DISTINCT id from customers;

-- this works for postgreSQL but not for MySQL
-- SELECT DISTINCT ON (country) *
-- FROM customers;

-- alternative for MySQL
SELECT c.* from customers c
join (SELECT
Min(id) as id
from customers
group BY country)  t
on c.id = t.id;

-- DISTINCT applies to all selected columns. It will return unique combinations of the specified columns.
SELECT DISTINCT country , score from customers LIMIT 4;

SELECT DISTINCT * from customers limit 4; -- This will return 4 unique rows based on all columns.
