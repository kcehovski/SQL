SELECT d.Department_No, d.Department_Name FROM Departments d
WHERE d.Department_No NOT IN 
(
SELECT e.Department_No FROM Employees e
JOIN Departments d ON e.Department_No = d.Department_No
JOIN Jobs j ON e.Job_ID = j.Job_ID 
AND j.Job_Title = 'Sales Representative'
)
