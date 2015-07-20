SELECT e.Department_No, e.Last_Name, e.First_Name, e.Phone_Number FROM Employees e
JOIN Jobs j ON e.Job_ID= j.Job_ID
WHERE j.Job_Title = 'Sales Representative' AND Hire_Date>= '1998-03-24'
ORDER BY Last_Name ASC