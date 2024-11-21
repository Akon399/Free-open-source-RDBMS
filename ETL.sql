-- Create the database
CREATE DATABASE ETL_Project;

-- Set the ETL_Project DB as default

-- Create Schema
CREATE SCHEMA IF NOT EXISTS etl_project;

-- Create Movies Table
CREATE TABLE IF NOT EXISTS etl_project.movies (
    id INTEGER PRIMARY KEY NOT NULL,
    original_language VARCHAR(10),
    original_title VARCHAR(255),
    overview TEXT,
    popularity FLOAT,
    release_date DATE,
    title VARCHAR(255) NOT NULL,
    vote_average FLOAT,
    vote_count INTEGER
);


-- Create Genres Table
CREATE  TABLE IF NOT EXISTS etl_project.genres (
	id INTEGER PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
);

-- Create Movie Genres Junction Table
CREATE TABLE IF NOT EXISTS etl_project.movie_genres (
    movie_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES etl_project.movies(id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES etl_project.genres(id) ON DELETE CASCADE
);

# QUERY.

SELECT id, original_language, original_title, overview, popularity, release_date, title, vote_average, vote_count
FROM etl_project.movies;

SELECT id, name
FROM etl_project.genres;

SELECT movie_id, genre_id
FROM etl_project.movie_genres;

SELECT m.id, m.original_language, m.original_title, m.overview, m.popularity, 
       m.release_date, m.title, m.vote_average, m.vote_count, g.id AS genre_id, g.name AS genre_name
FROM etl_project.movies m
JOIN etl_project.movie_genres mg ON m.id = mg.movie_id
JOIN etl_project.genres g ON mg.genre_id = g.id;


SELECT m.title, g.name 
FROM etl_project.movies m
JOIN etl_project.movie_genres mg ON m.id = mg.movie_id
JOIN etl_project.genres g ON mg.genre_id = g.id;

SELECT m.title, g.name 
FROM etl_project.movies m
JOIN etl_project.movie_genres mg ON m.id = mg.movie_id
JOIN etl_project.genres g ON mg.genre_id = g.id
WHERE g.name = 'Action';