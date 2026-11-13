
-- divide the customers to four 
-- distribution function 
SELECT 
    c.CustomerID,
    c.CustomerName,
    SUM(t.TotalAmount) AS TotalSpent,
    NTILE(4) OVER(ORDER BY SUM(t.TotalAmount) DESC) AS SpendingQuartile,
    ROUND(CAST(CUME_DIST() OVER(ORDER BY SUM(t.TotalAmount) DESC) AS NUMERIC), 2) AS CumulativeDistribution
FROM Customers c
JOIN SalesTransactions t ON c.CustomerID = t.CustomerID
GROUP BY c.CustomerID, c.CustomerName;
