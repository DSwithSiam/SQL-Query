select *
from employee;

select department, count(*), max(age)
from employee
group by department;

select department, count(*), max(age)
from employee
where department != "HR"
group by department;

select department, max(age)
from employee
where department != "HR"
group by department
having max(age) > 20;

select department, max(age) as maxage
from employee
where department != "HR"
group by department
having maxage > 20;

