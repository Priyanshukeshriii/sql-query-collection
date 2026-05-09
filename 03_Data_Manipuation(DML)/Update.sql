-- change the phone number of person with id 4
UPDATE persons
set phone = "2801934011"
where id = 4;
-- without where clause it will update all the records in the table and set the phone number to 2801934011 which is not what we want. so always use where clause with update statement to avoid such mistakes.
SELECT *
FROM persons
where id = 4;
SELECT *
from customers;
-- as there are many null values so just remove them
-- removing the null values from the table customers
UPDATE customers
set country = "india",
    score = 1000
WHERE country is NULL
    or score is NULL;

SELECT *
FROM customers;