SELECT e.Last_Name, e.First_Name, e.Employee_No FROM Employees e
JOIN Jobs j ON e.Job_ID = j.Job_ID
WHERE Hire_Date <= '1998-08-26' AND j.Job_Title = 'Stock Clerk'
ORDER BY Last_Name ASC

/*SELECT e.Last_Name, e.First_Name, e.Employee_No FROM Employees e, Jobs j
WHERE e.Job_ID = j.Job_ID AND e.Hire_Date <= '1998-08-26' AND j.Job_Title = 'Stock Clerk'
ORDER BY Last_Name ASC*/

/*SELECT Last_Name, First_Name, Employee_No FROM Employees
WHERE Hire_Date <= '1998-08-26' AND Job_ID = 'ST_CLERK'
ORDER BY Last_Name ASC*/