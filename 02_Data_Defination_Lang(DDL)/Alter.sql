ALTER table persons 
ADD email varchar(50) not null unique;

desc persons;


ALTER table persons 
drop  column birthdate;

-- you can remove the contrains as well
alter table persons
modify name varchar(70);

--  and you can also change the datatype and add constraints also.
alter table persons
modify name varchar(70) not null;