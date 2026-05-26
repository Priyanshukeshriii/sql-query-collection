
select 
count(*) as total_orders
from salesdb.orders;

-- check the primary key of the orders table
select 
orderid,
count(*) over(PARTITION BY orderid) as checkPK
from salesdb.orders;


select *
from (
    select
    orderid,
count(*) over(PARTITION BY orderid)  checkPK
from salesdb.orders_archive ) t
where checkPK > 1; 

