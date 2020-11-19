USE sakila;
SELECT * FROM actor WHERE last_name="cage";
-- e. SELECT everything from the "actor" table 
-- where the first_name is not "ZERO" and not "NICK"
SELECT * FROM actor WHERE NOT first_name ="ZERO"
AND NOT first_name="nick";
/*f. SELECT everything from the "actor" table 
where the first_name is "NICK", "JOHNNY", "JAMES",
 "MORGAN", or "WHOOPI" (hint: use the "IN" keyword)*/
 SELECT * FROM actor WHERE first_name IN ("NICK", "JOHNNY","JAMES","MORGAN","WHOOPI");
 -- g. SELECT all rows from the "actor" table with an actor id ranging from 50 to 150;
 SELECT * FROM actor WHERE actor_id between 50 AND 150;
 -- h. SELECT all rows from the "actor" table where first_name starts with the letter "C" 
 -- (HINT: LIKE)
 SELECT * FROM actor WHERE first_name LIKE "C%";
 -- i. Select all rows from the "actor" table, ordered by first_name
 SELECT * FROM actor ORDER BY first_name;
 -- j. Select all rows from the "actor" table, ordered by last_name descending
 SELECT * FROM actor ORDER BY last_name DESC;
 -- k. Get the count of rows in the "actor" table.
 SELECT COUNT(*) FROM actor;
 -- l. Get the count of rows in the "actor" table with distinct first_name
 SELECT COUNT(DISTINCT first_name ) FROM actor;
 -- m. SELECT all the horror films using the IN keyword.
 -- n. SELECT all the horror films using the AS keyword.
 SELECT * FROM film_category as fc JOIN film AS f on fc.film_id=f.film_id WHERE category_id IN (11);
 -- a. INSERT a row in the "actor" table, with your own first and last name.
INSERT INTO actor (first_name, last_name) VALUES("RUIMIN", "HUANG");
SELECT * FROM actor WHERE first_name="Ruimin";
-- b. INSERT 5 rows in the "film_actor" table, 
-- with the actor_id given to you, along with 5 film_id's of your choosing.
/*INSERT INTO film_actor (actor_id,film_id) VALUES (209,190);
INSERT INTO film_actor (actor_id,film_id) VALUES (209,170);
INSERT INTO film_actor (actor_id,film_id) VALUES (209,890);
INSERT INTO film_actor (actor_id,film_id) VALUES (209,777);
INSERT INTO film_actor (actor_id,film_id) VALUES (209,666);*/
-- c. UPDATE the first_name and last_name of the row containing your name, and set it to your newfound stage name.
 UPDATE actor SET first_name="Ray", last_name="Light" WHERE first_name="Ruimin";
-- d. Delete the row containing your data, and give up your acting career.
delete from film_actor where actor_id=209;
delete from actor where actor_id>200;
select * from actor;
-- 3 a. SELECT all rows from the category table. Note what id is "Horror"
select * from category;
/*b. SELECT all rows from the film table and join the film_category table on film_id. 
Then join the category table on the category ID 
and add a where clause to retrieve only films with the horror category_id.*/
select * from film as f
join film_category as fc on f.film_id=fc.film_id
join category as c on fc.category_id=c.category_id 
Where c.category_id=11;
