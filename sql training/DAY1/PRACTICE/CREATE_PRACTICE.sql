Practice Exercise:  SQLITE

1. CREATE TABLE Countries(CountryId INTEGER NOT NULL UNIQUE,CountryName TEXT CHECK(CountryName IN('Italy','India','China')),RegionId INT NOT NULL,CONSTRAINT Ridnotcid CHECK(RegionId!=CountryId));
INSERT INTO Countries (CountryId, CountryName, RegionId)
VALUES ('1', 'pak', '5');

INSERT INTO Countries (CountryId, CountryName, RegionId)
VALUES ('2', 'India','2');



2.  CREATE TABLE JobHistory
(EmployeeId INT PRIMARY KEY,StartDate date,End_date date CHECK(End_date LIKE '__/__/____'),Job_Id INT,DepartmentId INT);





3. CREATE TABLE Jobs( JobId INTEGER,JobTitle TEXT DEFAULT '',MinSalary INTEGER DEFAULT 8000, MaxSalary INTEGER );




4.  CREATE TABLE Departments (Department_Id INTEGER,DepartmentName TEXT );


CREATE TABLE Employees (Employee_id INTEGER UNIQUE,
 FirstName TEXT,
 LastName TEXT, 
 Email TEXT, 
 PhoneNumber NUMERIC, 
 Hire_Date TEXT,
 Job_Id INTEGER,
 Salary INTEGER,
 Commission INTEGER, 
 Manager_Id INTEGER,
 Department_Id INTEGER,
FOREIGN KEY(Department_Id) REFERENCES Employees (Department_Id),
FOREIGN KEY(Job_Id) REFERENCES Jobs (JobId));



