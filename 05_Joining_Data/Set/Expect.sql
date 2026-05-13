
-- return the unique row from the first query that are not in the second query. The result set will not include any duplicate rows.
SELECT firstname, lastname
FROM salesdb.customers

except
SELECT firstname, lastname
FROM salesdb.employees;

-- order of the tables does matter in Except
SELECT firstname, lastname
FROM salesdb.employees

except
SELECT firstname, lastname
FROM salesdb.customers;

