-- Like Operator: used to filter data based on a specified pattern. The syntax for the LIKE operator is as follows:

SELECT * from customers
where first_name like "M%";

SELECT * from customers
where first_name like "%n";

SELECT * from customers
where first_name like "%r%";


SELECT * from customers
where first_name like "_a%";
