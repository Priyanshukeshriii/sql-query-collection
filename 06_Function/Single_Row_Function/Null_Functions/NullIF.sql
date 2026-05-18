
-- use case in divide by zero

SELECT *
from salesdb.orders;

SELECT
orderid,
quantity,
sales,
sales /nullif(quantity,0) as sales_per_unit
from salesdb.orders;