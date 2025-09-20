USE learnql;

-- SQL Lesson 1: SELECT queries 101

SELECT pixar_movies.movie
FROM pixar_movies;

SELECT pixar_movies.director
FROM pixar_movies;

SELECT movie, director
FROM pixar_movies;

SELECT movie, year_released
FROM pixar_movies;

-- SQL Lesson 2: Queries with constraints (Pt. 1)

SELECT movie, year_released
FROM pixar_movies
WHERE year_released = 1995;

SELECT movie, year_released
FROM pixar_movies
WHERE year_released BETWEEN 2000 AND 2010;

SELECT movie, year_released
FROM pixar_movies
WHERE year_released NOT BETWEEN 2000 AND 2010;

--  SQL Lesson 3: Queries with constraints (Pt. 2)

SELECT movie
FROM pixar_movies
WHERE movie LIKE "Toy Story%";

SELECT movie, director
FROM pixar_movies
WHERE director LIKE "%John Lasseter%";

SELECT pixar_movies.movie, pixar_movies.director
FROM pixar_movies
WHERE director NOT LIKE "%John Lasseter%";

SELECT movie
FROM pixar_movies
WHERE movie LIKE "%WALL%";

--  SQL Lesson 4: Filtering and sorting Query results

SELECT DISTINCT director
FROM pixar_movies
ORDER BY director ASC

SELECT DISTINCT *
FROM pixar_movies
ORDER BY year_released DESC LIMIT 4

SELECT DISTINCT *
FROM pixar_movies
ORDER BY movie ASC LIMIT 5

SELECT DISTINCT *
FROM pixar_movies
ORDER BY movie ASC LIMIT 5 OFFSET 5

--  SQL Review: Simple SELECT Queries

SELECT city, population
FROM uscities
Where county_name LIKE "Queens";

SELECT city, lat
FROM uscities
WHERE county_name LIKE "New York"
ORDER BY lat DESC;

SELECT city, lng
FROM uscities
WHERE lng > -87.629798
ORDER BY lng DESC;

SELECT city, population
FROM uscities
WHERE county_name LIKE "New York"
ORDER BY population DESC
LIMIT 2 OFFSET 3;

---
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY title ASC;
