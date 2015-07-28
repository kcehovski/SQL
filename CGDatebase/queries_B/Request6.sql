SELECT Last_Name, First_Name FROM Employees
WHERE MONTH(Hire_Date) = 6 OR MONTH(Hire_Date) = 8
ORDER BY Last_Name ASC