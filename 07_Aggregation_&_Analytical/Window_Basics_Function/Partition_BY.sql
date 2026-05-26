-- find the total sales for each product
-- Additionally provide details such as order Id , order date for each product



-- the below query will not work because we are trying to select columns that are not part of the group by clause or aggregate functions
select *
from salesdb.orders 

select
    orderid,
    orderdate,
    productid,
    sum(sales)
from salesdb.orders
group by productid;


--  the below query will work as we have ibcuded the columns in the group by clause but it will not give the desired output what we want , it will not aggregate the sales for each product but will give the sales for each order id and order date which is not what we want

select
    orderid,
    orderdate,
    productid,
    sum(sales)
from salesdb.orders
group by orderid,
    orderdate,
    productid;


-- the below query will give the desired output as we are using the window function to calculate the total sales for each product while still being able to select the order id and order date for each order
select
    orderid,
    orderdate,
    productid,
    sum(sales) over(partition by productid) as total_sales
    -- the partition by clause is same as the group by clause
from salesdb.orders;

-- the below query will give the total sales for all products without partitioning by product id
select
    orderid,
    orderdate,
    productid,
    sum(sales) over() as total_sales
   
from salesdb.orders;


SELECT
    orderid,
    orderdate,
    productid,
    orderstatus,
    sales,
    sum(sales) over(partition by productid , orderstatus) as total_sales_by_status
FROM salesdb.orders;