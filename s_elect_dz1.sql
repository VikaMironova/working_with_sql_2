
select album_title, year_of_release from music_album
	where year_of_release = 2018;
select track_title, duration from track 
	where duration = (select max(duration) from track);
select track_title from track
	where duration >= 210;
select сollection_of_songs_title from collection_of_songs
	where year_of_release between 2018 and 2020;
select name from musical_artists
	where name not like '%% %%';
select track_title from track
	where track_title like '%%My%%';