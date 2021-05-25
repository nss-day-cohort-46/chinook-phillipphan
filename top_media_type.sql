SELECT
    COUNT(*) AS TracksSold,
    m.*
FROM Invoice AS i
JOIN InvoiceLine AS il ON i.InvoiceId = il.Invoiceid
JOIN Track AS t ON t.TrackId = il.TrackId
JOIN MediaType AS m ON t.MediaTypeId = m.MediaTypeId
GROUP BY il.InvoiceId
ORDER BY TracksSold DESC
LIMIT 1