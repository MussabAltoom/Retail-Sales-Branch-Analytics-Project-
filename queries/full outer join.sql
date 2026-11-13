
-- display all the branches and all the branches with the cases that unmatched 
-- full outer join 
SELECT 
    b.BranchName,
    b.Region,
    t.TransactionID,
    t.TotalAmount
FROM Branches b
FULL OUTER JOIN SalesTransactions t ON b.BranchID = t.BranchID;
