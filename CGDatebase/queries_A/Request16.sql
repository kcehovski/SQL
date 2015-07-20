select Employees.Employee_No, Employees.Annual_Salary AS Old_Salary, 
(
	CASE
	  WHEN Employees.Department_No in (10,20) THEN 0.05
	  WHEN Employees.Department_No in (50,80,90,110) THEN 0.1
	  ELSE 0
	END
) as Raise, 
(Employees.Annual_Salary * (1+
	(
	CASE
	  WHEN Employees.Department_No in (10,20) THEN 0.05
	  WHEN Employees.Department_No in (50,80,90,110) THEN 0.1
	  ELSE 0
	END
	))) as New_Salary
from Employees ;