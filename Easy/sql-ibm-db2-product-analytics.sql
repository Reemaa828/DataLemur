with cte as(
select k.employee_id,COALESCE(count(distinct query_id),0) as m
from   
queries e right join employees k on k.employee_id=e.employee_id and EXTRACT(month from query_Starttime) between '07' and '09'
group by k.employee_id
)
select m as unique_queries,count(employee_id) as employee_count
from cte
group by m
order by 1;order by 1;

