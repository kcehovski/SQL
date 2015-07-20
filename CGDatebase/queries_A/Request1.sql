SELECT Employees.Last_Name, Employees.First_Name, Employees.Employee_No, 
Employees.Job_ID, Employees.Hire_Date 
FROM Employees JOIN Jobs ON Jobs.Job_ID= Employees.Job_ID WHERE 
Jobs.Job_Title = 'Programmer' AND Hire_Date <= '1991-05-21' ORDER BY Last_Name ASC