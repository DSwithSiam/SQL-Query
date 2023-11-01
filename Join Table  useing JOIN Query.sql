use dummydb;

select employees.first_name, departments.department_name
from employees 
	join departments on employees.department_id = departments.department_id;
    
select employees.first_name, departments.department_name
from employees 
	join departments using (department_id);