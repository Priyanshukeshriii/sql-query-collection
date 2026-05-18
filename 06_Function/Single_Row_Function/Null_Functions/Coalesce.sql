
SELECT *
from salesdb.orders;


-- the following query will return the shipaddress if it is not null, otherwise it will return the billaddress, and if both are null, it will return 'Not Specified'
-- this is correct for Microsoft SQL Server, MySQL, and Oracle
SELECT
shipaddress,
billaddress,
COALESCE(shipaddress , billaddress , 'Not Specified') as finaladdress
from salesdb.orders;