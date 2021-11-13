                         
						 
						          -- CASE STATEMENT
			
	SELECT EmployeeID,FirstName,LastName,Salary,
       CASE Salary >10000
           WHEN 1  THEN 'GOOD SALARY' 
           ELSE 'LOW SALARY' 
       END AS MARK
FROM 
    Employees LIMIT 5;
	
	
	-- ASSIGNMENT QUE SOLVED USING CASE 
	
	 UPDATE Employees SET Salary=
	CASE DepartmentID 
	WHEN 40 THEN Salary + (Salary*0.25)
	WHEN 90 THEN Salary + (Salary*0.15)
	WHEN 110 THEN Salary + (Salary*0.10)
	ELSE Salary
	END;
	
	
	