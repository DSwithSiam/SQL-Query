use siam;

create table Employees(
	first_name varchar(100) not null,
    last_name varchar(50) not null,
    date_of_birth varchar(20),
    department_id int,
    salary int,
    
    constraint department_ruls primary key(department_id),
    constraint salary_ruls check(salary > 0)
);

create table Departments (
    department_id int,
    department_name varchar(50),
    
    constraint id_ruls foreign key(department_id) references Employees(department_id)
);


use dummydb;
select max(salary)
from employees
where salary != (select max(salary)
				from employees)
;

use dummydb;
select max(salary)
from employees;


select department_name, avg(salary)
from employees 
	join departments 
    on employees.department_id = departments.department_id
group by department_name;
    
    
    
select salary
from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees) );
use dummydb;

select first_name
from employees
where  salary < (select max(salary)
	from employees
	where first_name = 'Steven');
    

select job_title, count(employee_id)
from jobs 
	join job_history 
    on jobs.job_id = job_history.job_id
group by job_title;
    
    
select department_name
from employees 
	join departments 
    on employees.department_id = departments.department_id
where department_name = null;

    