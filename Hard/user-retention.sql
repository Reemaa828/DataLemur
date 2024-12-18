-- select extract(month from event_date) as month,count(distinct user_id) as monthly_active_users
-- from user_actions 
-- where user_id in (select user_id from user_actions where extract(month from event_date)='06') and extract(month from event_date)='07'
-- group by extract(month from event_date)

with cte as(
select distinct user_id 
from user_actions
where extract(month from event_date)=7 and extract(year from event_Date)=2022
INTERSECT
select distinct user_id 
from user_actions
where extract(month from event_date)=6 and extract(year from event_Date)=2022
)
select '7' as m,count(*)
from cte
