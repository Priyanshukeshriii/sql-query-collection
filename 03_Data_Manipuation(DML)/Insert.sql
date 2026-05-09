INSERT into persons(id, name, phone) values(6,"priyanshu", "1234567850"),
(2,"priyanshu", "1234567891"),
(3,"priyanshu", "1234567892"),
(4,"priyanshu", "1234567893"),
(5,"priyanshu", "1234567894");


INSERT into persons values(7,"priyanshu", "1234567895");

SELECT * from persons;

desc persons;
desc customers;

-- as i have made the phone number unique but their is no column is persent in the table customers so i need to fill the persons table with static value of phone number to avoid the error so i will alter the unique constraint from the phone column.

alter table persons
drop key phone;
-- add unique(phone);

-- insert customers values to persons table
insert into persons (id , name ,phone)
SELECT (id + 20) , first_name, 1234567890 as phone 
from customers 
;


INSERT into customers (id , first_name) 
values(21,"bob"),
(22,"alice"),
(23,"john"),
(24,"doe"),
(25,"jane");

SELECT * from persons;