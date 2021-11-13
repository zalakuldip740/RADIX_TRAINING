
	
	                -- ADDITIONAL  SQLITE WINDOWS FUNCTION(RANKING)


					
	SELECT FirstName,Salary,cume_dist()OVER (ORDER BY Salary DESC) AS NEWSALARY FROM Employees LIMIT 5;
	
	
	SELECT FirstName,Salary,nth_value(Salary,5)OVER (ORDER BY Salary DESC) AS NEWSALARY FROM Employees;
	
	
	
	SELECT FirstName,Salary,JobId, percent_rank()OVER ( PARTITION BY JobId ORDER BY Salary DESC) FROM Employees; --(R-1)/(N-R)
   
	
	
	