-- Задание 1

INSERT into Genre (genre_name)
VALUES 
	('Кантри'), 
	('Блюз'), 
	('Джаз'), 
	('Электронная музыка'), 
	('Поп музыка'), 
	('Метал');

INSERT INTO singer (singer_name)
VALUES 
	('Элтон Джон'),
	('Селин Дион'),
	('Алла Пугачева'),
	('Пол Маккартни');

INSERT INTO singer (singer_name)
VALUES ('Стинг');

INSERT INTO singer (singer_name)
VALUES ('Bob Dylan');

INSERT INTO genresinger (genre_id, singer_id)
values (5, 1), (5, 2), (2, 1), (5, 3), (6, 4), (5, 4);

INSERT INTO genresinger (genre_id, singer_id)
values (2, 5);

INSERT INTO genresinger (genre_id, singer_id)
values (5, 6);


INSERT INTO album (album_title, album_release_year)
VALUES 
	('Falling into You', 1996),
	('Elton John One Night Only', 2000),
	('Kisses on the Bottom', 2012),
	('Речной трамвайчик', 2001);

INSERT INTO album (album_title, album_release_year)
VALUES ('NOTHING LIKE THE RISING SUN', 2022);

INSERT INTO album (album_title, album_release_year)
VALUES ('Rough and Rowdy Ways', 2020);

INSERT INTO singeralbum (singer_id, album_id)
values (2, 1), (1, 2), (3, 4), (4, 3);

INSERT INTO singeralbum (singer_id, album_id)
values (5, 5);

INSERT INTO singeralbum (singer_id, album_id)
values (6, 6);
	
INSERT INTO track (album_id, track_title, track_len_sec)
VALUES 
	(4, 'Речной трамвайчик', 200),
	(1, 'Falling Into You', 259),
	(2, 'Goodbye Yellow Brick Road', 199),
	(2, 'Rocket Man', 343),
	(1, 'Because You Loved Me', 263),
	(3, 'I Cannot Wish You', 183);

INSERT INTO track (album_id, track_title, track_len_sec)
VALUES (4, 'Без меня тебе, любимый мой', 277);

INSERT INTO track (album_id, track_title, track_len_sec)
VALUES (1, 'My Heart Will Go On', 257);

INSERT INTO track (album_id, track_title, track_len_sec)
VALUES (5, 'If You Love Somebody Set Them Free', 246);

INSERT INTO track (album_id, track_title, track_len_sec)
VALUES (6, 'I Contain Multitudes', 276);

INSERT INTO track (album_id, track_title, track_len_sec)
VALUES (6, 'False Prophet', 360);

INSERT INTO collection (collection_name, collection_release_year)
VALUES 
	('Лучшие российские шлягеры', 2000),
	('Best romantice music', 2000),
	('Music forever', 2005),
	('The Beatles', 2010);

INSERT INTO collection (collection_name, collection_release_year)
VALUES ('Bluz', 2020);

INSERT INTO collection (collection_name, collection_release_year)
VALUES ('Modern Talking', 2022);

INSERT INTO collectiontrack (collection_id, track_id)
values (1, 1), (2, 2), (2, 3), (2, 4), (3, 4), (3, 5), (4, 5), (4, 6);

INSERT INTO collectiontrack (collection_id, track_id)
values (1, 13), (2, 14), (5, 15);

INSERT INTO collectiontrack (collection_id, track_id)
values (6, 16), (6, 17);