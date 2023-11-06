use dummydb;

-- UNION
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000
UNION
SELECT *
FROM EMPLOYEES
WHERE department_id = 100;

-- UNION ALL
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000
UNION ALL
SELECT *
FROM EMPLOYEES
WHERE department_id = 100;

-- INTERSECTION
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000
INTERSECT
SELECT *
FROM EMPLOYEES
WHERE department_id = 100;

-- MINUS 
SELECT *
FROM EMPLOYEES
WHERE SALARY > 10000 AND department_id = 100;