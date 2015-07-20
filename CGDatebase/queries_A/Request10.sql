SELECT TOP 1 Departments.Department_No, Departments.Department_Name,
COUNT(*) AS Number_Employee
FROM Departments INNER JOIN Employees ON Departments.Department_No = Employees.Department_No
GROUP BY Departments.Department_Name, Departments.Department_No
ORDER BY Number_Employee DESC
