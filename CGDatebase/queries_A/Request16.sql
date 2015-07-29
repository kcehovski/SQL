select e.Employee_No, e.Annual_Salary AS Old_Salary, 
(
	CASE
	  WHEN e.Department_No in (10,20) THEN 0.05
	  WHEN e.Department_No in (50,80,90,110) THEN 0.1
	  ELSE 0
	END
) as Raise, 
(e.Annual_Salary * (1+
	(
	CASE
	  WHEN e.Department_No in (10,20) THEN 0.05
	  WHEN e.Department_No in (50,80,90,110) THEN 0.1
	  ELSE 0
	END
	))) as New_Salary
from Employees e 