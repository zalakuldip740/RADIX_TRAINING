              
			  
			  -- DAY 6 ASSIGNMENT 
			  -- SUBQUERIES AND VIEWS
			  
			  
 
-- 1. Select employee details from employee table if data exists in incentive table ?

	 SELECT * FROM Employees WHERE EXISTS (SELECT * FROM Incentives);

-- 2. Find Salary of the employee whose salary is more than Roy Salary.

	 SELECT FirstName,Salary FROM Employees WHERE Salary>(SELECT Salary FROM Employees WHERE FirstName='Roy');
	 
-- 3. Create a view to select FirstName,LastName,Salary,JoiningDate,IncentiveDate and IncentiveAmount

	 CREATE VIEW V1
	 AS 
	 SELECT E.FirstName,E.LastName,E.Salary,E.JoiningDate,I.Incentive_date,I.incentive_amt FROM Employees E JOIN
	 Incentives I ON E.EmployeeID=I.Employee_refId;
	 

-- 4. Create a view to select Select first_name, incentive amount from employee and incentives table for
--  those employees who have incentives and incentive amount greater than 3000

	  CREATE VIEW V2
	  AS
	  SELECT E.FirstName,I.incentive_amt FROM Employees E JOIN
	 Incentives I ON E.EmployeeID=I.Employee_refId WHERE I.incentive_amt>3000;
	 


--  *. Create a View to Find the names (first_name, last_name), job, department number, and department name 
--  of the employees who work in London

	 CREATE VIEW V3
	 AS 
	 SELECT E.FirstName,E.LastName,E.Salary,E.JobId,E.DepartmentID,D.DepartmentName FROM Employees E JOIN
	 Departments D ON E.DepartmentID=D.DepartmentID JOIN Locations L ON D.LocationID=L.LocationID
	 WHERE L.Country_Name='London';
	 
	 

--  *. Create a View to get the department name and number of employees in the department.

	 CREATE VIEW V4(Department,NO_OF_EMPLOYEE)
	 AS 
	 SELECT D.DepartmentName,COUNT(E.DepartmentID) FROM Employees E JOIN Departments D
	 ON E.DepartmentID=D.DepartmentID GROUP BY E.DepartmentID;

--  *. Find the employee ID, job title, number of days between ending date and starting date for all jobs 
-- in department 90 from job history.

	 SELECT EmployeeID,JobId AS JobTitle,julianday(EndDate)-julianday(StartDate) AS DIFF FROM JobHistory WHERE DepartmentID=90;

--  *. Write a View to display the department name, manager name, and city.

	 CREATE VIEW V5
	 AS
	 SELECT D.DepartmentName,E.FirstName AS MANAGER_NAME,L.City FROM Employees E JOIN Departments D
	 ON E.DepartmentID=D.DepartmentID JOIN Locations L ON D.LocationID=L.LocationID;

--  *. Create a View to display department name, name (first_name, last_name), hire date, salary of the manager
-- for all managers whose experience is more than 15 years.

	 CREATE VIEW V6
	 AS
	  SELECT D.DepartmentName,E.FirstName|| ' '||E.LastName AS Name,E.JoiningDate,E.Salary FROM Employees E
	 JOIN Departments D ON E.EmployeeID=D.ManagerID WHERE date('now')-E.JoiningDate >15;