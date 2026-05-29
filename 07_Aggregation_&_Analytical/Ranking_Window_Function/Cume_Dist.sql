
-- ? find the product that fall within the highest 40% od the prices;
select *,
concat(cumulative_distribution * 100, '%') as cumulative_distribution_percentage
from(
select 
product,
price,
cume_Dist() over(order by price) as cumulative_distribution
from salesdb.products) t
where cumulative_distribution <= 0.4;
