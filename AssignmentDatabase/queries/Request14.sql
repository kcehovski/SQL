SELECT COUNT(*) AS Total_Number_of_Employees FROM Employees e 
JOIN Departments d ON e.Department_No = d.Department_No 
WHERE d.Department_Name = 'Finance'