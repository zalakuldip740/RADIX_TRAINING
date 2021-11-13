                        --SQLITE AGGREGATE FUNCTIONS

SELECT sum(Salary) from Employees;

SELECT COUNT(DISTINCT FirstName) FROM employees;

SELECT count(*) from Employees;

SELECT avg(Salary) from Employees;

SELECT min(Salary) from Employees;

SELECT max(Salary) from Employees;

SELECT group_concat(Salary) from Employees WHERE JobId='PU_CLERK'; --(NOTE: O/P: 2033,12,12,2008)


SELECT JobId,avg(Salary) AS AVGSALARY from Employees GROUP BY JobId;

SELECT JobId,sum(Salary) AS SALARY from Employees GROUP BY JobId;

SELECT JobId,min(Salary) AS SALARY from Employees GROUP BY JobId ORDER BY Salary DESC;

-- FIRST 3 HEIGHEST SALARY OF PERTICULAR POSITION.

SELECT JobId,max(Salary) AS SALARY from Employees GROUP BY JobId ORDER BY Salary DESC LIMIT 3 ;


--  5TH HEIGHEST SALARY OF PERTICULAR POSITION.

SELECT JobId,max(Salary) AS SALARY from Employees GROUP BY JobId ORDER BY Salary DESC LIMIT 1 OFFSET 4 ;