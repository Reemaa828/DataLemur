SELECT candidate_id 
from candidates 
WHERE skill in ('Python','Tableau','PostgreSQL') 
GROUP BY 1 having count(*)=3
