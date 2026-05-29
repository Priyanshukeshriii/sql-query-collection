
-- * Data segmentation using NTILE() window function
-- divides the dataset into distinct subsets based on cretain criteria;
-- ? segment all orders into 3 categories: high , medium and low sales;

select *,
case when sales_category = 1 then 'High Sales'
     when sales_category = 2 then 'Medium Sales'
     else 'Low Sales' end as sales_category_label
from (SELECT
    orderid,
    sales,
    Ntile(3) over(order by sales desc) as sales_category
FROM salesdb.orders) t;


-- * Equalizing load processing using NTILE() window function
-- ? divide the orders into 4 buckets for parallel processing;
select *,
case when processing_bucket = 1 then 'Bucket 1'
     when processing_bucket = 2 then 'Bucket 2'
     when processing_bucket = 3 then 'Bucket 3'
     else 'Bucket 4' end as processing_bucket_label
from (SELECT
    *,
    Ntile(4) over(order by orderid) as processing_bucket
FROM salesdb.orders) t;
