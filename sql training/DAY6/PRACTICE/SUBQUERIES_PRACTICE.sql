								-- SQLITE SUBQUERIES AND UNION
								
	SELECT FirstName,Salary FROM Employees
	WHERE Salary>(SELECT Salary FROM Employees WHERE FirstName='Jennifer');
	
	             
	SELECT FirstName FROM Employees WHERE EmployeeID
	IN(SELECT EmployeeID FROM JobHistory WHERE StartDate='1993-01-13');
	
	  SELECT FirstName||' '||LastName AS Name FROM Employees
	 WHERE EmployeeID IN(SELECT ManagerID FROM Employees);
	 
	 
	 SELECT FirstName||' '||LastName AS Name,Salary FROM Employees 
	 WHERE Salary=(SELECT min(Salary) FROM Employees);
	 
	 
	 
	 
	 
	 -- CORRELATED SUBQUERIES
	 
	 SELECT FirstName,Salary FROM Employees E
      WHERE Salary>(SELECT AVG(Salary) FROM Employees E2 WHERE E2.DepartmentID=E.DepartmentID);