use siam;

create table Student(
	Name varchar(200) not null,
    Roll char(4) primary key,
    Email varchar(100) unique,
    Address varchar(300),
    Age int check(age > 17)
    );

create table Student(
	Name varchar(200) not null,
    Roll char(4) ,
    Email varchar(100) ,
    Address varchar(300),
    Age int ,
    
	primary key(Name),
    unique (Email),
    check(age > 17)
    );

create table Student(
	Name varchar(200) not null,
    Roll char(4) ,
    Email varchar(100) ,
    Address varchar(300),
    Age int ,

    constraint roll_rule primary key(Name),
    constraint emai_rule unique (Email),
    constraint age_check check(age > 17)
    );
    
insert into Student(Name, Roll, Email, Address, Age)
	values ("Siam", "0001", 'masipulislam@gmail.com', 'dhaka', 18);
insert into Student(Name, Roll, Email, Address, Age)
	values ("Siam", "0002", 'masipulislam2@gmail.com', 'dhaka', 25);

create table Library(
	BookName varchar(200),
	Hired_Roll char(4),
	primary key(BookName),
	foreign key(Hired_Roll) references Student(Roll)
);


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
    