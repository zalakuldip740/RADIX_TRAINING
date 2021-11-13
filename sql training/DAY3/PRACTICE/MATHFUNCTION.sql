   -- SQLITE MATH FUNCTION


     SELECT abs(5000);   -- O/P : 5000
	 
     SELECT abs(-5000);   -- O/P : 5000
	 
     SELECT abs('ZALA5000');   -- O/P : 0
	 
     SELECT abs('5000ZALA');   -- O/P : 5000
	 
	 SELECT random();    -- 5900947248162122220
	 
	 SELECT FirstName FROM Employees 
	 ORDER BY random();                       -- O/P: ANY RANDOM NAME FROM FIRSTNAME COLUMN
	 

       SELECT ROUND(235.4155555, 3) AS RoundValue;   -- 235.416
	   