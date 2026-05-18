

-- this return 0 or 1, 1 means true and 0 means false
SELECT
shipaddress,
shipaddress is null as is_shipaddress_null,
shipaddress is not null as is_shipaddress_not_null
from salesdb.orders;