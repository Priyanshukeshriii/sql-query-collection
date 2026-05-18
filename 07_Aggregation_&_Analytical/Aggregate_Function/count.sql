SELECT
count(*) as total_rows,
count(distinct country) as total_countries,
count(customerid) as total_customers,
count(distinct customerid) as unique_customers
from salesdb.customers;