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

create table Course
( 
	University varchar(100),
    CourseName varchar(50),
    Credit int not null,
    
    primary key(University,CourseName)
);

insert into course(University, CourseName, Credit) values('BUET', 'CSE', 140);
insert into course(University, CourseName, Credit) values('BUET', 'EEE', 130);
insert into course(University, CourseName, Credit) values('DIU', 'EEE', 130);
insert into course(University, CourseName, Credit) values('DIU', 'CSE', 140);


select distinct CourseName
from course ;

select name, age
from employee
where (age >= 18)
order by age asc;

select name, age
from employee
order by age desc;


select *
from employee
where (age >= 18)
order by age asc
limit 2
offset 2;

select *
from employee
where (age >= 18)
order by age asc
limit 1, 3;


