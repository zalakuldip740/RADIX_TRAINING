                 -- SQLITE STRING FUNCTION

SELECT instr('KULDIPSINH ZALA','ZALA');   --12 RETURN THE POSITION 

SELECT instr('KULDIPSINH ZALA','H');    --10 RETURN THE POSITION OF H ONLY

SELECT FirstName,instr(FirstName,'a') AS NEWNAME FROM Employees;

SELECT FirstName,length(FirstName) AS LEN FROM Employees;

SELECT LOWER('KULDIPSINH ZALA');  -- kuldipsinh zala

SELECT upper('kuldip');  -- KULDIP

SELECT TRIM('    KULDIP   ');  -- KULDIP ( NO SPACE)

SELECT LTRIM('    KULDIP   ');  -- KULDIP     

SELECT RTRIM('    KULDIP   ');  --      KULDIP     

SELECT TRIM('###KULDIP##','#');  -- KULDIP 

SELECT replace('KULDIPSINH ZALA','SINH','') ;  -- O/P : KULDIP ZALA

SELECT FirstName,replace(FirstName,'Steven','KULDIP')AS NEW FROM Employees; 


SELECT FirstName,substr(FirstName,1,1)AS firstletter FROM Employees; 

SELECT FirstName,LastName,FirstName || ' ' || LastName AS firstletter FROM Employees;  -- Steven  King  o/p: Steven King
