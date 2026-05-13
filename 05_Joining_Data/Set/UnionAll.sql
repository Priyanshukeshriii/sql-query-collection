


SELECT 
    firstname,
    lastname
from salesdb.customers
-- all duplecate records will be included in the result set when using UNION ALL. If you want to exclude duplicates, you can use UNION instead of UNION ALL.
union all

select 
    firstname,
    lastname
from salesdb.employees
order BY firstname, lastname;