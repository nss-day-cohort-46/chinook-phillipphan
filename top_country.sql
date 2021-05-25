SELECT
    SUM(Total) as TotalSales,
    *
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC
LIMIT 1