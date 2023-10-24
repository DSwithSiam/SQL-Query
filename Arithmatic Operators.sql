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

select 20 + 10;

select Credit + 20
from Course;

create table marks (
Roll char(4) primary key,
Eng int, 
Math int
);

insert into marks (Roll, Eng, Math) values('0001', 80, 96);
insert into marks (Roll, Eng, Math) values('0002', 60, 78);
insert into marks (Roll, Eng, Math) values('0003', 80, 98);
insert into marks (Roll, Eng, Math) values('0004', 85, 88);

delete from marks;

select Eng + Math
from Marks;