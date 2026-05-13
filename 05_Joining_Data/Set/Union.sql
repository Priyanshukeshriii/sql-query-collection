-- you can only use UNION to combine the results of two or more SELECT statements. Each SELECT statement within the UNION must have the same number of columns in the result sets with similar data types. Also, the columns in each SELECT statement must be in the same order.

-- the order of the columns in the SELECT statements must be the same for all SELECT statements in the UNION. The column names in the result set will be taken from the first SELECT statement. 
-- the column names in the result set will be taken from the first SELECT statement.
-- by defining the alises for the columns in the first SELECT statement, you can control the column names in the final result set.
use salesDB;
SELECT 
    firstname,
    lastname
from salesdb.customers

-- no duplicates will be included in the result set when using UNION. If you want to include duplicates, you can use UNION ALL instead of UNION.
union 

select 
    firstname,
    lastname
from salesdb.employees
order BY firstname, lastname;





-- inserting duplicate records in customers table to show the difference between UNION and UNION ALL
INSERT into salesdb.customers
values(10, "priyanshu" , "keshri" , "India", 1000);
INSERT into salesdb.customers
values(11, "priyanshu" , "keshri" , "India", 1000);