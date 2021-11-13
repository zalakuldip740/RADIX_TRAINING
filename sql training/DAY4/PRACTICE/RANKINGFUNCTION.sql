	
	               -- SQLITE WINDOWS FUNCTION(RANKING FUNCTION)
				   
				   
	
	SELECT FirstName,Salary,dense_rank()OVER (ORDER BY Salary DESC) AS RANK  FROM Employees LIMIT 10;
	
	-- DEYTAILS OF EMPLOYEE EHO HAVING  2ND HEIGHEST POSITION 
	
	SELECT FirstName,Salary,dense_rank()OVER (ORDER BY Salary DESC) AS RANK FROM Employees LIMIT 1 OFFSET 1;
	
	
	
	SELECT FirstName,Salary,JobId,dense_rank()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees;
	
	
	SELECT * FROM (SELECT FirstName,Salary,JobId ,dense_rank()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   ORDER BY RANK;
   
   -- 1ST HEIGHEST
   SELECT * FROM (SELECT FirstName,Salary,JobId, dense_rank()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   WHERE RANK=1
   ORDER BY RANK
   LIMIT 1;
   
   
   SELECT * FROM (SELECT FirstName,Salary,JobId, rank()OVER ( ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   ORDER BY RANK;
   
   SELECT * FROM (SELECT FirstName,Salary,JobId, rank()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   ORDER BY RANK;
   
   
   SELECT * FROM (SELECT FirstName,Salary,JobId, row_number()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   ORDER BY RANK;
   
    SELECT * FROM (SELECT FirstName,Salary,JobId, row_number()OVER (ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   ORDER BY RANK;
   
   
   -- FIND 7TH HEIGHEST 
   SELECT * FROM (SELECT FirstName,Salary,JobId, row_number()OVER ( PARTITION BY JobId ORDER BY Salary DESC) AS RANK FROM Employees)RANKTABLE
   WHERE RANK=7
   ORDER BY RANK;
   
   
   
	
	
	
	
	
	