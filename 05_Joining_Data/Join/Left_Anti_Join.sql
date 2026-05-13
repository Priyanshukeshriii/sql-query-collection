
-- Left Anti Join: Returns all records from the left table (customers) where there are no matching records in the right table (orders). This is useful for finding records in the left table that do not have a corresponding record in the right table.

SELECT * from customers as c
LEFT JOIN orders as o 
on c.id = o.customer_id
where o.customer_id is null;