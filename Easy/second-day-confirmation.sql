SELECT user_id
from 
  emails inner join texts using(email_id)
where (action_date::date - signup_Date::date)=1
