with orders as(
    SELECT 1 id , 'A' category union all
    SELECT 2  , NULL  union all
    SELECT 3  , ''  union all
    SELECT 4  , '  '
)
SELECT *,
length(category) as category_length,
trim(category) as policy1, 
-- here we remove the leading and trailing spaces
length(trim(category)) as policy1_length,
nullif(trim(category),'')  policy2, 
-- here we remove the leading and trailing spaces and if the result is empty string then we return null
length(nullif(trim(category),'')) as policy2_length,
ifnull(nullif(trim(category),''),'N/A') as policy3
from orders;