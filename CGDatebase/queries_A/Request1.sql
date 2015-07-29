SELECT e.Last_Name, e.First_Name, e.Employee_No
FROM Employees e JOIN Jobs j ON j.Job_ID = e.Job_ID WHERE 
j.Job_Title = 'Programmer' AND e.Hire_Date <= '1991-05-21' ORDER BY Last_Name ASC