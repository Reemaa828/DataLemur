SELECT tweet_bucket ,count (*) as users_num FROM (
SELECT count(*) as tweet_bucket, user_id 
from tweets 
WHERE extract(year from tweet_date)='2022' 
GROUP BY user_id
) k GROUP BY 1
