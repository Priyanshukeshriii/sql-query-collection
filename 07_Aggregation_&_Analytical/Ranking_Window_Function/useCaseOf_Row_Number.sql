
-- ? find top 2 sales for each product;

select *,
count(1) over(partition by productid) as total_sales_by_product
from
(select
    orderid,
    productid,
    sales,
    row_number() over(partition by productid order by sales desc) as sales_rank
from salesdb.orders) t
where sales_rank <= 2;

-- ? find the bottom 2 sales for each product;
select *
from
(SELECT
    orderid,
    productid,
    sales,
    row_number() over(partition by productid order by sales asc) as sales_rank
from salesdb.orders) t
where sales_rank <= 2;



-- ? Assign unique ids to each row of the ordersarchive table;

select *
from salesdb.orders_archive;

select *,
row_number() over(order by orderid) as unique_id
from salesdb.orders_archive;

-- ? identify duplicate rows in the table 'orders_archive'
-- ? and return a clean result without any duplicates;

select *,
row_number() over(partition by orderid ORDER BY creationtime DESC) as row_num
from salesdb.orders_archive;

select *
from (select *,
row_number() over(partition by orderid order by creationtime DESC ) as row_num
from salesdb.orders_archive) t
where row_num = 1;