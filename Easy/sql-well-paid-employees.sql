SELECT m.employee_id, m.name as employee_name
FROM employee e inner join employee m 
on e.employee_id=m.manager_id
where m.salary > e.salary
