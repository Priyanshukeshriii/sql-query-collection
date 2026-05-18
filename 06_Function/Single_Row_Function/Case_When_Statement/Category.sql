

-- make a column when the sale is greater than  50 then high less than 50 but greater than 20 then medium else low from the orders table

SELECT * 
from salesdb.orders;


-- the datatype of the all case should be same
SELECT 
sale_category,
sum(sales) as total_sales
from
(SELECT
sales,
CASE
    when sales > 50 then 'high'
    when sales > 20 then 'medium'
    else 'low'
END as sale_category
from salesdb.orders) as t
GROUP BY sale_category
ORDER BY total_sales Desc;