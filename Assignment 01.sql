use siam;
-- Answer 01
create table student(
	name varchar(100) not null, 
	roll char(4) primary key,
	email varchar(100) unique, 
	class int not null
);

insert into student(name, roll, email, class) values('siam', '0001', 'siam@gmail.com', 10); 
insert into student(name, roll, email, class) values('tamim', '0002', 'tamim@gmail.com', 8); 
insert into student(name, roll, email, class) values('hamim', '0003', 'hamim@gmail.com', 10); 

create table Library(
	member_id char(4), 
	bookName varchar(200) not null,
    primary key (member_id) ,
    foreign key (member_id) references student(roll)
);

insert into library(member_id, bookName) values ("0001", "Computer Fundamentals");


create table Fees(
	student_roll char(4) primary key,
    course_name varchar(20),
    fee int not null,
    foreign key (student_roll) references student(roll)
    );
    
insert into Fees(student_roll, course_name, fee) values ("0001", "CSE", 700000);


-- Answer 02
create table student2(
	name varchar(100) not null, 
	roll char(4) ,
	email varchar(100) , 
	class int not null,
    age int,
    
    constraint roll_rule primary key(roll),
    constraint email_rule unique (email),
    constraint class_rule check (class < 11 and class > 0),
    constraint age_rule check (age > 12 )
);
insert into student2(name, roll, email, class, age) values('siam', '0002', 'siam2@gmail.com', 10, 20); 


-- Answer 03
-- data: Data is unprocessed information, Ex: siam, tamim, 5220, 4562, 2522, hamim ;
-- Information : The organized form of data is called Information, Ex: name: siam, roll: 2500, id: 6233


-- Answer 04
set sql_safe_updates = 0;
-- work
set sql_safe_updates = 1;



create table Employee
(
	id varchar(10) primary key,
    firstName varchar(50) not null,
    lastName varchar(50) not null,
    age int not null,
    department varchar(20) not null
);

insert into Employee(id, firstName, lastName, age, department) values('1', 'John', 'Doe', 28, "Sales");
insert into Employee(id, firstName, lastName, age, department) values('2', 'Jone', 'Smith', 32, "Marketing");
insert into Employee(id, firstName, lastName, age, department) values('3', 'Michael', 'Johnson', 35, "Finance");
insert into Employee(id, firstName, lastName, age, department) values('4', 'Sarah', 'Brown', 30, "HR");
insert into Employee(id, firstName, lastName, age, department) values('5', 'William', 'Davis', 25, "Engineering");
insert into Employee(id, firstName, lastName, age, department) values('6', 'Emily', 'Wilson', 28, "Sales");
insert into Employee(id, firstName, lastName, age, department) values('7', 'Robert', 'Lee', 33, "Marketing");
insert into Employee(id, firstName, lastName, age, department) values('8', 'Laura', 'Hall', 29, "Finance");
insert into Employee(id, firstName, lastName, age, department) values('9', 'Thomas', 'White', 31, "HR");
insert into Employee(id, firstName, lastName, age, department) values('10', 'Olivia', 'Clark', 27, "Engineering");

-- Answer 05
select distinct department from employee ;

-- Answer 06
select lastName
	from employee 
    order by (age) desc;

-- Answer 07
select lastName
	from employee 
	where ((age > 30) and (department = 'marketing'));
    
-- Answer 08
select *
	from employee ;
    
select firstname, lastName
	from employee ;
    
-- Answer 09
select *
	from employee
    where ((firstName like '%son%') or (lastName like '%son%'));

-- Answer 10
select *
	from employee
    where department in ("Engineering");

select *
	from employee
    where department = "Engineering";

    
