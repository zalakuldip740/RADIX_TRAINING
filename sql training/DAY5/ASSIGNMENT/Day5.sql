                    -- DAY 5 ASSIGNMENT
					
	-- 1.  Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.
	
	     SELECT EmployeeID,FirstName,JoiningDate,Incentive_date,(JoiningDate -Incentive_date) AS DIFF_DATES FROM Employees INNER JOIN Incentives
		 ON Employees.EmployeeID=Incentives.Employee_refId;
	
	-- 2.  Select first_name, incentive amount from employee and incentives table for those employees who have incentive amount greater than 3000
	
	     SELECT FirstName,incentive_amt FROM Employees INNER JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId 
		 WHERE incentive_amt>3000;
		 
     -- 3.  Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
	 
	     SELECT FirstName,incentive_amt FROM Employees LEFT JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId;
		 
		 
	-- 4.  Select EmployeeName, ManagerName from the employee table.
	
	     SELECT a.FirstName AS EmployeeName,b.FirstName AS MANAGERNAME FROM Employees a  JOIN Employees b 
		 ON b.EmployeeID=a.ManagerID;                                                       
		 
		 
	 -- Select first_name, incentive amount from employee and incentives table for all employees 
	 -- even if they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.
	 
	 CREATE TABLE DERIVEDTABLE AS SELECT FirstName,incentive_amt FROM Employees LEFT JOIN Incentives  
	 ON EmployeeID=Employee_refId;
	 UPDATE DERIVEDTABLE SET incentive_amt=0 WHERE incentive_amt IS NULL;
	 SELECT * FROM DERIVEDTABLE;
	 
	                                 -- OR
									 
	 SELECT FirstName,coalesce(incentive_amt,0)AS SALARY FROM Employees LEFT JOIN Incentives  
	 ON EmployeeID=Employee_refId;                                                           
	