SELECT user_id, (max(post_date)::date - min(post_Date)::date) as days_between
from posts
where extract(YEAR from post_Date)='2021'
GROUP by user_id
having count(*)>1;
