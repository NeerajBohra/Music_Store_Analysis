/*Let's invite the artists who have written the most rock music in our dataset. Write a
query that returns the Artist name and total track count of the top 10 rock bands*/


Select artist.artist_id, artist.name, COUNT(artist.artist_id) as track_count
from artist
JOIN album ON album.artist_id = artist.artist_id
JOIN track ON track.album_id = album.album_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE "Rock"
GROUP BY artist.artist_id
ORDER BY track_count DESC
LIMIT 10;

