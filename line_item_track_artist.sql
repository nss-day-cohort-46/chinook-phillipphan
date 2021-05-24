SELECT
    t.Name AS TrackName,
    ar.Name AS ArtistName,
    i.*
FROM InvoiceLine as i
JOIN Track AS t ON t.TrackId = i.TrackId
JOIN Album as a ON t.AlbumId = a.AlbumId
JOIN Artist as ar ON a.ArtistId = ar.ArtistId