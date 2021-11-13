               --SQLITE
			   -- ASSIGNMENT DAY 4
			   
			   
 -- 1.  Write a query to rank employees based on their salary for a month.
  
 
   SELECT FirstName,Salary,row_number()OVER(ORDER BY Salary DESC) AS RANK FROM Employees;
   
   SELECT FirstName,Salary,rank()OVER(ORDER BY Salary DESC) AS RANK FROM Employees;
   
   SELECT FirstName,Salary,dense_rank()OVER(ORDER BY Salary DESC) AS RANK FROM Employees;
   
   
  -- 2.  Select 4th Highest salary from employee table using ranking function.
  
  SELECT * FROM (SELECT FirstName,Salary,row_number()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  SELECT * FROM (SELECT FirstName,Salary,rank()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  SELECT * FROM (SELECT FirstName,Salary,dense_rank()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE WHERE RANK=4;
  
  
  -- 3.  Get department, total salary with respect to a department from employee table.
  
  SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
  GROUP BY DepartmentID;
  
  -- 4.  Get department, total salary with respect to a department from employee table order by total salary descending.
  
     SELECT * FROM (SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
     GROUP BY DepartmentID) ORDER BY TOTALSALARY DESC;
	 
  -- 5.  Get department wise maximum salary from employee table order by salary ascending.
  
    SELECT * FROM (SELECT DepartmentID,max(Salary)AS MAXSALARY FROM Employees 
     GROUP BY DepartmentID) ORDER BY MAXSALARY ;
  
  -- 6.  Get department wise minimum salary from employee table order by salary ascending
  
    SELECT * FROM (SELECT DepartmentID,min(Salary)AS MINSALARY FROM Employees 
     GROUP BY DepartmentID) ORDER BY MINSALARY ;
	 
  -- 7.  Select department, total salary with respect to a department from employee table where 
         -- total salary greater than 50000 order by TotalSalary descending
		 
	 SELECT * FROM (SELECT DepartmentID,sum(Salary)AS TOTALSALARY FROM Employees 
     GROUP BY DepartmentID) WHERE TOTALSALARY>50000
	 ORDER BY TOTALSALARY DESC;