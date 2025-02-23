create database songs;
use songs;
select * from songs;

SELECT song,artist,year ,COUNT(*)
FROM songs
GROUP BY song,artist,year
HAVING COUNT(*) >1;

SELECT genre, COUNT(*) AS song_count
FROM songs
GRoUP BY genre
ORDER BY song_count DESC;

SELECT song,artist,year
FROM Songs
WHERE artist LIKE '%Shakira%';

SELECT song,popularity,Genre
FROM songs
WHERE Genre LIKE '%pop%'
ORDER BY popularity DESC;

SELECT song,year,duration_ms
FROM songs
ORDER BY duration_ms ASC
LIMIT 5;

SELECT song,explicit
FROM Songs
WHERE explicit = 'TRUE';

SELECT song,explicit
FROM Songs
WHERE explicit = 'FALSE';

SELECT song,artist,year
FROM Songs
WHERE song LIKE '%one love%';

 SELECT song,popularity ,year
 FROM Songs
 WHERE year BETWEEN 2000 AND 2023
ORDER BY YEAR DESC;

SELECT MAX(popularity),song,artist
FROM Songs
GROUP BY popularity,song,artist;

SELECT YEAR, AVG(duration_ms) as avg_duration
FROM Songs
GROUP BY year
ORDER BY YEAR DESC;

SELECT song,popularity,kay
FROM Songs
WHERE popularity > 70 AND kay > 5;

SELECT song,artist,year,popularity
FROM Songs
WHERE artist LIKE '%Faith Evans%';

set sql_safe_updates = 0;

select * from songs;

DELETE FROM songs WHERE kay = 0;
ROLLBACK;

INSERT INTO Songs SELECT * FROM songs_backup WHERE kay = 0;

SELECT artist,song
from songs
WHERE artist LIKE 's%';

SELECT genre,AVG(danceability) as avg_danceability
FROM songs
GROUP BY genre
ORDER BY avg_danceability DESC;

SELECT year,COUNT(*) AS tot_songs
FROM SONGS
GROUP BY year
ORDER BY year DESC;

SELECT song,artist,energy,danceability
FROM songs
WHERE energy > 0.8 AND danceability > 0.7;

SELECT (SUM(explicit = TRUE)/ COUNT(*))*100 AS explicit_percantage
FROM SONGS;

SELECT GENRE,COUNT(*) AS genre_count
FROM Songs
GROUP BY genre
ORDER BY genre_count
LIMIT 1;





