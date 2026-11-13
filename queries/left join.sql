
-- display all the brabces and the branches that has never got any sales 
-- left join 
SELECT 
    b.BranchID,
    b.BranchName,
    b.Region,
    t.TransactionID,
    t.TotalAmount
FROM Branches b
LEFT JOIN SalesTransactions t ON b.BranchID = t.BranchID;
