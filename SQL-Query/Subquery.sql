
select *
from employees
where employee_id = 144;


select *
from employees
where salary < (select salary 
				from employees
				where employee_id = 144 );
                
select max(salary)
from employees;

select first_name
from employees
where salary =(select max(salary)
					from employees);
                    
-- advance -- 
select salary
from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees) );
                    

                    
                    
				