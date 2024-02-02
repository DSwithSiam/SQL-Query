create table Employee(
	ID char(6) primary key,
	Name varchar(100) not null,
    salary int not null,
    age int not null
    );
    
insert into Employee(ID, Name, Salary, Age) values ('100001', 'siam', 50000, 23);
insert into Employee(ID, Name, Salary, Age) values ('100020', 'habib', 30000, 25);
insert into Employee(ID, Name, Salary, Age) values ('100051', 'hamim', 20000, 21);
insert into Employee(ID, Name, Salary, Age) values ('100061', 'tamim', 35000, 26);
    
select name, salary
from employee
where (age > 22) and (salary > 21000);

select name, salary
from employee
where (age > 22) and (salary < 21000 or salary > 30000);