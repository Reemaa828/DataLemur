with cte as(
SELECT 
  app_id,
  sum(case when event_type='click' then 1 else 0 end) k,
  sum(case when event_type='impression' then 1 else 0 end) as l
FROM 
  events
WHERE 
  timestamp >= '2022-01-01' AND timestamp < '2023-01-01'
group by 
  app_id
)
SELECT app_id, round(100.0*k/l,2) as ctr
from cte;SELECT app_id, round(100.0*k/l),2) as ctr

