SELECT e.Last_Name, j.Job_Title, e.Commission_Percent FROM Employees e
JOIN Jobs j ON e.Job_ID = j. Job_ID
WHERE e.Commission_Percent <= 0.15 
ORDER BY e.Commission_Percent DESC