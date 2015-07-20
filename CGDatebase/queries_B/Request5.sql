SELECT d.Department_Name, d.Location_ID, e.Last_Name, e.Annual_Salary
FROM Employees e
JOIN Departments d ON e.Department_No= d.Department_No
WHERE d.Location_ID =1700 
ORDER BY Department_Name ASC 