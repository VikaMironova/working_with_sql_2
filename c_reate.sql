create table if not exists musical_artists (
	id SERIAL primary key,
	name text not null);
create table if not exists genre__musical_artists (
	genre_id integer references genre(id),
	musical_artists_id integer references musical_artists(id),
	constraint genre__musical_artists_pk primary key (genre_id, musical_artists_id));
create table if not exists genre (
	id SERIAL primary key,
	genre_title text not null);
create table if not exists music_album (
	id SERIAL primary key,
	album_title text not null,
	year_of_release integer not null);
create table if not exists musical_artists__music_album (
	musical_artists_id integer references musical_artists(id),
	music_album_id integer references music_album(id),
	constraint musical_artists__music_album_pk primary key (musical_artists_id, music_album_id));
create table if not exists track (
	id SERIAL primary key,
	music_album_id integer not null references music_album(id),
	track_title text not null,
	duration integer not null);
create table if not exists collection_of_songs (
	id SERIAL primary key,
	сollection_of_songs_title text not null,
	year_of_release integer not null);
create table if not exists track__collection_of_songs (
	track_id integer references track(id),
	collection_of_songs_id integer references collection_of_songs(id),
	constraint track__collection_of_songs_pk primary key (track_id, collection_of_songs_id));