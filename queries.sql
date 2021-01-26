-- REFINING QUERIES 
-- Original query: Get some data from the "film" table and decide to use the query: 
SELECT * FROM film 
-- This shows all observations (rows and columns) in the film table

-- Revised query: Select two columns to view in the film table (film_id, title): 
SELECT film_id, title 
FROM film 

-- Compare the cost of the original query and the revised query: 
EXPLAIN 
SELECT * 
FROM film 
-- Seq Scan on film (cost=0.00..117.00 rows =1000 widith=384)

EXPLAIN 
SELECT film_id, title 
FROM film 
-- Seq Scan on film (cost=0.00..117.00 rows=1000 widith=19) 

-- The cost for both original and revised queries is the same at 0.00. 
-- The only thing that’s different is the width; the original query extracted results from ALL columns in the table which is why the width is at 384. 
-- The width in the revised query is much smaller at 19 because only 2 columns are extracted. 

-- ORDERING THE DATA 
-- Run a query that selects every film from the "film" table, with the movies sorted by title from A to Z, 
-- then by most recent release year, and then by highest to lowest rental rate: 
SELECT title, release_year, rental_rate 
FROM film 
ORDER BY rental_rate DESC, title 

-- GROUPING THE DATA 
-- Find the average rental rate for each rating category: 
SELECT rating, AVG (rental_rate) 
FROM film 
GROUP BY rating
ORDER BY rating 
-- There are 5 rating categories on the MPAA rating scale. They are as followed: 
-- G, PG, PG-13, R, and NC-17. The average rating rate for each group is as followed: 
-- G (2.88), PG (3.05), PG-13 (3.03), R (3.93), and NC-17 (2.97). PG holds the highest average rental rate, and G the lowest. 

-- Find the minimum and maximum rental durations for each rating category: 
SELECT rating, MIN (rental_duration), MAX (rental_duration) 
FROM film 
GROUP BY rating
ORDER BY rating 
-- 3 is the minimum and 7 is the maximum. 
