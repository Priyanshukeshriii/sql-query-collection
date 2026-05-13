
-- right join returns all the rows from the right table (orders) and the matching rows from the left table (customers). If there is no match, the result is NULL on the left side. The order of the tables matters in a right join.
SELECT * from customers as c
right join orders as o
on c.id = o.customer_id;


-- `RIGHT JOIN` is not commutative, meaning that the order of the tables matters. If we switch the order of the tables, we will get a different result. In this case, we will get all the rows from the `customers` table, and the matching rows from the `orders` table. If there is no match, the result is NULL on the right side.
SELECT * from orders as o
right join customers as c
on c.id =  o.customer_id;
