SELECT d.Department_No, d.Department_Name FROM Departments d
WHERE d.Department_No NOT IN 
(
SELECT d.Department_No FROM Departments d 
JOIN Employees e ON e.Department_No = d.Department_No
JOIN Jobs j ON e.Job_ID = j.Job_ID
WHERE j.Job_Title = 'Sales Representative'
)