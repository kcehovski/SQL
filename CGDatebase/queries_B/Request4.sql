SELECT DISTINCT j.Job_Title FROM Jobs j
JOIN Employees e ON e.Job_ID = j.Job_ID
JOIN Departments d ON d.Department_No = e.Department_No
WHERE Department_Name in ('Marketing', 'Accounting')
