
-- retrieve the transactions that coonected to one branch and one employee 
-- inner join
SELECT 
    t.TransactionID,
    b.BranchName,
    c.CustomerName,
    p.ProductName,
    t.Quantity,
    t.TotalAmount,
    t.SaleDate
FROM SalesTransactions t
INNER JOIN Branches b ON t.BranchID = b.BranchID
INNER JOIN Customers c ON t.CustomerID = c.CustomerID
INNER JOIN Products p ON t.ProductID = p.ProductID;
