/*
 where is use to put the condition before Aggregation
 */


SELECT *
FROM customers;


SELECT *
FROM customers
WHERE score > 800;

select first_name from customers
where country = 'USA';

SELECT * from customers
where score!=0;