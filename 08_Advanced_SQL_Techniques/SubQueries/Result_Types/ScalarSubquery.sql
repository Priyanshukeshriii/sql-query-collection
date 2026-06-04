
-- * this Subquery returns a single value, average/sum/./. price of all products in the products table 

SELECT
(SELECT AVG(price) FROM salesdb.products) AS avg_price;  -- ! this is a scalar subquery, which returns a single value