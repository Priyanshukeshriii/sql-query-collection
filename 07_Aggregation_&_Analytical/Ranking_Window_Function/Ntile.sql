

SELECT
    orderid,
    sales,
    Ntile(1) over(order by sales desc) as 
    oneBucket,
    Ntile(2) over(order by sales desc) as
    twoBuckets,
    Ntile(3) over(order by sales desc) as
    threeBuckets,
    Ntile(4) over(order by sales desc) as
    fourBuckets
FROM salesdb.orders;