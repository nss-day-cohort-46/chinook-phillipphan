SELECT
    COUNT(*) AS TotalCustomers,
    e.*
FROM Customer AS c
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId