          -- SELECT 
	
	--DISPLAY ALL DETAILS FROM TABLE.
	
	SELECT * FROM Employees;
	
	-- DISPLAY REQUIRED DETAILS
	
	SELECT FirstName,Salary FROM Employees;
	
	
	--   INSERT INTO 
	
	INSERT INTO XYZ VALUES(5,'KULDIP',5000);
	
	INSERT INTO XYZ VALUES(5,'RUTVIK',8000);    -- ERROR
	
	
	INSERT INTO A1 VALUES(1,'KULDIP','1999/12/01');
	
	INSERT INTO A1 VALUES(2,'RUTVIK','01/11/1998');   -- ERROR BECAUSE B_DATE REQUIRED FORMAT IS '____/__/__'
	
	--  UPDATE 
	
	UPDATE XYZ SET Salary=10000;
	
	UPDATE XYZ SET Salary=15000 WHERE EM_ID=10;
	
	
	--  DELETE 
	
	DELETE FROM XYZ WHERE FIRSTNAME='KULDIP';
	
	DELETE FROM XYZ;    -- DELETE ALL RECORDS
	
	
	-- CONCATE
	
	SELECT 'KULDIPSINH' || ' '|| 'ZALA' AS FULLNAME;
	
	SELECT FirstName || ' ' || 'LastName' AS FULLNAME ,Salary FROM Employees;
	
	
	SELECT FirstName,Salary,Salary*12 AS SALARY_PER_YEAR FROM Employees;
	
	SELECT FirstName,Salary,Salary/4 AS SALARY_PER_WEEK FROM Employees;
	
	
	SELECT FirstName,Salary,Salary/4 AS SALARY_PER_WEEK FROM Employees WHERE Salary>2000;
	
	SELECT FirstName,Salary FROM Employees WHERE FirstName='Lex';
	
	SELECT FirstName,Salary FROM Employees WHERE FirstName='Lex' AND LastName='De Haan';
	
	SELECT FirstName,Salary FROM Employees WHERE FirstName='Lex' OR LastName='De Haan';
	
	SELECT FirstName,Salary FROM Employees WHERE FirstName IN('Lex','John','Den');
	
	SELECT FirstName,Salary FROM Employees WHERE FirstName NOT IN('Lex','John','Den');
	
	SELECT FirstName,Salary FROM Employees WHERE Salary BETWEEN 5000 AND 15000;
	
	
	SELECT FirstName,Salary FROM Employees WHERE Salary IS NULL;
	
	
	SELECT DISTINCT FirstName FROM Employees;
	
	SELECT FirstName FROM Employees WHERE FirstName like 'A%';
	
	SELECT FirstName,Salary FROM Employees ORDER BY Salary DESC;

	SELECT FirstName,Salary,HireDate FROM Employees ORDER BY Salary DESC LIMIT 5;
	
	
	
	
	