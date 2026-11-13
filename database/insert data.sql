
-- insert into branches table
INSERT INTO Branches (BranchName, Region) VALUES
('Kigali Central Branch', 'Kigali'),
('Musanze North Branch', 'Northern'),
('Huye South Branch', 'Southern'),
('Rubavu West Branch', 'Western');
-- insert into employees table
INSERT INTO Employees (EmployeeName, BranchID, ManagerID, PerformanceScore) VALUES
('Jean Bosco', 1, NULL, 95.50),       -- ID: 1 (مدير عام)
('Alice Uwase', 1, 1, 88.00),         -- ID: 2 (ترتبط بالمدير 1)
('Eric Mugisha', 2, 1, 91.20),        -- ID: 3 (ترتبط بالمدير 1)
('Diane Ingabire', 3, 1, 84.50),      -- ID: 4 (ترتبط بالمدير 1)
('Patrick Ndayishimiye', 1, 2, 79.00);-- ID: 5 (ترتبط بالمدير 2)
-- insert into customers table
INSERT INTO Customers (CustomerName, Region) VALUES
('Aline Mukamana', 'Kigali'),
('David Habimana', 'Kigali'),
('Grace Uwimana', 'Northern'),
('Samuel Kwizera', 'Southern'),
('Chantal Nyiraneza', 'Kigali'),
('Kevin Rukundo', 'Northern'),
('Esther Mutoni', 'Southern'),
('Olivier Niyonzima', 'Western');
-- insert into products table
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop Pro 15', 'Electronics', 1200.00),
('Wireless Mouse', 'Accessories', 25.00),
('Office Chair', 'Furniture', 180.00),
('Smart Monitor 27', 'Electronics', 350.00),
('Mechanical Keyboard', 'Accessories', 85.00),
('Standing Desk', 'Furniture', 450.00);

-- 5. insert into SalesTransactions table 
INSERT INTO SalesTransactions (ProductID, CustomerID, BranchID, EmployeeID, Quantity, SaleDate, TotalAmount) VALUES
(1, 1, 1, 2, 2, '2026-01-15', 2400.00),
(2, 2, 1, 5, 5, '2026-01-20', 125.00),
(3, 3, 2, 3, 3, '2026-02-10', 540.00),
(4, 4, 3, 4, 2, '2026-02-18', 700.00),
(1, 5, 1, 2, 1, '2026-03-05', 1200.00),
(5, 1, 1, 5, 4, '2026-03-12', 340.00),
(6, 6, 2, 3, 2, '2026-04-08', 900.00),
(4, 7, 3, 4, 1, '2026-04-22', 350.00),
(2, 2, 1, 2, 10, '2026-05-14', 250.00),
(1, 3, 2, 3, 1, '2026-05-25', 1200.00);


