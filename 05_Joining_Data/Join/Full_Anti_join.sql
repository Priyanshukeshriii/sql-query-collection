
-- Full Anti Join: Combines the results of both left and right anti joins. It returns all records from both tables where there are no matching records in the other table. This is useful for finding records that do not have a corresponding record in either table.
SELECT * from customers as c
LEFT JOIN orders as o 
ON c.id = o.customer_id
WHERE o.customer_id is null

UNION

select * from customers as c
right join orders as o
on c.id =  o.customer_id
where c.id is null;

