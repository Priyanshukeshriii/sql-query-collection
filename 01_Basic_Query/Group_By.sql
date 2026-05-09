-- Group By is used to group rows that have the same values in specified columns into summary rows, like "find the total score for each country". The GROUP BY statement is often used with aggregate functions (like SUM, COUNT, AVG, MAX, MIN) to perform operations on each group of data.

SELECT country , sum(score) as total_score FROM customers
GROUP BY country;

-- In GROUP BY:
-- Every selected column must be either:
-- 1. inside an aggregate function (SUM, COUNT, AVG, MAX, MIN)
-- OR
-- 2. included in the GROUP BY clause
--
-- Avoid using SELECT * with GROUP BY
SELECT * , sum(score) as total_score FROM customers
GROUP BY country;


SELECT country ,first_name, sum(score) as total_score FROM customers
GROUP BY country , first_name;


SELECT country , sum(score) as total_score,
count(*) as total_customers
FROM customers
GROUP BY country;



SELECT country , sum(score) as total_score,
count(id) as total_customers
FROM customers
GROUP BY country;


SELECT country, avg(score) 
as average_score 
from customers
group by country;

SELECT * from customers ;