delete from persons where id = 21 ;

-- delete the record of row 22 and 23 from customers table
delete from customers where id in (22,23);

select * from persons;

-- delete the record of row 2 ,3 ,4,5 form table persons
delete from persons where id between 2 and 5 ;


-- delete complete table
delete from persons;

-- and
-- * truncate the table will remove all the records from the table but it will not log individual row deletions and it will reset any auto-incrementing keys to their starting value.
TRUNCATE from persons;
