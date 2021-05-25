SELECT
    COUNT(*) as TotalSales,
    *
FROM Invoice
GROUP BY BillingCountry