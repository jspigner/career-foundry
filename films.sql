-- In pgAdmin 4

-- What film genres exist in the category table? 
SELECT name, category_id FROM category 

-- Add new genres 
INSERT INTO category
(category_id,name) 
VALUES (17,’Thriller’)

INSERT INTO category
(category_id,name) 
VALUES (18,’Crime’)

INSERT INTO category
(category_id,name) 
VALUES (19,’Mystery’)

INSERT INTO category
(category_id,name) 
VALUES (20,’Romance’)

INSERT INTO category
(category_id,name) 
VALUES (21,’War’)

-- Update African Egg
-- African Egg is the name of a film
SELECT film_id, title FROM film 
-- The Film ID for African Egg is 5. The Category ID for Thriller is 17.
-- I used film_id (5) to view the category_id (currently: 8) for African Egg. 
-- Then, I updated the category_id for African Egg to make it as Thriller. 
UPDATE film_category
SET category_id = 17
WHERE film_id = 5 

-- Delete a genre 
DELETE FROM category
WHERE category_id = 19 
-- I deleted 'Mystery'
