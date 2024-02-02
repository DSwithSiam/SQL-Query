select Roll, Name, Email, Address, Age
from student;

select *
from student;

select Name
from student;


select * from student
where Roll = '0001';

select Name from student
where Roll = '0001';

select * from course
where (University, CourseName) = ('BUET','CSE');

select CourseName from course
where (University, Credit) = ('BUET','130');
