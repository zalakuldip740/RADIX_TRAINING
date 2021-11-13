-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.

	 SELECT D.DepartmentID,D.DepartmentName,L.LocationID,L.StreetAddress,L.City,L.StateProvince,L.Country_Name FROM Locations L
	 JOIN Departments D ON L.LocationID=D.LocationID;
	 
-- 2. Write a query to find the names (first_name, last name), department ID and name of all the employees.
	 
	 SELECT E.FirstName|| ' '||E.LastName AS Name,E.DepartmentID,D.DepartmentName FROM Employees E JOIN Departments D 
	 ON E.DepartmentID=D.DepartmentID;

-- 3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.
	 
	SELECT E.FirstName|| ' '||E.LastName AS Name,E.JobId,E.DepartmentID,D.DepartmentName FROM Employees E JOIN Departments D
	ON E.DepartmentID=D.DepartmentID JOIN Locations L ON D.LocationID=L.LocationID WHERE L.Country_Name='London';

-- 4. Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name).

	 SELECT E1.EmployeeID,E1.LastName AS Name,E1.ManagerID,E2.LastName FROM Employees E1 JOIN Employees E2
	 ON E1.ManagerID=E2.EmployeeID;

-- 5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.

	 SELECT FirstName|| ' '||LastName AS Name,JoiningDate FROM Employees WHERE JoiningDate>	 
	 (SELECT JoiningDate FROM Employees WHERE FirstName='Jones');

-- 6. Write a query to get the department name and number of employees in the department.
	 
	 SELECT D.DepartmentName,count(E.DepartmentID)AS NO_OF_EMPLOYEES FROM Employees E JOIN Departments D 
	 ON E.DepartmentID=D.DepartmentID GROUP BY E.DepartmentID;

-- 7. Find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history.

	 SELECT EmployeeID,JobId AS Job_Title,julianday(EndDate)-julianday(StartDate)AS DIFF FROM JobHistory WHERE DepartmentID=90;
	
-- 8. Write a query to display the department ID, department name and manager first name.

	 SELECT D.DepartmentID,D.DepartmentName,E.FirstName FROM Departments D JOIN Employees E
	 ON D.DepartmentID=E.DepartmentID;

-- 9. Write a query to display the department name, manager name, and city.

	 SELECT D.DepartmentName,E.FirstName AS MANAGER_NAME,L.City FROM Departments D 
	 JOIN Employees E ON  D.DepartmentID=E.DepartmentID JOIN Locations L
	 ON D.LocationID=L.LocationID;

-- 10. Write a query to display the job title and average salary of employees. 

	 SELECT JobId AS JOB_TITLE,avg(Salary) FROM Employees GROUP BY JobId;

-- 11. Display job title, employee name, and the difference between salary of the employee and minimum salary for the job.

	 SELECT J.Job_Title,E.FirstName AS EMPLOYEE_NAME,E.Salary-J.Min_Salary AS DIFF FROM Employees E JOIN Jobs J
	 ON E.JobId=J.JobId;

-- 12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.

	 SELECT JobHistory.* FROM JobHistory JOIN Employees ON JobHistory.EmployeeID=Employees.EmployeeID WHERE Employees.Salary>10000;

-- 13. Write a query to display department name, name (first_name, last_name), hire date, 
-- salary of the manager for all managers whose experience is more than 15 years.

	 SELECT D.DepartmentName,E.FirstName|| ' '||E.LastName AS Name,E.JoiningDate,E.Salary FROM Employees E
	 JOIN Departments D ON E.EmployeeID=D.ManagerID WHERE date('now')-E.JoiningDate >15;