
-- Using salesDB , Retrieve a list of all orders, along with the related customer , product and employee details.
-- for each order, display :
-- order id,customer name, product name, sales amount, product price, salesperson's name

use salesDB;

SELECT o.orderid,
 c.firstname,
 c.lastname,
 p.product,
 p.price,
 o.sales,
 e.firstname,
 e.lastname
from orders as o
left join customers as c
on o.customerid = c.customerid
left join products as p
on p.productid = o.productid
left Join employees as e
on e.employeeid = o.salespersonid
;
