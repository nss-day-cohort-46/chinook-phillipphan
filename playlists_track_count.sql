SELECT
    p.Name,
    COUNT(pt.TrackId)
FROM PlaylistTrack as pt
JOIN Playlist as p ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId