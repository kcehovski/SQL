SELECT Departments.Department_No, Departments.Department_Name, COUNT(*) AS Number_of_Employees
FROM Departments INNER JOIN Employees ON Departments.Department_No= Employees.Department_No
GROUP BY Departments.Department_No, Departments.Department_Name
HAVING COUNT(*) >2