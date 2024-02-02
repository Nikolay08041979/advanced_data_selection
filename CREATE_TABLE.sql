CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	singer_name VARCHAR(40) UNIQUE NOT NULL
);


-- многие ко многим
CREATE TABLE IF NOT EXISTS GenreSinger (
	genre_id INTEGER REFERENCES Genre(id),
	singer_id INTEGER REFERENCES Singer(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);


CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	album_title VARCHAR(60) UNIQUE NOT NULL,
	album_release_year INTEGER
);

-- многие ко многим
CREATE TABLE IF NOT EXISTS SingerAlbum (
	singer_id INTEGER REFERENCES Singer(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT kp PRIMARY KEY (singer_id, album_id)
);


CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY, 
	album_id INTEGER REFERENCES Album(id),
	track_title VARCHAR(60) UNIQUE NOT NULL,
	track_len_sec INTEGER
);


CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60),
	collection_release_year INTEGER
);


-- многие ко многим
CREATE TABLE IF NOT EXISTS CollectionTrack (
	collection_id INTEGER REFERENCES Collection(id),
	track_id INTEGER REFERENCES Track(id),
	CONSTRAINT lk PRIMARY KEY (collection_id, track_id)
);