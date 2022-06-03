insert into genre(genre_title) values ('death metal'),('pop rock'),('hard rock'),('industrial metal'),('rock and roll');
insert into musical_artists(name) values ('Cannibal Corpse'),('Avril Lavigne'),('System of a Down'),('Lordi'),('Rammstein'),
('Marilyn Manson'),('Lindemann'),('Elvis Presley');
insert into genre__musical_artists(genre_id, musical_artists_id) values(1,1), (2,2), (3,3), (3,4), (4,5),
(4,6), (4,7), (5,8), (4, 3);
insert into music_album(album_title, year_of_release) values ('Toxicity', 2001),('F & M', 2018),('Mutter', 2020),
('Love sux', 2022), ('Smells Like Children', 1995), ('Back In Memphis', 1969), ('Hammer Smashed Face', 1993),
('The Arockalypse', 2019);
insert into musical_artists__music_album(musical_artists_id, music_album_id) values (1,7), (2,4), (3,1), (4,8),
(5,3), (6,5), (7,2), (8,6);
insert into track(music_album_id, track_title, duration) values (1, 'Chop Suey!', 210),(1, 'Toxicity', 218),(3, 'Ich Will', 217),
(4,'Bois Lie', 176),(7, 'Hammer Smashed Face', 234),(8, 'Hard Rock Hallelujah!', 179),(5, 'The Nobodies', 215),(2, 'Allesfresser', 312),
(6, 'A Little Bit Of Green', 206),(2, 'Blut', 242),(3, 'My Mutter', 254),(5, 'Sweet Dreams', 293),(7,'Evisceration Plague', 287),
(8, 'Hug You Hardcore', 220),(7, 'Scourge of Iron', 293);
insert into collection_of_songs(сollection_of_songs_title, year_of_release) values ('CC_сollection', 2001), ('AL_сollection', 2022),
('SD_сollection', 2018), ('L_сollection', 2006), ('RM_сollection', 2002), ('MM_сollection', 2000), ('LM_сollection', 2019),('EP_сollection', 1969);
insert into track__collection_of_songs(track_id, collection_of_songs_id) values (1, 3), (2, 3), (3, 5), (4, 2), (5, 1), (6, 4), (7, 6),
(8, 7), (9, 8), (10, 7), (11, 5), (12, 6), (13, 1), (14, 4);