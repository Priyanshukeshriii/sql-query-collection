
-- concat() a string with null returns null
-- doing any operation with null returns null
-- how to handle null values in concat 
SELECT 
firstname,
lastname,
concat(firstname," ", lastname)as fullname
from salesdb.customers;