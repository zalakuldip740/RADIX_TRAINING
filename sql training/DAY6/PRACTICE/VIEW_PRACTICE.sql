

                                         -- VIEW IN SQLITE
										 
	CREATE VIEW DEMO_VIEW
	AS
	SELECT EmployeeID,FirstName,Salary FROM Employees;
	
	-- CREATE CUSTOM COLUMN
	
	CREATE VIEW DEMO2(DepartmentIDNEW,AVGSALARY)
	AS 
	SELECT DepartmentID,AVG(Salary) FROM Employees GROUP BY DepartmentID;
	
	SELECT * FROM DEMO2;
	
	     -- DROP VIEW
	
	DROP VIEW DEMO2;
	
	      -- UPDATE & REPLACE VIEW (NOT SUPPORTED IN SQLITE)
	
	CREATE OR REPLACE VIEW DEMO_VIEW
	AS                                                                                     -- ERROR
	SELECT FirstName,LastName FROM Employees;         -- SQLITE VIEW IS READ ONLY
	
	
	
	UPDATE DEMO_VIEW SET Salary=25000 WHERE EmployeeID=109;   -- ERROR:cannot modify DEMO_VIEW because it is a view