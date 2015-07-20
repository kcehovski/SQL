SELECT Last_Name, CAST(ROUND(Annual_Salary/12, 2) AS DECIMAL(8,2)) AS Monthly_Salary FROM Employees WHERE 
Department_No = 50 or Department_No=90 ORDER BY Last_Name ASC