
SELECT title, name
FROM series
INNER JOIN genres ON genre_id = genres.id;


-- antigua con where
SELECT title, first_name, last_name
FROM movies, actor_movie, actors
WHERE movies.id = movie_id 
AND actor_id = actors.id;

SELECT title, first_name, last_name
FROM movies 
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actors ON actor_id = actors.id;

-- MICRODESAFIO I
SELECT title
FROM episodes
INNER JOIN actor_episode ON episodes.id = episode_id
INNER JOIN actors ON actor_id = actors.id;
 

-- MICRODESAFIO II
SELECT DISTINCT first_name, last_name
FROM movies
INNER JOIN actor_movie ON movies.id = movie_id
INNER JOIN actor ON actors.id = actor_id
WHERE title LIKE "Harry%"

-- MICRODESAFIO III

SELECT movies.id, title, ifnull(name, 'no tiene género') AS 'genero'
FROM movies
LEFT JOIN genres ON genre_id =genres.id; 

-- MICRODESAFIO IV
SELECT title, datediff (end_date, release_date) AS Duracion
FROM series;

-- MICRODESAFIO V
SELECT first_name 
FROM actors
WHERE LENGTH (first_name) > 6;

SELECT COUNT(*) AS 'total de episodios'
FROM episodes;




