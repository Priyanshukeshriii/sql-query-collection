

SELECT
orderdate,
STR_TO_DATE(orderdate,'%Y-%m-%d') AS is_date
FROM salesdb.orders;

SELECT
    STR_TO_DATE('2024-06-30', '%Y-%m-%d') AS is_date,
    STR_TO_DATE('202', '%Y-%m-%d') AS is_date2;