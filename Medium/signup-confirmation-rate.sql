SELECT ROUND(CAST(sum(CASE when signup_action='Confirmed' then 1 ELSE 0 END )as numeric)/COUNT(*),2)   as confirm_rate 
from emails inner join texts using(email_id) 
;
