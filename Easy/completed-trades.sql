SELECT city, count(*) as total_orders
FROM 
  trades inner join users using(user_id)
WHERE
  status='Completed'
group by city
order by 2 DESC
limit 3
;
