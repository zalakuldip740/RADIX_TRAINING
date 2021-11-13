		

			-- 80 QUERIES ADDITIONAL ASSIGNMENT(SQLITE)



-- 1.  Write create table syntax for employee table

	 CREATE TABLE EMPLOYEE(EMPLOYEE_ID INTEGER PRIMARY KEY,FIRST_NAME TEXT NOT NULL,LAST_NAME TEXT NOT NULL,
	 SALARY INTEGER NOT NULL,JOINING_DATE TEXT NOT NULL,DEPARTMENT TEXT NOT NULL);

-- 2. Get all employee details from the employee table

	 SELECT * FROM EMPLOYEE;

-- 3. Get First_Name, Last_Name from employee table

	 SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEE;

-- 4.  Get First_Name from employee table using alias name “Employee Name”

	 SELECT FIRST_NAME AS 'Employee Name' FROM EMPLOYEE;

-- 5.  Get First_Name from employee table in upper case

	 SELECT upper(FIRST_NAME) AS 'First Name' FROM EMPLOYEE;

-- 6. Get First_Name from employee table in lower case

	 SELECT lower(FIRST_NAME) AS 'First Name' FROM EMPLOYEE;

-- 7.  Get unique DEPARTMENT from employee table

	 SELECT DISTINCT DEPARTMENT FROM EMPLOYEE;

-- 8. Select first 3 characters of FIRST_NAME from EMPLOYEE.

	 SELECT substr(FIRST_NAME,1,3) FROM EMPLOYEE;

-- 9.  Get position of 'o' in name 'John' from employee table

	 SELECT instr('John','o');
	                            --OR
					 
	 SELECT instr(FIRST_NAME,'o') FROM EMPLOYEE WHERE FIRST_NAME='John';

-- 10. Get FIRST_NAME from employee table after removing white spaces from right side

	 SELECT rtrim(FIRST_NAME) AS 'First Name' FROM EMPLOYEE;

-- 11. Get FIRST_NAME from employee table after removing white spaces from left side

	 SELECT ltrim(FIRST_NAME) AS 'First Name' FROM EMPLOYEE;

-- 12.  Get length of FIRST_NAME from employee table

	 SELECT FIRST_NAME,length(FIRST_NAME) AS LENGTH FROM EMPLOYEE;

-- 13.  Get First_Name from employee table after replacing 'o' with '$'

	 SELECT replace(FIRST_NAME,'o','$') AS 'First Name' FROM EMPLOYEE;
	 
-- 14. Get First_Name and Last_Name as single column from employee table separated by a '_'

	 SELECT FIRST_NAME|| '_' ||LAST_NAME AS FULLNAME FROM EMPLOYEE;

-- 15. Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table

	 SELECT FIRST_NAME,strftime('%Y',JOINING_DATE)AS 'JOINING YEAR',strftime('%m',JOINING_DATE)AS 'JOINING MONTH',
	 strftime('%d',JOINING_DATE)AS 'JOINING DATE' FROM EMPLOYEE;

-- 16.  Get all employee details from the employee table order by First_Name Ascending

	 SELECT * FROM EMPLOYEE ORDER BY FIRST_NAME;   -- BY DEFAULT ASC

-- 17. Get all employee details from the employee table order by First_Name descending

	 SELECT * FROM EMPLOYEE ORDER BY FIRST_NAME DESC;

-- 18. Get all employee details from the employee table order by First_Name Ascending and Salary descending

	 SELECT * FROM EMPLOYEE ORDER BY FIRST_NAME,SALARY DESC;

-- 19. Get employee details from employee table whose employee name is “John”

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME='John';

-- 20.  Get employee details from employee table whose employee name are “John” and “Roy”

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME IN('John','Roy');

-- 21. Get employee details from employee table whose employee name are not “John” and “Roy”

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME NOT IN('John','Roy');

-- 22. Get employee details from employee table whose first name starts with 'J'

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME like 'J%';

-- 23. Get employee details from employee table whose first name contains 'o'

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME like '%o%'

-- 24. Get employee details from employee table whose first name ends with 'n'

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME like '%n';

-- 25. Get employee details from employee table whose first name ends with 'n' and name contains 4 letters

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE '%n' AND length(FIRST_NAME)=4;

-- 26.  Get employee details from employee table whose first name starts with 'J' and name contains 4 letters

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE 'J%' AND length(FIRST_NAME)=4;

-- 27.  Get employee details from employee table whose Salary greater than 600000

	 SELECT * FROM EMPLOYEE WHERE SALARY>600000;

-- 28.  Get employee details from employee table whose Salary less than 800000

	 SELECT * FROM EMPLOYEE WHERE SALARY<800000;

-- 29. Get employee details from employee table whose Salary between 500000 and 800000

	 SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 500000 AND 800000;

-- 30. Get employee details from employee table whose name is 'John' and 'Michsel'

	 SELECT * FROM EMPLOYEE WHERE FIRST_NAME IN ('John','Michsel');

-- 31. Get employee details from employee table whose joining year is “2013”

	 SELECT * FROM EMPLOYEE WHERE strftime('%Y',JOINING_DATE)='2013';

-- 32. Get employee details from employee table whose joining month is “January”

	 SELECT * FROM EMPLOYEE WHERE strftime('%m',JOINING_DATE)='01';     -- any date function in sqlite  does not gives string output.so here 01 means 'january' 

-- 33. Get employee details from employee table who joined before January 31st 2013

	 SELECT * FROM EMPLOYEE WHERE JOINING_DATE<'2013-01-31';

-- 34.  Get employee details from employee table who joined after January 31st

	 SELECT * FROM EMPLOYEE WHERE strftime('%m-%d',JOINING_DATE)>'01-31';

-- 35.  Get Joining Date and Time from employee table

	 SELECT JOINING_DATE FROM EMPLOYEE;
	 
	 -- OR
	 
	 SELECT strftime('%d-%m-%Y',JOINING_DATE) AS DATE,strftime('%H:%M:%S',JOINING_DATE) AS TIME FROM EMPLOYEE;

-- 36. Get Joining Date,Time including milliseconds from employee table

	 SELECT strftime('%d-%m-%Y',JOINING_DATE) AS DATE,strftime('%H:%M:%S:%f',JOINING_DATE) AS TIME FROM EMPLOYEE; 

-- 37.  Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table

	 SELECT E.EMPLOYEE_ID,E.JOINING_DATE,I.INCENTIVE_DATE,julianday(I.INCENTIVE_DATE)-julianday(strftime('%Y-%m-%d',E.JOINING_DATE))AS DIFF_IN_DAYS
	 FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID-I.EMPLOYEE_REF_ID;

-- 38. Get database date

	 SELECT date('NOW');    -- NO SYSDATE IN SQLITE

-- 39.  Get names of employees from employee table who has '%' in Last_Name. 
	 
	 SELECT FIRST_NAME FROM EMPLOYEE WHERE LAST_NAME NOT IN(replace(LAST_NAME,'%',''));
	 

-- 40.  Get Last Name from employee table after replacing special character with white space

	 SELECT replace(LAST_NAME,'%','')AS 'Last Name' FROM EMPLOYEE;
	 

-- 41.  Get department,total salary with respect to a department from employee table.

	 SELECT DEPARTMENT,SUM(SALARY)AS 'TOTAL SALARY' FROM EMPLOYEE GROUP BY DEPARTMENT;

-- 42. Get department,total salary with respect to a department from employee table order by total salary descending

	 SELECT DEPARTMENT,SUM(SALARY)AS 'TOTAL SALARY' FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY SUM(SALARY) DESC;

-- 43.  Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending

	 SELECT DEPARTMENT,COUNT(DEPARTMENT),SUM(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY SUM(SALARY) DESC;
	 
-- 44. Get department wise average salary from employee table order by salary ascending

	 SELECT DEPARTMENT,AVG(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY AVG(SALARY);

-- 45. Get department wise maximum salary from employee table order by salary ascending

	 SELECT DEPARTMENT,MAX(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY MAX(SALARY);

-- 46.  Get department wise minimum salary from employee table order by salary ascending

	 SELECT DEPARTMENT,MIN(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY MIN(SALARY);

-- 47.  Select no of employees joined with respect to year and month from employee table

	 SELECT strftime('%m-%Y',JOINING_DATE),count(JOINING_DATE) FROM EMPLOYEE GROUP BY strftime('%m-%Y',JOINING_DATE);

-- 48. Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending

	 SELECT * FROM(SELECT DEPARTMENT,SUM(SALARY)AS TOTAL_SALARY FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY SUM(SALARY) DESC)T1
	 WHERE TOTAL_SALARY>800000;

-- 49.  Select first_name, incentive amount from employee and incentives table for those employees who have incentives

	 SELECT E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID; 

-- 50. Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000

	SELECT E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID WHERE I.INCENTIVE_AMOUNT>3000;

-- 51. Select first_name, incentive amount from employee and incentives table for all employes even if they didn't get incentives.

	 SELECT E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E LEFT JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID;

-- 52. Select first_name, incentive amount from employee and incentives table for all employees  
-- even if they didn't get incentives and set incentive amount as 0 for those employees who didn't get incentives.

	 SELECT E.FIRST_NAME,coalesce(I.INCENTIVE_AMOUNT,0) FROM EMPLOYEE E LEFT JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID;

-- 53.  Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join

	 SELECT E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM INCENTIVES I LEFT JOIN EMPLOYEE E ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID; 

-- 54.  Select TOP 2 salary from employee table

	 SELECT SALARY FROM EMPLOYEE LIMIT 2;

-- 55. Select TOP N salary from employee table

	 SELECT SALARY FROM EMPLOYEE LIMIT 10;   -- USE LIMIT N FOR N TOP SALARY WHERE N IS NUMBER

-- 56. Select 2nd Highest salary from employee table	

	 SELECT SALARY FROM EMPLOYEE ORDER BY SALARY DESC LIMIT 1 OFFSET 1;
	 
	               -- OR
				   
	 SELECT SALARY FROM (SELECT SALARY,dense_rank() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEE) WHERE RANK=2;

-- 57.  Select Nth Highest salary from employee table

	 SELECT SALARY FROM (SELECT SALARY,dense_rank() OVER(ORDER BY SALARY DESC)AS RANK FROM EMPLOYEE) WHERE RANK=2; -- USE RANK=N FOR SELECT NTH HEIGHEST SALARY,N IS NUMBER

-- 58.  Select First_Name,LAST_NAME from employee table as separate rows

	 SELECT FIRST_NAME FROM EMPLOYEE
	 UNION
	 SELECT LAST_NAME FROM EMPLOYEE;

-- 59.  What is the difference between UNION and UNION ALL ?

	 --Both UNION and UNION ALL operators combine rows from result sets into a single result set. 
	 --The UNION operator removes eliminate duplicate rows, whereas the UNION ALL operator does not.

-- 60. Select employee details from employee table if data exists in incentive table ?

	 SELECT * FROM EMPLOYEE WHERE EXISTS (SELECT * FROM INCENTIVES);

-- 61. How to fetch data that are common in two query results ?

	 -- USING INTERSECT 

-- 62. Get Employee ID's of those employees who didn't receive incentives without using sub query ?

	 SELECT EMPLOYEE_ID FROM EMPLOYEE LEFT JOIN INCENTIVES ON EMPLOYEE.EMPLOYEE_ID=INCENTIVES.EMPLOYEE_REF_ID WHERE INCENTIVES.INCENTIVE_AMOUNT IS NULL;


-- 63. Select 20 % of salary from John , 10% of Salary for Roy and for other 15 % of salary from employee table

	 SELECT FIRST_NAME,CASE FIRST_NAME
	 WHEN 'John' THEN SALARY*0.2
	 WHEN 'Roy' THEN SALARY*0.1
	 ELSE SALARY*0.15
	 END AS NEW_SALARY
	 FROM EMPLOYEE;

-- 64. Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as 'Services Dept' from employee table

	 UPDATE EMPLOYEE SET DEPARTMENT=
	 CASE DEPARTMENT
	 WHEN 'Banking' THEN 'Bank Dept'
	 WHEN 'Insurance' THEN 'Insurance Dept'
	 WHEN 'Services' THEN 'Services Dept'
	 ELSE 'NONE'
	 END;
	 SELECT * FROM EMPLOYEE;

-- 65. Delete employee data from employee table who got incentives in incentive table

	 DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID IN(SELECT EMPLOYEE_ID FROM EMPLOYEE JOIN INCENTIVES 
	 ON EMPLOYEE.EMPLOYEE_ID=INCENTIVES.EMPLOYEE_REF_ID);
	 
-- 66.  Insert into employee table Last Name with " ' " (Single Quote - Special Character)

	 INSERT INTO EMPLOYEE(LAST_NAME)
	 VALUES('AB''C');

-- 67. Select Last Name from employee table which contain only numbers

	 SELECT LAST_NAME FROM EMPLOYEE WHERE lower(LAST_NAME)=upper(LAST_NAME);

-- 68. Write a query to rank employees based on their incentives for a month.

	 SELECT E.FIRST_NAME,dense_rank() OVER(ORDER BY I.INCENTIVE_AMOUNT DESC)AS RANK FROM EMPLOYEE E JOIN INCENTIVES I
	ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID; 

-- 69. Update incentive table where employee name is 'John'

	 UPDATE INCENTIVES SET INCENTIVE_AMOUNT=8000
	 WHERE EMPLOYEE_REF_ID=(SELECT EMPLOYEE_ID FROM EMPLOYEE WHERE FIRST_NAME='John');

-- 70. Write syntax to delete table employee

	 DROP TABLE EMPLOYEE;

--71.  Write syntax to set EMPLOYEE_ID as primary key in employee table.

	 ALTER TABLE EMPLOYEE ADD CONSTRAINT C1 PRIMARY KEY(EMPLOYEE_ID);   -- NOT SUPPORTED IN SQLITE.

--72.  Write syntax to set 2 fields(EMPLOYEE_ID,FIRST_NAME) as primary key in employee table

	 ALTER TABLE EMPLOYEE ADD CONSTRAINT C1 PRIMARY KEY(EMPLOYEE_ID,FIRST_NAME);   -- NOT SUPPORTED IN SQLITE.

--73. Write syntax to drop primary key on employee table.

	 ALTER TABLE EMPLOYEE DROP PRIMARY KEY;
	                                                    -- NOT SUPPORTED IN SQLITE
	 ALTER TABLE EMPLOYEE DROP CONSTRAINT C1;

	 
-- 74. Write Sql Syntax to create EMPLOYEE_REF_ID in INCENTIVES table as foreign key with respect to EMPLOYEE_ID in employee table 

	 ALTER TABLE INCENTIVES ADD CONSTRAINT FK_KEY
                  FOREIGN KEY (EMPLOYEE_REF_ID)          -- NOT SUPPORTED IN SQLITE
                  REFERENCES EMPLOYEE(EMPLOYEE_ID);

-- 75. Write SQL to drop foreign key on incentive table

	 ALTER TABLE INCENTIVES DROP CONSTRAINT FK_KEY;           -- NOT SUPPORTED IN SQLITE

-- 76. Write query for add new column flag active in employee table

	 ALTER TABLE EMPLOYEE ADD FLAG_ACTIVE TEXT;

-- 77. Add default constraint ‘Y’ to flag active column in employee table

	 ALTER TABLE EMPLOYEE ADD CONSTRAINT DF_KEY DEFAULT 'Y' FOR FLAG_ACTIVE;
	 ALTER TABLE EMPLOYEE ALTER FLAG_ACTIVE SET DEFAULT 'Y';                -- NOT SUPPORTED IN SQLITE
      
	                   -- OR
		ALTER TABLE EMPLOYEE ADD FLAG_ACTIVE TEXT DEFAULT 'Y';
	  
-- 78. Write query for delete column flag active in employee table

	 ALTER TABLE EMPLOYEE DROP FLAG_ACTIVE;       -- OR
	 ALTER TABLE EMPLOYEE DROP COLUMN FLAG_ACTIVE;

-- 79. Add constraint unique key in employee table

	 ALTER TABLE EMPLOYEE ADD CONSTRAINT UK_KEY UNIQUE(FIRST_NAME);   -- NOT SUPPORTED IN SQLITE

-- 80. Remove constraint unique key in employee table

	 ALTER TABLE EMPLOYEE DROP CONSTRAINT UK_KEY;            -- NOT SUPPORTED IN SQLITE




