-- * The lag function sees the previous value lag(sales , 2, 10) means the lag function sees the before 2nd value of sales and if there is no value it will return 10 as default value.

select
orderid,
orderdate,
sales,
lag(sales,  2 , 10) over(order by orderdate) as lag_sales
from salesdb.orders;

-- ! if there is no value for the lag / lead function it will return null as default value.
select
orderid,
orderdate,
sales,
lag(sales) over(order by orderdate) as lag_sales
from salesdb.orders;