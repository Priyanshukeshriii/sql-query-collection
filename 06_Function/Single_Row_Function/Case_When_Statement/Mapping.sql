
-- Retrive employee details with gender displayed as full text

SELECT *
from salesdb.employees;

select
employeeid,
CASE
    when gender = 'M' then 'Male'
    when gender = 'F' then 'Female'
END as gender
from salesdb.employees;