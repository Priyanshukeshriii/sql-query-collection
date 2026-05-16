
SELECT 
orderdate ,
-- getdate() as current_date
-- NOW() as `current_date`
CURRENT_TIMESTAMP() as `current_date`,
DATE_FORMAT(CURRENT_DATE(), '%Y-%m-%d') AS todays_date
from salesdb.orders;