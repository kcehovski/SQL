SELECT TOP 1 WITH TIES d.Department_No, d.Department_Name,
COUNT(*) AS Number_Employee
FROM Departments d 
JOIN Employees e ON d.Department_No = e.Department_No
GROUP BY d.Department_Name, d.Department_No
ORDER BY Number_Employee DESC
