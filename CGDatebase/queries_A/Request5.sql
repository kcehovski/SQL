SELECT DISTINCT Job_Title FROM Employees e
JOIN Jobs j ON e.Job_ID = j.Job_ID 
JOIN Departments d ON d.Department_No = e.Department_No
WHERE Department_Name ='IT' OR Department_Name ='Sales'