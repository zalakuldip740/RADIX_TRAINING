               -- NTILE FUNCTION SQLITE



SELECT FirstName,Salary,ntile(10) OVER(ORDER BY Salary DESC)AS NTILETABLE FROM Employees;
   
   SELECT * FROM(SELECT FirstName,Salary,ntile(10) OVER(ORDER BY Salary DESC)AS BUCKETS FROM Employees)WHERE BUCKETS=5 ;
   
   
   -- 5TH BUCKETS MAX SALARY
   
   SELECT FirstName,MAX(Salary),BUCKETS FROM(SELECT *, ntile(10) OVER(ORDER BY Salary DESC)AS BUCKETS FROM Employees)NTILETABLE WHERE BUCKETS=5 ;
   

   SELECT FirstName,Salary,JobId,ntile(10) OVER(PARTITION BY JobId ORDER BY Salary DESC)AS NTILETABLE FROM Employees;
   
   
   SELECT FirstName,JobId,BUCKETS FROM(SELECT *, ntile(10) OVER(PARTITION BY JobId ORDER BY Salary DESC)AS BUCKETS FROM Employees)NTILETABLE  ORDER BY BUCKETS;
   