
select * 
from salesdb.orders;

-- * The lead function sees the next value lead(sales , 2, 10) means the lead function sees the before 2nd value of sales and if there is no value it will return 10 as default value.
-- ! Note:- The lead function is used to access data from the next row in the same result set without the use of a self-join. It is often used in scenarios where you want to compare values from the current row with values from subsequent rows. 

select
orderid,
orderdate,
sales,
lead(sales,  2 , 10) over(order by orderdate) as lead_sales
from salesdb.orders;