
-- The HAVING clause is used to filter groups based on a specified condition. It is often used in conjunction with the GROUP BY clause to filter groups of data after they have been aggregated.
SELECT country, 
SUM(score) as total_score
from customers
GROUP BY country
HAVING sum(score) > 800;

-- instance of using alias in having clause
SELECT country, 
SUM(score) as total_score
from customers
GROUP BY country
HAVING total_score > 800;