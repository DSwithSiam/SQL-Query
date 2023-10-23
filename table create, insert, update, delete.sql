use siam;
create table Student(
	Roll char (4) primary key,
	Name varchar(200),
    Marks DOUBLE 
    );

insert into Student
	(Roll, Name, Marks) values(1311, "tamim", 20);

insert into Student
	(Roll, Name) values(1131, "sakib");


set sql_safe_updates = 0;
update Student 
set name = "Md Masipul "
where Roll = 1;

set sql_safe_updates = 1;

delete from Student
	where Roll = 12;









