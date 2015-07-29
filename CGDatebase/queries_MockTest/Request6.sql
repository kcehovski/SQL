SELECT DISTINCT j.Job_Title FROM Jobs j
JOIN Employees e ON j.Job_ID = e.Job_ID
JOIN Departments d ON d.Department_No =e.Department_No
WHERE d.Department_Name IN ('Marketing', 'Accounting')