
-- calculate cumulative sales and moving average for the last 3 transactions
-- aggregate window functions 
SELECT 
    t.TransactionID,
    b.BranchName,
    t.SaleDate,
    t.TotalAmount,
    SUM(t.TotalAmount) OVER(
        ORDER BY t.SaleDate, t.TransactionID 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeSales_Rows,
    AVG(t.TotalAmount) OVER(
        ORDER BY t.SaleDate, t.TransactionID 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS MovingAvg3Transactions,
    SUM(t.TotalAmount) OVER(
        ORDER BY t.SaleDate 
        RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeSales_Range,
    AVG(t.TotalAmount) OVER(PARTITION BY b.BranchName) AS BranchAvgSale,
    MAX(t.TotalAmount) OVER(PARTITION BY b.BranchName) AS BranchMaxSale,
    MIN(t.TotalAmount) OVER(PARTITION BY b.BranchName) AS BranchMinSale,
    COUNT(t.TransactionID) OVER(PARTITION BY b.BranchName) AS BranchTotalOrders
FROM SalesTransactions t
JOIN Branches b ON t.BranchID = b.BranchID;
