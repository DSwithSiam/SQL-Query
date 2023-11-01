use dummydb;
 select employees.first_name, departments.department_name
 from employees, departments
 where employees.department_id = departments.department_id;