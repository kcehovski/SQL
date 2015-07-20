SELECT Departments.Department_No, Departments.Department_Name
FROM Departments 
WHERE Departments.Department_No not in(
	SELECT DISTINCT Departments.Department_No FROM Employees 
	JOIN Jobs ON Employees.Job_ID = Jobs.Job_ID
	JOIN Departments ON Employees.Department_No = Departments.Department_No
	AND Jobs.Job_Title= 'Programmer')




/*select d2.Department_No, d2.Department_Name from Departments d2 
where d2.Department_No not in (
	select distinct(d.Department_No) from Employees e 
		join Jobs j on e.Job_ID = j.Job_ID
		join Departments d on e.Department_No = d.Department_No
		and j.Job_Title = 'Programmer'
)*/