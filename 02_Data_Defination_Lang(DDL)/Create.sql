create table persons(
    id int primary key,
    name varchar(50) not null,
    birthdate date ,
    phone varchar(10) not null unique
)

select * from persons;



-- this will give the info about the table 
desc persons;

-- this will also give the info about the table

SHOW CREATE TABLE customers;