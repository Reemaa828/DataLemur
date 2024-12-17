with cte_c  as (
SELECT p.caller_id,p.receiver_id, country_id as caller_country
FROM phone_calls p inner join phone_info k on p.caller_id=k.caller_id
),
cte_R as(
SELECT p.caller_id,p.receiver_id, country_id as receiver_country
FROM phone_calls p inner join phone_info k on p.receiver_id=k.caller_id
)
SELECT round(100.0*sum(case when caller_country<>receiver_country then 1 else 0 END)/count(*),1)  International_calls_pct
from cte_C inner join cte_R using(receiver_id,caller_id)
