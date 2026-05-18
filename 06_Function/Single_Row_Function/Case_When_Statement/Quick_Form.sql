
SELECT distinct country
from salesdb.customers;


-- mapping the country to region using case when statement
-- this is quick form of case when statement when we have to map one value to another value
SELECT
country,
CASE country
    WHEN 'USA' THEN 'North America'
    WHEN 'Canada' THEN 'North America'
    WHEN 'India' THEN 'Asia'
    WHEN 'China' THEN 'Asia'
    ELSE 'Other'
END AS region
from salesdb.customers;


-- we can also use in operator to make it more concise
SELECT
country,
CASE
    when country in ('USA','Canada') then 'North America'
    when country in ('India','China') then 'Asia'
    else 'Other'
END as region
from salesdb.customers;