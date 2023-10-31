use siam;

select upper ("asdfs");
select lower ("ASFGG");

select upper(lastname)
from employee;

select radians(1520);
select cos(radians(1520));
select cos(520);
select pi();
select round(2.51555, 2);

-- group funtion--

select max(age)
from employee;

select min(age)
from employee;

select count(age)
from employee;

select count(*)
from employee;

select sum(age)
from employee;

select avg(age)
from employee;


