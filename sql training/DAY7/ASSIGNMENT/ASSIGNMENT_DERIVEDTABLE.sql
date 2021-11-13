


                              -- DERIVED TABLE ASSIGNMENT WITH DAY4
			   
			   
 -- 1.  Write a query to rank employees based on their salary for a month.
  
 
   SELECT FirstName,Salary,RANK FROM(SELECT *,row_number()OVER(ORDER BY Salary DESC) AS RANK FROM Employees)DERIVEDTABLE;
  
   
  -- 2.  Select 4th Highest salary from employee table using ranking function.
  
  SELECT * FROM (SELECT FirstName,Salary,row_number()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  SELECT * FROM (SELECT FirstName,Salary,rank()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  SELECT * FROM (SELECT FirstName,Salary,dense_rank()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  
  
  -- 3.  Get department, total salary with respect to a department from employee table.
  
  SELECT * FROM(SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
  GROUP BY DepartmentID)DERIVEDTABLE;
  
  -- 4.  Get department, total salary with respect to a department from employee table order by total salary descending.
  
     SELECT * FROM (SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
     GROUP BY DepartmentID)DERIVEDTABLE ORDER BY TOTALSALARY DESC;
	 
  -- 5.  Get department wise maximum salary from employee table order by salary ascending.
  
    SELECT * FROM (SELECT DepartmentID,max(Salary)AS MAXSALARY FROM Employees 
     GROUP BY DepartmentID)DERIVEDTABLE ORDER BY MAXSALARY ;
  
  -- 6.  Get department wise minimum salary from employee table order by salary ascending
  
    SELECT * FROM (SELECT DepartmentID,min(Salary)AS MINSALARY FROM Employees 
     GROUP BY DepartmentID)DERIVEDTABLE ORDER BY MINSALARY ;
	 
  -- 7.  Select department, total salary with respect to a department from employee table where 
         -- total salary greater than 50000 order by TotalSalary descending
		 
	 SELECT * FROM (SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
     GROUP BY DepartmentID)DERIVEDTABLE WHERE TOTALSALARY>50000
	 ORDER BY TOTALSALARY DESC;
	 
	 
	 
	              -- DERIVED TABLE ASSIGNMENT WITH DAY5 ASSIGNMENT
				  
				  
		
       -- 1.  Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.
	
	     SELECT EmployeeID,FirstName,JoiningDate,Incentive_date,DIFF_DATES FROM(SELECT *,Incentive_date-JoiningDate AS DIFF_DATES FROM Employees INNER JOIN Incentives
		 ON Employees.EmployeeID=Incentives.Employee_refId)DERIVEDTABLE;
	
	-- 2.  Select first_name, incentive amount from employee and incentives table for those employees who have incentive amount greater than 3000
	
	     SELECT * FROM (SELECT FirstName,incentive_amt FROM Employees INNER JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId)DERIVEDTABLE
		 WHERE incentive_amt>3000;
		 
     -- 3.  Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
	 
	     SELECT * FROM(SELECT FirstName,incentive_amt FROM Employees LEFT JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId)DERIVEDTABLE;
		 
		 
	-- 4.  Select EmployeeName, ManagerName from the employee table.
	
	     SELECT * FROM(SELECT a.FirstName AS EmployeeName,b.FirstName AS MANAGERNAME FROM Employees a  JOIN Employees b 
		 ON b.EmployeeID=a.ManagerID);                                                       
		 
		 
	 -- Select first_name, incentive amount from employee and incentives table for all employees 
	 -- even if they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.
									 
	 SELECT FirstName,coalesce(incentive_amt,0)AS SALARY FROM(SELECT FirstName,incentive_amt FROM Employees LEFT JOIN Incentives  
	 ON EmployeeID=Employee_refId)DERIVEDTABLE;                                                           
	
	 
	 
	 
	 
	 
	 