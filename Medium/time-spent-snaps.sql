with cte AS
(
SELECT
age_bucket,
sum(case when activity_type='send' then time_spent else 0 END) as time_send,
sum(case when activity_type='open' then time_spent else 0 END) as time_open
FROM activities inner JOIN age_breakdown using(user_id)
group by age_bucket
)
SELECT 
  age_bucket, round((time_send/(time_send+time_open)*100) ,2)as send_perc, round((time_open/(time_send+time_open)*100),2) as open_perc
FROM
  cte
;
