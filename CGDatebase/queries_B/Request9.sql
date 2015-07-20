SELECT d.Department_No, d.Department_Name, COUNT(*) AS Number_of_Employees
FROM Departments d JOIN Employees e
ON e.Department_No= d.Department_No
GROUP BY d.Department_No, d.Department_Name
HAVING COUNT(*)< 4