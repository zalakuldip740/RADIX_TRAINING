
                        --  SQLITE


  -- 1.  Write a SQL statement to change the Email column of Employees table with ‘not available’ for all employees.
   
   UPDATE Employees SET Email='not available';
   
   
  -- 2. Write a SQL statement to change the Email and CommissionPct column of employees table with ‘not available’ and 0.10 for all employees.
   
    UPDATE Employees SET Email='not available',CommissionPct='0.10';
	
	
	--3. Write a SQL statement to change the Email and CommissionPct column of employees table with ‘not available’ and 0.10 for those employees whose DepartmentID is 110.
	
	UPDATE Employees SET Email='not available',CommissionPct='0.10' WHERE DepartmentID=110;
	
	
	--4.  Write a SQL statement to change the Email column of employees table with ‘not available’ for those employees whose DepartmentID is 80 and gets a commission is less than 20%
	
	UPDATE Employees SET Email='not available' WHERE DepartmentID=80 AND CommissionPct<20;
	
	UPDATE Employees SET Email='not available' WHERE DepartmentID=80 AND ((CommissionPct*100)/Salary) <20;
	
	
	--5.   Write a SQL statement to change the Email column of employees table with ‘not available’ for those employees who belongs to the ‘Accouning’ department.
	
	UPDATE Employees SET Email='not available' WHERE DepartmentID=(SELECT DepartmentID FROM Departments WHERE DepartmentName='Accounting');
	
	
	--6.   Write a SQL statement to change salary of employee to 8000 whose ID is 105, if the existing salary is less than 5000.
	
	UPDATE Employees SET Salary=8000 WHERE EmployeeID=105 AND Salary<5000;
	
	
	--7.  Write a SQL statement to change job ID of employee which ID is 118, to SH_CLERK if the employee belongs to department, which ID is 30 and the existing job ID does not start with SH.
	
	UPDATE Employees SET JobId='SH_CLERK' WHERE EmployeeID=118 AND DepartmentID=30 AND JobId NOT LIKE 'SH%';
	
	
	--8.  Write a SQL statement to increase the salary of employees under the department 40, 90 and 110 according to the company rules that, salary will be increased by 25% for the department 40, 15% for department 90 and 10% for the department 110 and the rest of the departments will remain same.
	
	UPDATE Employees SET Salary=(Salary*0.25) + Salary WHERE DepartmentID=40;
	UPDATE Employees SET Salary=(Salary*0.15) + Salary WHERE DepartmentID=90;
	UPDATE Employees SET Salary=(Salary*0.10) + Salary  WHERE DepartmentID=110 ;
                                                       
                                            --  OR 


               UPDATE Employees SET Salary=
	CASE DepartmentID 
	WHEN 40 THEN Salary + (Salary*0.25)
	WHEN 90 THEN Salary + (Salary*0.15)
	WHEN 110 THEN Salary + (Salary*0.10)
	ELSE Salary
	END;
	

	
	--9.   Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 20% and commission by 10% .
	
	
	UPDATE Employees SET Salary=Salary+2000,
	Salary=Salary+(Salary*20)/100,
	CommissionPct=CommissionPct +(CommissionPct*10)/100 
	WHERE Salary=(SELECT max(Salary) FROM Employees WHERE JobId='PU_CLERK') OR Salary=(SELECT min(Salary) FROM Employees WHERE JobId='PU_CLERK');
	
	
	
	
	
	Basic Select Queries:
	
	
	--1.  Get all employee details from the Employee table
	
	SELECT * FROM Employees;
	
	
	--2.  Get FirstName, LastName from Employees table
	
	SELECT FirstName,LastName FROM Employees;
	
	--3.  Get FirstName from Employees table using alias name “Employee Name”
	
	SELECT FirstName AS 'Employee Name' FROM Employees;
	
	--4.  Get employee details from Employees table whose Employee Name is “Steven”
	
	SELECT * FROM Employees WHERE FirstName='Steven';
	
	--5.  Get employee details from Employees table whose Employee Name are “Neena” and “Lex”
	
	SELECT * from Employees WHERE FirstName='Neena' OR FirstName='Lex';
	
	--6.  Get employee details from Employees table whose Employee name are not “Neena” and “Neena”
	
	SELECT * from Employees WHERE FirstName!='Neena';
	
	--7.  Get employee details from Employees table whose Salary between 5000 and 8000
	
	SELECT * from Employees WHERE Salary BETWEEN 5000 AND 8000;
	
	--8.   Write a query to get the names (FirstName, LastName), Salary, PF of all the Employees (PF is calculated as 12% of salary).
	
	SELECT FirstName,LastName,Salary,(Salary*0.12)AS Pf from Employees;
	
	--9.  Get employee details from Employees table whose FirstName starts with ‘N’
	
	SELECT * from Employees WHERE FirstName like 'N%';
	
	--10.  Write a query to get unique department ID from Employees table
	
	SELECT DISTINCT DepartmentID FROM Employees;
	
	--11.  Write a query to get all employee details from the employee table order by FirstName, descending.
	
	SELECT * FROM Employees ORDER BY FirstName DESC;
	
	--12.  Write a query to get the EmployeeID, names (FirstName, LastName), salary in ascending order of salary.
	
	SELECT EmployeeID,FirstName,LastName,Salary FROM Employees ORDER BY Salary ASC;

	SELECT EmployeeID,FirstName || ' ' || LastName AS Name,Salary FROM Employees ORDER BY Salary ASC;
	
	--13.  Select TOP 2 salary from employee table
	
	SELECT Salary FROM Employees LIMIT 2;