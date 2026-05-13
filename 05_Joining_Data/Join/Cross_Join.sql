

-- Cross Join: Returns the Cartesian product of the two tables. This means that it will return all possible combinations of records from both tables. Be cautious when using cross joins, as they can produce a large number of results if both tables have many records.
SELECT * from customers as c
cross join orders as o;