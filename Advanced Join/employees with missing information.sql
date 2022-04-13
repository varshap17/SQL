select employee_id 
from Employees left join Salaries using (employee_id)
where salary is null

union 

select employee_id 
from Employees right join Salaries using (employee_id)
where name is null

order by employee_id asc;

