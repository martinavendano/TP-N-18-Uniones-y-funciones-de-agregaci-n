--tp18

-- Micro desafílo - Paso 1:

SELECT series.title AS titulo,genres.name AS genero FROM movies_db.series
INNER JOIN movies_db.genres ON series.genre_id = genres.id;

-- 2
SELECT episodes.title AS titulo,actors.first_name AS "nombre del actor",actors.last_name AS "apellido del actor" FROM movies_db.actor_episode
INNER JOIN movies_db.actors ON actor_episode.actor_id = actors.id
INNER JOIN movies_db.episodes ON actor_episode.episode_id = episodes.id;


-- Micro desafío- Paso 2
SELECT DISTINCT actors.first_name AS "nombre del actor", actors.last_name AS "apellido del actor" FROM movies_db.actor_movie
INNER JOIN movies_db.movies ON movies.id = actor_movie.movie_id
INNER JOIN movies_db.actors ON actors.id = actor_movie.actor_id
WHERE movies.title LIKE 'La Guerra de las galaxias%';


-- Micro desafío - Paso 3
SELECT movies.title, COALESCE(genres.name, 'no tiene genero') AS genre FROM movies_db.movies
LEFT JOIN movies_db.genres ON movies.genre_id = genres.id;


-- Micro desafío - Paso 4
SELECT title AS Título,(to_days(end_date) - to_days(release_date)) AS Duracion FROM movies_db.series;


-- Micro desafíp - Paso 5

select first_name from actors where length(first_name) > 6
SELECT count(*) FROM movies_db.episodes;
SELECT series.title, count(seasons.id) as seasons FROM movies_db.series inner join seasons on serie_id = series.id group by series.title;
SELECT genres.name, count(movies.id) as movies 
FROM movies_db.genres inner join movies on genre_id = genres.id group by genres.name having count(movies.id) >= 3;