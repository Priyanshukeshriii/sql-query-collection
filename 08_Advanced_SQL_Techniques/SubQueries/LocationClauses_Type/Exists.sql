

-- ? show the details of orders made by customers in germany

SELECT
*
FROM salesdb.orders o
where EXISTS(
    SELECT 1
    from salesdb.customers c
    WHERE country = 'Germany'
    and o.customerid = c.customerid
);

SELECT
*
FROM salesdb.orders o
where not EXISTS(
    SELECT 1
    from salesdb.customers c
    WHERE country = 'Germany'
    and o.customerid = c.customerid
);