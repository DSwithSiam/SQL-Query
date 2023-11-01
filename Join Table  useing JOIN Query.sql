use dummydb;

-- inner join / join

select employees.first_name, departments.department_name
from employees
	join departments on employees.department_id = departments.department_id;
    
select employees.first_name, departments.department_name
from employees 
	join departments using (department_id); -- table same name --

-- left join

select employees.first_name, departments.department_name
from employees 
	left join departments on employees.department_id = departments.department_id;
    
select departments.department_name, employees.department_id 
from departments
	left join employees 
    on departments.department_id = employees.department_id
where employees.department_id is null;

-- Right join

select employees.first_name, departments.department_name
from employees 
	right join departments on employees.department_id = departments.department_id;

-- Cross join

select employees.first_name, departments.department_name
from employees
	cross join departments on employees.department_id = departments.department_id;
    
-- Self join

select m.first_name, e.first_name
from employees as e
	join employees as m
    on e.employee_id = m.manager_id;



-- all 

select department_name,  min(salary), avg(salary)
from employees 
	join departments 
    on employees.employee_id = departments.department_id
group by department_name
having min(salary) > 5000;


    
