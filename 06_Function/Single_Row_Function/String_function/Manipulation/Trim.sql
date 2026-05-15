

SELECT firstname,
length(firstname)  length
from salesdb.employees
-- WHERE length(trim(firstname)) != length(firstname);
WHERE trim(firstname) != firstname;