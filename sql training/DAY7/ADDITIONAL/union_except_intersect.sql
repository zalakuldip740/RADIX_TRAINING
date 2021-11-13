 -- Union Clause IN SQLITE
					   
					   
	SELECT EMPLOYEE_ID,JOINING_DATE FROM EMPLOYEE
	UNION                                                         -- DUPLICATE RESULT NOT ALLOWED
	SELECT EMPLOYEE_REF_ID,INCENTIVE_DATE FROM INCENTIVES;
	
	
	SELECT EMPLOYEE_ID,JOINING_DATE FROM EMPLOYEE
	UNION ALL                                                         
	SELECT EMPLOYEE_REF_ID,INCENTIVE_DATE FROM INCENTIVES;
	
	
	
	                             -- SQLITE EXCEPT
								 
								 
	SELECT EMPLOYEE_ID FROM EMPLOYEE                   -- return left statement result except matched value
	EXCEPT
	SELECT EMPLOYEE_REF_ID FROM INCENTIVES;
	
	
	                                      -- SQLITE INTERSECT
										  
										  
	SELECT EMPLOYEE_ID FROM EMPLOYEE                   -- return common VALUES
	INTERSECT
	SELECT EMPLOYEE_REF_ID FROM INCENTIVES;
	