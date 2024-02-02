use siam;

alter table employee
add column Selary int;

alter table employee
drop column Selary;

alter table employee
modify column age int;

select *
from employee;

