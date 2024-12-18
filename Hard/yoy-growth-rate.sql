with cte as
(
SELECT extract(year from transaction_date) as "year",product_id,
sum(Spend) as curr_year_spend
FROM user_transactions
group by product_id,extract(year from transaction_date)
), cte2 as (
select "year",product_id, curr_year_spend,
lag(curr_year_spend)over(partition by product_id order by "year") as prev_year_spend
from cte
)
select *,ROUND(100 * 
    (curr_year_spend - prev_year_spend)
    / prev_year_spend
  , 2) AS yoy_rate 
from cte2;
