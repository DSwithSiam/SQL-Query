with avg_it as
	(	
		select avg(salary) as sal1
        from employees 
        where department_id = 60
    ),
    max_mkt as 
    (
		select max(salary) as sal2
        from employees
        where department_id = 20
    )
select *
from employees
where  salary > (select sal1 from avg_it) and salary < (select sal2 from max_mkt);
    