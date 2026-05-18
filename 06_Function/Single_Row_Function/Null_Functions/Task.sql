-- find the avg score of all the customers

SELECT * 
from salesdb.customers;

SELECT 
customerid,
score,
AVG(score) over() avgscore,
avg(ifnull(score,0)) over () avgscore2
from salesdb.customers;

-- select the firstname and lastname of the customers, and repersnt them in one column called fullname.
-- and also add 10 bonus point to the scoreof each costomers.
SELECT
firstname,
lastname,
concat(ifnull(firstname,''), ' ', ifnull(lastname,'')) as fullname,
score,
ifnull(score,0) + 10 as bonus_score
from salesdb.customers;

-- sort the customers by their score, and if the score is null,then it should be sorted at the end of the list.

SELECT
customerid,
score,
case when score is null then 1 else 0 end flag
from salesdb.customers
order by  flag , score asc;