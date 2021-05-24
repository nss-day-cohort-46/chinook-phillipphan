SELECT
    t.Name AS TrackName,
    i.*
FROM InvoiceLine as i
JOIN Track AS t ON t.TrackId = i.TrackId