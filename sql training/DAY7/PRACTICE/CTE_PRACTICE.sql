 
 
 
	                                     
	                                     --   SQLITE  CTE
				WITH  XYZ2
                AS 
				(SELECT E.EMPLOYEE_ID,E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID )
				SELECT * FROM XYZ2;
				
	                                  -- CUSTOM COLUMN 
	           WITH  XYZ2(ID,NAME,AMOUNT)
                AS 
				(SELECT E.EMPLOYEE_ID,E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID )
				
				SELECT ID,NAME FROM XYZ2;
				
				
				 WITH  XYZ2(ID,NAME,AMOUNT)
                AS 
				(SELECT E.EMPLOYEE_ID,E.FIRST_NAME,I.INCENTIVE_AMOUNT FROM EMPLOYEE E JOIN INCENTIVES I ON E.EMPLOYEE_ID=I.EMPLOYEE_REF_ID )
				SELECT SUM(AMOUNT) FROM XYZ2;
				
				
				
				-- derived table 
				
	
	SELECT * FROM (SELECT FirstName,Salary,row_number()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=7;
	
	
	 SELECT * FROM (SELECT DepartmentID,min(Salary)AS MINSALARY FROM Employees 
     GROUP BY DepartmentID)DERIVEDTABLE ORDER BY MINSALARY ;
	 
	 
	 
	    SELECT EmployeeID,FirstName,JoiningDate,Incentive_date,DIFF_DATES FROM(SELECT *,Incentive_date-JoiningDate AS DIFF_DATES FROM Employees INNER JOIN Incentives
		 ON Employees.EmployeeID=Incentives.Employee_refId)DERIVEDTABLE;
			
				
				
				
				
	                                   