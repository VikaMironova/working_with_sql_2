select genre_title, musical_artists_id from genre
	join genre__musical_artists ne on genre_id = ne.genre_id
	group by genre_title;

select album_title, year_of_release, count(tracks.id) from music_album
	join track tracks on music_album.id = tracks.music_album_id
	where year_of_release BETWEEN 2019 and 2020
	group by album_title, year_of_release;

select album_title, avg(duration) from music_album
	join track on music_album.id = music_album_id
	group by album_title;

select name from musical_artists
	where name not in (select name from musical_artists
	join musical_artists__music_album on musical_artists.id = musical_artists_id
	join music_album on music_album.id = music_album_id
	where year_of_release = 2020)
	order by name;

select distinct c.сollection_of_songs_title from collection_of_songs c
	join track__collection_of_songs tc on c.id = tc.collection_of_songs_id
	join track t on t.id = tc.track_id
	join music_album a on a.id = t.music_album_id
	join musical_artists__music_album ea on a.id = ea.music_album_id
	join musical_artists e on e.id = ea.musical_artists_id
	where e.name like '%%Rammstein%%';


select album_title from music_album a
	join musical_artists__music_album mam on a.id = mam.music_album_id
	join musical_artists ma on ma.id = mam.musical_artists_id
	join genre__musical_artists gma on ma.id = gma.musical_artists_id
	join genre g on g.id = gma.genre_id
	group by a.album_title
	having count(g.genre_title) > 1
	order by a.album_title;

select track_title from track
	left join track__collection_of_songs on track.id = track_id
	where track_id is null;

select n.name from musical_artists as n
	join musical_artists__music_album as nmama on n.id = nmama.musical_artists_id
	join music_album as nma on nma.id = nmama.music_album_id
	join track as nk on nk.music_album_id = nma.id
	where duration = (select min(duration) from track);

select distinct at.album_title from music_album as at
	join track as tr on tr.music_album_id = at.id
	where tr.music_album_id in (
		select music_album_id from track
		group by music_album_id
		having count(id) = (select count(id) from track
			group by music_album_id order by count(tr.id) limit 1))
	order by at.album_title;