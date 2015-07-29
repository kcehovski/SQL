SELECT d.Department_No, d.Department_Name
FROM Departments d
WHERE d.Department_No not in(
	SELECT DISTINCT d.Department_No FROM Employees e
	JOIN Jobs j ON e.Job_ID = j.Job_ID
	JOIN Departments ON e.Department_No = d.Department_No
	AND j.Job_Title= 'Programmer')




/*select d2.Department_No, d2.Department_Name from Departments d2 
where d2.Department_No not in (
	select distinct(d.Department_No) from Employees e 
		join Jobs j on e.Job_ID = j.Job_ID
		join Departments d on e.Department_No = d.Department_No
		and j.Job_Title = 'Programmer'
)*/