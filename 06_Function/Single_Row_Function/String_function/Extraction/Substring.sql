
-- the start position is 1 and not 0
-- the start position is inclusive and the end position is exclusive
SELECT 
firstname as name,
substring(firstname, 2,4) as substring_name
from salesdb.employees;


SELECT 
firstname as name,
substring(firstname, 2,length(firstname)) as substring_name
from salesdb.employees;