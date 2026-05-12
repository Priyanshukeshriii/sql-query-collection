
-- And operator: both conditions must be true
SELECT * from customers
WHERE country =  "USA" and score > 0;

-- Or operator: at least one condition must be true
SELECT * from customers
where country =  "USA" or country  = "india";

-- Not operator: negates the condition
SELECT * from customers
where not country = "USA" and not country  = "UK";


-- between operator: checks if a value is within a range
-- here the loer and upper bounds are inclusive
SELECT * from customers 
where score between 500 and 1000;

