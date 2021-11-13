
                 --DAY 1 Assignment ::--


CREATE TABLE SalesPerson
(EmployeeId INTEGER NOT NULL PRIMARY KEY,EmployeeName TEXT,Commission INTEGER);

CREATE TABLE CarsDetails
(ModelId INTEGER NOT NULL,
EmployeeId INTEGER NOT NULL,
Price TEXT NOT NULL ,
FOREIGN KEY(EmployeeId) REFERENCES SalesPerson(EmployeeId));

CREATE TABLE Total_sales
( ModelId INTEGER NOT NULL,
Price TEXT NOT NULL,
Sold INTEGER NOT NULL,
SoldBy INTEGER ,
FOREIGN KEY(SoldBy) REFERENCES SalesPerson(EmployeeId),
FOREIGN KEY(ModelId)REFERENCES CarsDetails(ModelId));

