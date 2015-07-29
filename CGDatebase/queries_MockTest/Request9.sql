SELECT d.Department_No, d.Department_Name, COUNT(*) AS Number_of_Employees
FROM Departments d JOIN Employees e
ON d.Department_No = e.Department_No 
GROUP BY d.Department_Name, d.Department_No
HAVING COUNT(*) < 4