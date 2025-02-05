use sakila;
-- Display all available tables in the Sakila database.
SHOW tables;

-- Retrieve all the data from the tables actor, film and customer.
SHOW TABLES LIKE 'actor' OR
SHOW TABLES LIKE 'film' OR 
SHOW TABLES LIKE 'customer';

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table 
SELECT name AS language FROM sakila.language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM sakila.staff;
-- Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;
-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has
SELECT COUNT(store_id) FROM sakila.store;
-- 5.2 Determine the number of employees that the company has
SELECT COUNT(staff_id) FROM sakila.staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS available_films FROM sakila.inventory;
SELECT COUNT(*) AS rented_films FROM sakila.rental;
-- 5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
-- Retrieve the 10 longest films.
SELECT title, length FROM sakila.film 
ORDER BY length DESC
 LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name FROM sakila.actor
WHERE first_name = "SCARLETT";
-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length FROM sakila.film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_films FROM sakila.film 
WHERE special_features LIKE '%Behind the Scenes%';