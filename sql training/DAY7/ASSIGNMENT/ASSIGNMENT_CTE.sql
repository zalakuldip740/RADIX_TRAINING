              --CTE ASSIGNMENT USING DAY4 ASSIGNMENT
			     
				 
					   
			   
 -- 1.  Write a query to rank employees based on their salary for a month.
  
	WITH A1 AS
   (SELECT FirstName,row_number()OVER(ORDER BY Salary DESC) AS RANK FROM Employees)
   SELECT * FROM A1;
   
   
  -- 2.  Select 4th Highest salary from employee table using ranking function.
  
  WITH A1 AS
  (SELECT Salary,row_number()OVER (ORDER BY Salary DESC) AS RANK FROM Employees) 
  SELECT Salary FROM A1 WHERE RANK=4;

  
  -- 3.  Get department, total salary with respect to a department from employee table.
  
  WITH  A2(DepartmentID,TOTAL_SALARY) AS
  (SELECT DepartmentID,sum(Salary) FROM Employees 
  GROUP BY DepartmentID)
  SELECT * FROM A2;
  
  -- 4.  Get department, total salary with respect to a department from employee table order by total salary descending.
  
	  WITH A1 AS
     (SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
     GROUP BY DepartmentID)
	 SELECT * FROM A1 ORDER BY TOTALSALARY DESC;
	 
  -- 5.  Get department wise maximum salary from employee table order by salary ascending.
  
	 WITH A1(DepartmentID,MAXSALARY) AS
    (SELECT DepartmentID,max(Salary) FROM Employees 
     GROUP BY DepartmentID) 
	 SELECT * FROM A1 ORDER BY MAXSALARY;
  
  -- 6.  Get department wise minimum salary from employee table order by salary ascending
  
	 WITH A1(Department,MINSALARY) AS
    (SELECT DepartmentID,min(Salary) FROM Employees 
     GROUP BY DepartmentID) 
	SELECT * FROM A1 ORDER BY MINSALARY;
	 
  -- 7.  Select department, total salary with respect to a department from employee table where 
         -- total salary greater than 50000 order by TotalSalary descending
		 
	 WITH A1(DEPARTMENT,TOTALSALARY) AS
	 (SELECT DepartmentID,sum(Salary) FROM Employees 
     GROUP BY DepartmentID)
	 SELECT * FROM A1 WHERE TOTALSALARY>50000 ORDER BY TOTALSALARY DESC;
	 
	 
	                              --CTE ASSIGNMENT USING DAY5 ASSIGNMENT
								  
								  
		-- 1.  Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.
			
		  WITH A1(EmployeeID,DIFF_DATES) AS
	     (SELECT EmployeeID,Incentive_date-JoiningDate FROM Employees INNER JOIN Incentives
		 ON Employees.EmployeeID=Incentives.Employee_refId)
		 SELECT * FROM A1;
	
	-- 2.  Select first_name, incentive amount from employee and incentives table for those employees who have incentive amount greater than 3000
	
	      WITH A1 AS
		 (SELECT FirstName,incentive_amt FROM Employees INNER JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId)
		 SELECT * FROM A1 WHERE incentive_amt>3000;
		 
     -- 3.  Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
	 
	     WITH A1 AS
		 (SELECT FirstName,incentive_amt FROM Employees LEFT JOIN Incentives 
		 ON Employees.EmployeeID=Incentives.Employee_refId)
		 SELECT * FROM A1;
		 
		 
	-- 4.  Select EmployeeName, ManagerName from the employee table.
	
	     WITH A1(EMPLOYEENAME,MANAGERNAME) AS
		 (SELECT a.FirstName,b.FirstName FROM Employees a  JOIN Employees b 
		 ON b.EmployeeID=a.ManagerID)
          SELECT * FROM A1;		 
		 
		 
	 -- Select first_name, incentive amount from employee and incentives table for all employees 
	 -- even if they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.
	 
	
	  WITH A1(FIRSTNAME,SALARY) AS
	 (SELECT FirstName,coalesce(incentive_amt,0) FROM Employees LEFT JOIN Incentives  
	 ON EmployeeID=Employee_refId)
     SELECT * FROM A1;	 
	