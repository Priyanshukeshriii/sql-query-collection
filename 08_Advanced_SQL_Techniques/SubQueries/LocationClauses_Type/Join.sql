

-- ? show all customer detail and find the total orders of each customer 

select 
c.*,
o.total_orders
from salesdb.customers as c
left JOIN (
    SELECT 
    customerid,
    count(*) total_orders
    from salesdb.orders 
    GROUP BY customerid
    ) as o
on c.customerid = o.customerid;