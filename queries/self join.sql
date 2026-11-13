-- display each employee with their managers 
-- self join 
SELECT 
    e.EmployeeID,
    e.EmployeeName AS Employee,
    m.EmployeeName AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;
