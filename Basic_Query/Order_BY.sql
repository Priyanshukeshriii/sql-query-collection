select * from customers
ORDER BY score ASC;



-- order by is use to sort the result in ascending or descending order

select * from customers
ORDER BY score DESC;

-- we can also sort by multiple columns
SELECT * from customers
ORDER BY country ASC , score DESC;