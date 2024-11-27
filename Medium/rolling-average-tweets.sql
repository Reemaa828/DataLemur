select user_id, tweet_date, 
round(avg(tweet_count)over(PARTITION BY user_id ORDER BY tweet_date range between interval '2 days' preceding and current row),2) as rolling_avg_3d 
from tweets
