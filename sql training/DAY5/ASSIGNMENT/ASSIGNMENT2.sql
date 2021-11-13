 --  I. car (carid, vin, make, model, year, mileage, askprice, invoiceprice)
 -- ii. dealership (dealershipid, name, address, city, state)
 -- iii. salesperson (salespersonid, name)
 -- iv. customer (customerid, name, address, city, state)
 --  v. reportsto (reportstoid, salespersonid, managingsalespersonid)
 -- vi. worksat (worksatid, salespersonid, dealershipid, monthworked, basesalaryformonth)
 -- vii. inventory (inventoryid, vin, dealershipid)
 -- viii. sale (saleid, vin, customerid, salespersonid, dealershipid, saleprice, saledate)

CREATE TABLE Car(Car_Id INTEGER PRIMARY KEY,VIN TEXT NOT NULL,Make TEXT NOT NULL,Model TEXT NOT NULL,Year INTEGER NOT NULL,Mileage INTEGER NOT NULL,AskPrice INTEGER NOT NULL,InvoicePrice INTEGER NOT NULL);
CREATE TABLE Dealership(Dealership_Id INTEGER PRIMARY KEY,Name TEXT NOT NULL,Address TEXT NOT NULL,City TEXT NOT NULL,State TEXT NOT NULL);
CREATE TABLE SalesPerson(SalesPerson_Id INTEGER PRIMARY KEY,SalesPerson_Name TEXT NOT NULL);
CREATE TABLE Customers(Customer_Id INTEGER PRIMARY KEY,Customer_Name TEXT NOT NULL,Address TEXT NOT NULL,Customer_City TEXT NOT NULL,Customer_State TEXT NOT NULL);
CREATE TABLE ReportSto(ReportSto_Id INTEGER PRIMARY KEY,SalesPerson_Id INTEGER NOT NULL,ManagingSalePerson_Id INTEGER NOT NULL,FOREIGN KEY(SalesPerson_Id) REFERENCES SalesPerson(SalesPerson_Id),FOREIGN KEY(ManagingSalePerson_Id) REFERENCES SalesPerson(SalesPerson_Id));
CREATE TABLE Worksat(Work_Id INTEGER PRIMARY KEY,SalesPerson_Id INTEGER NOT NULL,Dealership_Id INTEGER NOT NULL,Month_Work INTEGER NOT NULL,BaseSalaryForMonth INTEGER NOT NULL,FOREIGN KEY(SalesPerson_Id) REFERENCES SalesPerson(SalesPerson_Id),FOREIGN KEY(Dealership_Id) REFERENCES Dealership(Dealership_Id));
CREATE TABLE Inventory(Inventory_Id  INTEGER PRIMARY KEY,VIN TEXT NOT NULL,Dealership_Id INTEGER NOT NULL,FOREIGN KEY(Dealership_Id)REFERENCES Dealership(Dealership_Id));
CREATE TABLE Sales(Sale_Id INTEGER PRIMARY KEY,VIN TEXT NOT NULL,Customer_Id INTEGER,SalesPerson_Id INTEGER NOT NULL,Dealership_Id INTEGER NOT NULL,Sale_Price INTEGER NOT NULL,Sale_Date TEXT NOT NULL,FOREIGN KEY(Customer_Id) REFERENCES Customers(Customer_Id),FOREIGN KEY(Dealership_Id) REFERENCES Dealership(Dealership_Id),FOREIGN KEY(SalesPerson_Id) REFERENCES SalesPerson(SalesPerson_Id));


        -- 1. Find the names of all salespeople who have ever worked for the company at any dealership.

		  SELECT SalesPerson.SalesPerson_Name,SalesPerson.SalesPerson_Id,Worksat.Dealership_Id 
		  FROM SalesPerson INNER JOIN Worksat ON SalesPerson.SalesPerson_Id=Worksat.SalesPerson_Id;
		
        -- 2. List the Name, Street Address, and City of each customer who lives in Ahmedabad.
		
		 SELECT Customer_Name,Address,Customer_City FROM Customers WHERE Customer_City='AHMEDABAD';

        -- 3. List the VIN, make, model, year, and mileage of all cars in the inventory of the dealership named "Hero Honda Car World".
		
		         SELECT Car.Car_Id,Car.VIN,Car.Model,Car.Year,Car.Mileage
				 FROM Car INNER JOIN Inventory ON Car.VIN=Inventory.VIN 
				 INNER JOIN Dealership ON Inventory.Dealership_Id=Dealership.Dealership_Id 
				 WHERE Dealership.Name='Hero Honda Car World';

        -- 4. List names of all customers who have ever bought cars from the dealership named "Concept Hyundai".

		SELECT Customers.Customer_Name FROM Customers INNER JOIN Sales
		ON Customers.Customer_Id=Sales.Customer_Id INNER JOIN Dealership ON Sales.Dealership_Id=Dealership.Dealership_Id
		WHERE Dealership.Name='Concept Hyundai';
		
        -- 5. For each car in the inventory of any dealership, list the VIN, make, model, and year of the car, along with the name, city, and state of the dealership whose inventory contains the car.

		SELECT Car.VIN,Car.Make,Car.Model,Car.Year,Dealership.Name,Dealership.City,Dealership.State
		FROM Car INNER JOIN Inventory ON Car.VIN=Inventory.VIN 
		INNER JOIN Dealership ON Inventory.Dealership_Id=Dealership.Dealership_Id;
		
        -- 6. Find the names of all salespeople who are managed by a salesperson named "Adam Smith".
		
		SELECT SalesPerson.SalesPerson_Name FROM SalesPerson	
		JOIN (SELECT ReportSto.SalesPerson_Id AS S1,SalesPerson.SalesPerson_Name AS MANAGER_NAME FROM SalesPerson
		 JOIN ReportSto ON SalesPerson.SalesPerson_Id=ReportSto.ManagingSalePerson_Id)MANAGER_LIST 
		 ON SalesPerson.SalesPerson_Id=MANAGER_LIST.S1 WHERE MANAGER_NAME='Adam Smith';
		 

        -- 7. Find the names of all salespeople who do not have a manager.
		
		SELECT S.SalesPerson_Name FROM SalesPerson S LEFT JOIN ReportSto R ON S.SalesPerson_Id=R.SalesPerson_Id WHERE R.ManagingSalePerson_Id IS NULL;

        -- 8. Find the total number of dealerships.
            
			SELECT count(Dealership_Id) FROM Dealership;
			
		-- 9. List the VIN, year, and mileage of all "Toyota Camrys" in the inventory of the dealership named "Toyota Performance".
		--(Note that a "Toyota Camry" is indicated by the make being "Toyota" and the model being "Camry".)
		
		 SELECT Car.VIN,Car.Year,Car.Mileage FROM Car INNER JOIN Inventory ON 
		 Car.VIN=Inventory.VIN INNER JOIN Dealership 
		 ON Inventory.Dealership_Id=Dealership.Dealership_Id
		 WHERE Car.Make='Toyota' AND Car.Model='Carmy' AND Dealership.Name='Toyota Performance';		

		
        -- 10. Find the name of all customers who bought a car at a dealership located in a state other than the state in which they live.
		
		        SELECT Customers.Customer_Name FROM Customers INNER JOIN Sales ON Customers.Customer_Id=Sales.Customer_Id 
				INNER JOIN Dealership ON Sales.Dealership_Id=Dealership.Dealership_Id 
				WHERE Customers.Customer_State != Dealership.State;

        -- 11. Find the name of the salesperson that made the largest base salary working at the 
		-- dealership named "Ferrari Sales" during January 2010.
		
			SELECT SalesPerson.SalesPerson_Name FROM SalesPerson INNER JOIN Worksat ON SalesPerson.SalesPerson_Id=Worksat.SalesPerson_Id
			INNER JOIN Dealership ON Worksat.Dealership_Id=Dealership.Dealership_Id
			WHERE Dealership.Name='Ferrari Sales' AND Worksat.Month_Work='January 2010';

        -- 12. List the name, street address, city, and state of any customer 
		 -- who has bought more than two cars from all dealerships combined since January 1, 2010.
			
			SELECT Customer_Name,Address,Customer_City,Customer_State FROM (SELECT * ,count(Sales.Customer_Id)AS TOTAL FROM Customers
			INNER JOIN Sales ON Customers.Customer_Id=Sales.Customer_Id
			 WHERE Sales.Sale_Date>'01/01/2001'
			 GROUP BY Sales.Customer_Id)DERIVEDTABLE
			WHERE TOTAL>=2 ;
			

        -- 13. List the name, salesperson ID, and total sales amount for each salesperson who has ever sold at least one car. 
		-- The total sales amount for a salesperson is the sum of the sale prices of all cars ever sold by that salesperson.
			
			
			SELECT SalesPerson.SalesPerson_Name,Sales.SalesPerson_Id,SUM(Sales.Sale_Price) AS TOTAL FROM 
			SalesPerson JOIN Sales ON SalesPerson.SalesPerson_Id=Sales.SalesPerson_Id GROUP BY Sales.SalesPerson_Id;
			
	
	  -- 14. Find the names of all customers who bought cars during 2010 
	  -- who were also salespeople during 2010. For the purpose of this query, assume that no two people have the same name.

	     SELECT Customers.Customer_Name FROM Customers JOIN Sales ON Customers.Customer_Id=Sales.Customer_Id
		 WHERE Sales.Sale_Date BETWEEN '2009-12-31' AND '2011-01-01'; 
		 
		 
	  
      -- 15. Find the name and salesperson ID of the salesperson who sold the most cars for the 
	   -- company at dealerships located in Gujarat between March 1, 2010 and March 31, 2010.
	   
	   SELECT SalesPerson_Name,SalesPerson_Id
	   FROM (SELECT *,dense_rank() OVER(ORDER BY count(Sales.SalesPerson_Id)DESC)AS RANK FROM SalesPerson
			 JOIN Sales ON SalesPerson.SalesPerson_Id=Sales.SalesPerson_Id JOIN Dealership ON Sales.Dealership_Id=Dealership.Dealership_Id
			 WHERE Sales.Sale_Date BETWEEN '2010-03-01' AND '2010-03-31' AND Dealership.City='AHMEDABAD'
			 GROUP BY Sales.SalesPerson_Id)NEWTABLE
			 WHERE RANK=1;

      -- 16. Calculate the payroll for the month of March 2010.
	      -- * The payroll consists of the name, salesperson ID, and gross pay for each salesperson who worked that month.
          -- * The gross pay is calculated as the base salary at each dealership employing the salesperson that month, along with the total commission for the salesperson that month.
           -- * The total commission for a salesperson in a month is calculated as 5% of the profit made on all cars sold by the salesperson that month.
           -- * The profit made on a car is the difference between the sale price and the invoice price of the car. (Assume, that cars are never sold for less than the invoice price.)
			
			
		SELECT SalesPerson.SalesPerson_Name,SalesPerson.SalesPerson_Id,(Worksat.BaseSalaryForMonth +(PROFIT_MADE*0.05))AS GROSS_PAY 
		FROM (SELECT Sales.SalesPerson_Id AS S1, (Sales.Sale_Price-Car.InvoicePrice) AS PROFIT_MADE FROM Sales JOIN Car ON Sales.VIN=Car.VIN)T2 
		JOIN Worksat ON T2.S1=Worksat.SalesPerson_Id JOIN SalesPerson ON Worksat.SalesPerson_Id=SalesPerson.SalesPerson_Id WHERE Worksat.Month_Work='MARCH 2010';
			