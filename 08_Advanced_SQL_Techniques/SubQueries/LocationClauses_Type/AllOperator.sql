


-- ? find female employees whose salayies are greater than the salaries of all male employees

SELECT
*
from salesdb.employees
where gender = 'F' and salary >= all (SELECT salary from salesdb.employees where gender = 'M');

select 
    firstname,
    salary,
    gender
from salesdb.employees;