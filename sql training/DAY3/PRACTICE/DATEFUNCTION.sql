                      --  SQLITE Date function

SELECT date('NOW');

SELECT datetime('NOW');

SELECT datetime('NOW','localtime') AS DATETIME;

SELECT DATE('NOW','+1 year');

SELECT DATE('NOW','start of YEAR'); --  2021-01-01

SELECT DATE('NOW','start of MONTH');  -- 2021-08-01


SELECT DATE('31-05-1973','WEEKDAYS 5');  -- 2021-08-01

SELECT datetime('now','localtime');  -- 2021-08-26 14:44:34

SELECT CURRENT_TIMESTAMP;  


SELECT strftime('%s','now');     -- 1629969626 
SELECT strftime('%d','now');     -- 26
SELECT strftime('%m','now');     -- 08
SELECT strftime('%Y','now');     -- 2021
SELECT strftime('%H','now');     -- 14
SELECT strftime('%w','now');     -- day of the week o/p : 4
SELECT strftime('%W','now');     -- week of the year o/p : 34


SELECT FirstName,HireDate,strftime('%m',HireDate) FROM Employees;

SELECT FirstName,HireDate FROM Employees WHERE
strftime('%d',HireDate)>'16';

SELECT FirstName,HireDate,
    HireDate || ' ' || time(HireDate,'+1 hours','+25 minutes') AS NEWTIME FROM Employees;