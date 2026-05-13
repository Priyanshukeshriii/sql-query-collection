
-- Full Join is a combination of Left Join and Right Join. It returns all records when there is a match in either left (table1) or right (table2) table records. If there is no match, the result is NULL on the side of the table that does not have a match.

-- full join is not supported in all databases, but we can achieve the same result using a combination of left join and right join with a union.
SELECT * from customers as c
left  JOIN orders as o
on c.id = o.customer_id

union

select * from customers as c
RIGHT join orders as o
on c.id = o.customer_id;