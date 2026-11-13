
-- display all the products from the right table with their sales 
-- right join
SELECT 
    t.TransactionID,
    t.SaleDate,
    p.ProductID,
    p.ProductName,
    p.Category
FROM SalesTransactions t
RIGHT JOIN Products p ON t.ProductID = p.ProductID;
