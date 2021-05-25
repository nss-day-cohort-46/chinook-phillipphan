SELECT
    COUNT(*) AS TotalSales,
    e.*
FROM Invoice AS i
JOIN Customer AS c ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
Group By e.EmployeeId
