SELECT
    a.Title AS Album,
    m.Name AS MediaType,
    g.Name AS Genre,
    t.Name AS TrackName,
    t.Composer,
    t.Milliseconds,
    t.Bytes,
    t.UnitPrice
FROM Track AS t
JOIN Album AS a ON a.AlbumId = t.AlbumId
JOIN MediaType AS m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre AS g ON g.GenreId = t.GenreId