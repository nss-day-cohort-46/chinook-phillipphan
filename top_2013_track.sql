SELECT
    COUNT(*) AS TracksSold,
    t.*
FROM Invoice AS i
JOIN InvoiceLine AS il ON i.InvoiceId = il.Invoiceid
JOIN Track AS t ON t.TrackId = il.TrackId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY il.InvoiceId
ORDER BY TracksSold DESC
LIMIT 1