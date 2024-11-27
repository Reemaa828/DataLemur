
SELECT department_name, name, salary FROM
(SELECT department_name, name, salary, dense_Rank()over(PARTITION BY department_id ORDER BY salary desc) l
FROM employee e inner join department d using(department_id)
ORDER BY 1,l,2) k
WHERE k.l<=3
