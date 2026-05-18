

SELECT * 
from salesdb.orders;


-- the following query will return the shipaddress if it is not null, otherwise it will return the billaddress
-- this is correct for Microsoft SQL Server, but not for MySQL or Oracle
SELECT
shipaddress,
billaddress,
ISNULL(shipaddress , billaddress) as finaladdress
from salesdb.orders;

-- the following query will return the shipaddress if it is not null, otherwise it will return the billaddress
-- this is correct for MySQL and Oracle, but not for Microsoft SQL Server
SELECT
shipaddress,
billaddress,
IFNULL(shipaddress , billaddress) as finaladdress
from salesdb.orders;

