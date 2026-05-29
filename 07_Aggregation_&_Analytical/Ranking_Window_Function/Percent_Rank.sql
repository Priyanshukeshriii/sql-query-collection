
-- ? find the product that fall within the highest 40% od the prices;

-- ! The error is happening because your MySQL version likely does not support

select *,
concat(percent_rank * 100, '%') as percent_rank_percentage
from(
select 
product,
price,
PERCENT_RANK() over(order by price) as percent_rank
from salesdb.products) t
where percent_rank <= 0.4;