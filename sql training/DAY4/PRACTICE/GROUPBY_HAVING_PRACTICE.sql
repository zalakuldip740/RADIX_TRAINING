                -- GROUP BY & HAVING 
				          -- ROLLUP NOT SUPPORTED IN SQLITE
						  
						  
	SELECT JobId,max(Salary) AS MAXSALRY FROM Employees 
	GROUP BY JobId 
	ORDER BY MAX(Salary)DESC;
	
	
	SELECT JobId,count(JobId) AS NO FROM Employees
	GROUP BY JobId
	ORDER BY JobId) DESC;
	
	SELECT JobId,SUM(Salary) AS TOTALSALRY FROM Employees 
	GROUP BY JobId 
	ORDER BY SUM(Salary)DESC;
	
	SELECT JobId,AVG(Salary) AS AVGSALRY FROM Employees 
	GROUP BY JobId 
	ORDER BY AVG(Salary);
	
	
	
	-- HAVING 
	
	SELECT JobId,max(Salary) AS MAXSALRY FROM Employees 
	GROUP BY JobId HAVING max(Salary)>5000
	ORDER BY MAX(Salary)DESC;
	
	
	SELECT JobId,SUM(Salary) AS TOTALSALRY FROM Employees 
	GROUP BY JobId HAVING sum(Salary)<50000
	ORDER BY SUM(Salary)DESC;
	
	
	SELECT JobId,AVG(Salary) AS AVGSALRY FROM Employees 
	GROUP BY JobId HAVING AVG(Salary) BETWEEN 1500 AND 3000
	ORDER BY AVG(Salary);