--Задание 3

--6) Количество исполнителей в каждом жанре
select genre_name, count(singer_id) from genresinger s
join genre g on g.id = s.genre_id
group by g.genre_name;

--7) Количество треков, вошедших в альбомы 2009–2010 годов
select count(track_id) from collectiontrack c
join track t on t.id = c.track_id 
join album a on t.album_id = a.id
where album_release_year between 2009 and 2019
group by a.album_title;

--8) Средняя продолжительность треков по каждому альбому
select album_title, avg(track_len_sec) from collectiontrack c
join track t on t.id = c.track_id 
join album a on t.album_id = a.id
group by a.album_title;

--9) Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT singer_name FROM singer s
WHERE singer_name NOT IN (SELECT DISTINCT singer_name FROM singer m
LEFT JOIN singeralbum s1 ON s1.singer_id = m.id
LEFT JOIN album a ON s1.album_id = a.id
WHERE album_release_year=2020)
ORDER BY singer_name;


--10) Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
select collection_name, singer_name from collection c3
join collectiontrack c2 on c2.collection_id  = c3.id 
join track t on t.id = c2.track_id  
join album a on a.id = t.album_id 
join singeralbum s on s.album_id = a.id 
join singer s1 on s1.id = s.singer_id
where lower(collection_name) like 'bluz'
group by collection_name, singer_name;





	