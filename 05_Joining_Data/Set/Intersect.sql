-- the intersect operator returns the common records from two or more select statements. It eliminates duplicate records from the result set.
-- the order of the tables does not matter in Intersect. The result set will include only the common records from both tables, regardless of the order in which the tables are specified in the query.

SELECT firstname, lastname
from salesdb.customers

intersect

select 
    firstname,
    lastname
from salesdb.employees;