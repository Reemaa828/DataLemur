SELECT max(Salary)
from employee
where salary not IN
(SELECT max(Salary)
from employee 
)
;
