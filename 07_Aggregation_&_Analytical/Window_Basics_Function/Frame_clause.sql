
select * 
from salesdb.orders; 

select
    orderid,
    orderdate,
    orderstatus,
    sales,
    sum(sales) over(partition by orderstatus order by orderdate rows between current row and 1 following) as sum_sales
from salesdb.orders;


select
    orderid,
    orderdate,
    orderstatus,
    sales,
    sum(sales) over(partition by orderstatus order by orderdate rows between 1 preceding and 1 following) as sum_sales
from salesdb.orders;

-- default frame clause is between unbounded preceding and current row
select
    orderid,
    orderdate,
    orderstatus,
    sales,
    sum(sales) over(partition by orderstatus order by orderdate ) as sum_sales
from salesdb.orders;

-- the default frame when there is no order by clause is between unbounded preceding and unbounded following
select
    orderid,
    orderdate,
    orderstatus,
    sales,
    sum(sales) over(partition by orderstatus) as sum_sales
from salesdb.orders;