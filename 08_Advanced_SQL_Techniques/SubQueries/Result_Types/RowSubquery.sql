
-- * this Subquery returns a single row and multiple columns;

select * from 
(SELECT  productid,sum(quantity) FROM salesdb.orders WHERE productid = 104 GROUP BY productid) t;  -- ! this is a row subquery, which returns a single row