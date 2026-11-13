-- comparing currently monthly sales with previous month
-- navigation functions 
WITH MonthlySales AS (
    SELECT 
        TO_CHAR(SaleDate, 'YYYY-MM') AS SaleMonth,
        SUM(TotalAmount) AS MonthlyRevenue
    FROM SalesTransactions
    GROUP BY TO_CHAR(SaleDate, 'YYYY-MM')
)
SELECT 
    SaleMonth,
    MonthlyRevenue,
    LAG(MonthlyRevenue, 1) OVER(ORDER BY SaleMonth) AS PreviousMonthRevenue,
    LEAD(MonthlyRevenue, 1) OVER(ORDER BY SaleMonth) AS NextMonthRevenue,
    MonthlyRevenue - LAG(MonthlyRevenue, 1) OVER(ORDER BY SaleMonth) AS RevenueDifference
FROM MonthlySales;
