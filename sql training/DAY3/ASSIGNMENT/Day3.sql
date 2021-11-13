
                                  -- SQLITE

--1.  Write a query that displays the FirstName and the length of the FirstName for all employees whose name starts with the letters ‘A’, ‘J’ or ‘M’. Give each column an appropriate label. Sort the results by the employees’ FirstName

SELECT FirstName,length(FirstName) AS firstnamelength FROM Employees
WHERE substr(FirstName,1,1) IN ('A','J','M')
ORDER BY FirstName;


--2.  Write a query to display the FirstName and Salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.

SELECT FirstName,substr('$$$$$$$$$$' || Salary, -10, 10)  AS SALARY FROM Employees;


--3.  Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year.

SELECT EmployeeID AS Code,FirstName,LastName,HireDate FROM Employees 
WHERE strftime('%d',HireDate) = '07' OR strftime('%m',HireDate) = '07';

--4.  Write a query to display the length of first name for employees where last name contains character ‘c’ after 2nd position.

SELECT FirstName , length(FirstName) AS 'NAME lENGTH' FROM employees WHERE INSTR(LastName,'C') > 2;

--5.  Write a query to extract the last 4 character of PhoneNumber.

SELECT FirstName,PhoneNumber, substr(PhoneNumber,length(PhoneNumber)+1,-4) FROM Employees;

--6.  Write a query to update the portion of the PhoneNumber in the employees table, within the phone number the substring ‘124’ will be replaced by ‘999’.

UPDATE Employees SET PhoneNumber=replace(PhoneNumber,'124','999');

--7.  Write a query to calculate the age in year.// Write a query to calculate experience of empoyees.

SELECT FirstName ,date('now')- HireDate AS Experience FROM Employees;


--8.  Write a query to get the distinct Mondays from HireDate in employees tables.

SELECT HireDate FROM Employees WHERE strftime('%w',HireDate) = '1';


--9.Write a query to get the FirstName and HireDate from Employees table where HireDate between ‘1987-06-01’ and ‘1987-07-30’

SELECT FirstName,HireDate FROM Employees WHERE HireDate BETWEEN '1987-06-01' AND '1987-07-30';


--10.11  Write a query to display the current date in the following format.Sample output : 12:00 AM Sep 5, 2014

	   SELECT strftime('%H:%M ','now') ||
	   CASE 
	   WHEN strftime('%H','now')>=12 THEN 'PM'
	   ELSE 'AM'
	   END || 
	   CASE strftime('%m','now')
	   WHEN '01'THEN ' Jan'
	   WHEN '02'THEN ' Feb'
	   WHEN '03'THEN ' Mar'
	   WHEN '04'THEN ' Apr'
	   WHEN '05'THEN ' May'
	   WHEN '06'THEN ' Jun'
	   WHEN '07'THEN ' Jul'
	   WHEN '08'THEN ' Aug'
	   WHEN '09'THEN ' Sep'
	   WHEN '10'THEN ' Oct'
	   WHEN '11'THEN ' Nov'
	   ELSE ' Dec'
	   END ||
	   strftime(' %d,%Y','now')
	  AS TODAYDATE;
	   
	   

--12.  Write a query to get the FirstName, LastName who joined in the month of June.

SELECT FirstName,LastName FROM Employees WHERE strftime('%m',HireDate)='06';

--13.  Write a query to get first name, hire date and experience of the employees.

SELECT FirstName,HireDate,date('now')- HireDate AS Experience FROM Employees;

--14.  Write a query to get first name of employees who joined in 1987.

SELECT FirstName FROM Employees WHERE strftime('%Y',HireDate)='1987';





