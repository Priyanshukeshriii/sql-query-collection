
-- * Column subqueries return a single column of values. They can be used in the SELECT, WHERE, or HAVING clauses of a query.

select productid from
(SELECT  * FROM salesdb.orders WHERE productid = 101 ) t;  -- ! this is a column subquery, which returns a single column of values