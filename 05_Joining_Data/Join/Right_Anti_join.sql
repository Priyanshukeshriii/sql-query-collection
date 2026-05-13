
-- Right Anti Join: Returns all records from the right table (orders) where there are no matching records in the left table (customers). This is useful for finding records in the right table that do not have a corresponding record in the left table.
SELECT * from customers as c
RIGHT JOIN orders as o
on c.id = o.customer_id
where c.id is null;