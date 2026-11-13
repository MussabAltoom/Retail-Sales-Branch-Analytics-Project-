-- 1. creating five tables
-- create branch table
CREATE TABLE Branches (
    BranchID SERIAL PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    Region VARCHAR(50) NOT NULL
);

-- 2.  create employees table
CREATE TABLE Employees (
    EmployeeID SERIAL PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    BranchID INT,
    ManagerID INT,
    PerformanceScore DECIMAL(5,2) CHECK (PerformanceScore >= 0 AND PerformanceScore <= 100),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- 3.  create customer 
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Region VARCHAR(50) NOT NULL
);

-- 4.  create products table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price > 0)
);

-- 5.   create SalesTransactions table
CREATE TABLE SalesTransactions (
    TransactionID SERIAL PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    BranchID INT,
    EmployeeID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    SaleDate DATE NOT NULL,
    TotalAmount DECIMAL(12,2) NOT NULL CHECK (TotalAmount >= 0),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
