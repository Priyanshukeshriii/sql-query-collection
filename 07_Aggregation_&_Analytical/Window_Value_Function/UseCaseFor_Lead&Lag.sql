-- ? Analyze the month over month performance by finding the precentage change in sales between the current month and previous month.
select *,
    case
        when previous_month_sales is null then null
        else round(
            abs(total_sales - previous_month_sales) / previous_month_sales * 100,
            2
        )
    end as percentage_change,
    case
        when previous_month_sales is null then "N/A"
        when total_sales > previous_month_sales then "Increase"
        when total_sales < previous_month_sales then "Decrease"
        else "No Change"
    end as performance_trend
from (
        select MONTH(orderdate) as month,
            sum(sales) as total_sales,
            lag(sum(sales)) over(
                order by month(orderdate)
            ) as previous_month_sales
        from salesdb.orders
        group by month(orderdate)
    ) t;
-- ? in order to analyze the customer loyality rank customer based on the average days between their orders

select 
customerid,
avg(days_between_orders) as average_days_between_orders,
rank () over(order by coalesce(avg(days_between_orders) , 99999)) as customer_loyalty_rank
from 
(select 
    customerid,
    orderdate,
    lead(orderdate) over(partition by customerid order by orderdate) as next_order_date,
    datediff(lead(orderdate) over(partition by customerid order by orderdate), orderdate) as days_between_orders
    
from salesdb.orders) t
group by customerid;