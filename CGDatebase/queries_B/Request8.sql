SELECT CAST(SUM(Annual_Salary/12) as INT) AS Total_Montly_Salary FROM Employees
WHERE Department_No IN (80, 60)