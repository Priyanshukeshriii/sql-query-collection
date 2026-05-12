-- In operators are used to filter data based on a list of values.
-- The syntax for the IN operator is as follows:
SELECT * from customers
where country in ("india", "USA");

-- Not in operator: filters data based on a list of values, but negates the condition
SELECT * from customers
where country not in ("Germany");