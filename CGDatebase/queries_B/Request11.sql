SELECT d.Department_No, d.Department_Name FROM Departments d
WHERE d.Department_No NOT IN 
(
	SELECT DISTINCT e.Department_No FROM Employees e
	JOIN Jobs j ON j.Job_ID= e.Job_ID
	JOIN Departments d1 ON d1.Department_No = e.Department_No
	AND j.Job_Title = 'Sales Representative'
)