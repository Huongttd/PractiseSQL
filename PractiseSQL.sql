-- Q1/ Select only the Names of all the Bands
use record_company;
select Name as 'Band Name' from bands
order by name asc;
-- Q2/ Select the Oldest Album
select * from record_company.albums
order by release_year asc
limit 1;
-- Q3/ Get all Bands that have Albums
SELECT DISTINCT bands.name as 'Band Name'
FROM bands JOIN albums ON bands.id = albums.band_id;
-- Q4/ Get the Longest Album
select	albums.name as Name,
		albums.release_year as 'Release Year',
		SUM(songs.length) as 'Duration'
from albums join songs on albums.id = songs.album_id
group by songs.album_id
ORDER BY Duration DESC
LIMIT 1;
-- Q5/  Update the Release Year of the Album with no Release Year
UPDATE albums
SET release_year = 1986
WHERE id = 4;