

-- Order data are stored in two tables(order ans orderArchive)
-- combine all order data into one single report without duplicates.

SELECT *,
"order" as source
from salesdb.orders
UNION

SELECT *,
"orderArchive" as source
from salesdb.orders_archive
ORDER BY orderid;