SELECT TOP 1 WITH TIES d.Department_No, d.Department_Name, COUNT(*) AS Number_of_Employees
From Departments d JOIN Employees e
ON d.Department_No = e.Department_No
GROUP BY d.Department_No, d.Department_Name 
ORDER BY COUNT(*) ASC