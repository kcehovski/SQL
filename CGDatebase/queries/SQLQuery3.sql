CREATE TABLE Regions(Region_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
Region_Name varchar(25))

CREATE TABLE Jobs(Job_ID varchar(10) NOT NULL PRIMARY KEY, 
Job_Title varchar(35) NOT NULL, 
Min_Salary INT,
Max_Salary INT)

CREATE TABLE Countries(Country_ID char(2) NOT NULL PRIMARY KEY, 
Country_Name varchar(40),
Region_ID INT FOREIGN KEY REFERENCES Regions)

CREATE INDEX IX_Region_ID on Countries(Region_ID)

CREATE TABLE Locations(Location_ID INT NOT NULL PRIMARY KEY,
Street_Address varchar(40),
City varchar (30) NOT NULL,
Postal_Code varchar(12),
State_Province_County varchar(25),
Country_ID char(2) FOREIGN KEY REFERENCES Countries)

CREATE INDEX IX_City on Locations(City)
CREATE INDEX IX_State_Province_County on Locations(State_Province_County)
CREATE INDEX IX_Country_ID on Locations(Country_ID)

CREATE TABLE Departments(Department_No INT NOT NULL PRIMARY KEY,
Department_Name varchar(30),
Manager_ID INT,
Location_ID INT FOREIGN KEY REFERENCES Locations)

CREATE INDEX IX_Location on Departments(Location_ID)

CREATE TABLE Employees(Employee_No INT NOT NULL PRIMARY KEY,
First_Name varchar(20),
Last_Name varchar(25) NOT NULL,
Email varchar(25) NOT NULL,
Phone_Number varchar(20),
Hire_Date datetime NOT NULL,
Job_ID varchar(10) FOREIGN KEY REFERENCES Jobs,
Annual_Salary decimal(8,2),
Commission_Percent decimal(2,2),
Manager_ID INT,
Department_No INT FOREIGN KEY REFERENCES Departments)

CREATE INDEX IX_Last_Name on Employees(Last_Name)
CREATE UNIQUE INDEX IX_Email on Employees(Email)
CREATE INDEX IX_Job_ID on Employees(Job_ID)
CREATE INDEX IX_Manager_ID on Employees(Manager_ID)
CREATE INDEX IX_Department_No on Employees(Department_No)

CREATE TABLE Job_History(Employee_No INT NOT NULL FOREIGN KEY REFERENCES Employees, 
Start_Date datetime NOT NULL,
End_Date datetime NOT NULL,
Job_ID varchar(10) NOT NULL,
Department_No INT NOT NULL,
Constraint PK_Emp_Start_Date PRIMARY KEY(Employee_No, Start_Date))

CREATE INDEX IX_Job_ID on Job_History(Job_ID)
CREATE INDEX IX_Department_No on Job_History(Department_No)
