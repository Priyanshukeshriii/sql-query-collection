
-- inner join returns only the rows where there is a match in both tables, and the order of the tables does not matter.

SELECT * from customers
INNER JOIN orders
on id = customer_id; 

-- without the inner keyword, it is still an inner join
SELECT * from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is NOT null;