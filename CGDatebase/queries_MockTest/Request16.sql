CREATE VIEW Clerks_Details AS
(
SELECT * FROM Employees 
WHERE Job_ID LIKE '%CLERK'
)