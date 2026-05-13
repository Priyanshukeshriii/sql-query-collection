
-- left join returns all the rows from the left table, and the matching rows from the right table. If there is no match, the result is NULL on the right side. The order of the tables matters, as it determines which table is considered the "left" table and which is the "right" table.


SELECT * from customers as c
LEFT JOIN orders as o
on c.id = o.customer_id;


-- `LEFT JOIN` is not commutative, meaning that the order of the tables matters. If we switch the order of the tables, we will get a different result. In this case, we will get all the rows from the `orders` table, and the matching rows from the `customers` table. If there is no match, the result is NULL on the left side.
SELECT * FROM orders as o
LEFT JOIN customers as c
on c.id =  o.customer_id;
