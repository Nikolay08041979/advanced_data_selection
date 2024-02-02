-- Задание 2
-- 1) Название и продолжительность самого длительного трека.
SELECT track_title, track_len_sec FROM track
where track_len_sec = (select MAX(track_len_sec) from track);

-- 2) Название треков, продолжительность которых не менее 3,5 минут
SELECT track_title, track_len_sec FROM track
where track_len_sec >= 210;

--3) Названия сборников, вышедших в период с 2008 по 2010 год включительно
SELECT collection_name, collection_release_year FROM collection c 
where collection_release_year between 2008 and 2010;

-- 4) Исполнители, чьё имя состоит из одного слова
SELECT singer_name FROM singer
where (length(singer_name)-length(replace(singer_name,' ',''))+1)=1;

--5) Название треков, которые содержат слово «мой» или «my»
SELECT track_title FROM track t 
WHERE lower(track_title) LIKE '%мой%' or lower(track_title) LIKE '%my%';
