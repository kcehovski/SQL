SELECT DISTINCT Job_Title FROM Employees
JOIN Jobs ON Employees.Job_ID = Jobs.Job_ID 
JOIN Departments ON Departments.Department_No = Employees.Department_No
WHERE Department_Name ='IT' OR Department_Name ='Sales'