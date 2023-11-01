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

-- Right join

select employees.first_name, departments.department_name
from employees 
	right join departments on employees.department_id = departments.department_id;

-- Cross join

select employees.first_name, departments.department_name
from employees 
	cross join departments on employees.department_id = departments.department_id;
