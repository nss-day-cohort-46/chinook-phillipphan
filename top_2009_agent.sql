SELECT
    COUNT(*) AS TotalSales,
    e.*
FROM Invoice AS i
JOIN Customer AS c ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
WHERE i.InvoiceDate LIKE "2009%"
Group By e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1