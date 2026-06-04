

-- * Database's internal storage for its own information .
-- * A blueprint that keeps track of everything about the databasee itself, not the user data.
-- ! It is stored on disk, and it is used by the database to manage itself.


-- this descibes the structure of the orders table, which is part of the system catalog
DESC salesdb.orders;  -- ! this is the system catalog, which is stored on disk

-- ! Information Schema 
-- * A system-defined schema withh built-in views that provide info about the database, like tables and columns.

select * from information_schema.tables;  -- ! this is the information schema, which is stored on disk
select * from information_schema.columns;  -- ! this is the information schema, which is stored on disk
select * from information_schema.columns;  -- ! this is the information schema, which is stored on disk