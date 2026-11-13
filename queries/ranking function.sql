
-- sorting the products according to each category 
-- ranking function 
SELECT 
    p.Category,
    p.ProductName,
    SUM(t.TotalAmount) AS TotalRevenue,
    ROW_NUMBER() OVER(PARTITION BY p.Category ORDER BY SUM(t.TotalAmount) DESC) AS RowNum,
    RANK() OVER(PARTITION BY p.Category ORDER BY SUM(t.TotalAmount) DESC) AS SalesRank,
    DENSE_RANK() OVER(PARTITION BY p.Category ORDER BY SUM(t.TotalAmount) DESC) AS DenseSalesRank,
    ROUND(CAST(PERCENT_RANK() OVER(PARTITION BY p.Category ORDER BY SUM(t.TotalAmount) DESC) AS NUMERIC), 2) AS PercentRank
FROM Products p
JOIN SalesTransactions t ON p.ProductID = t.ProductID
GROUP BY p.Category, p.ProductName;
