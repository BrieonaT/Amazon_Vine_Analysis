SELECT * FROM customers_table
SELECT * FROM products_table
SELECT * FROM review_id_table
SELECT * FROM vine_table

CREATE TABLE filtered_votes AS SELECT * FROM vine_table
WHERE total_votes >= 20
SELECT * FROM filtered_votes



CREATE TABLE helpful_votes AS SELECT * FROM filtered_votes WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
SELECT * FROM helpful_votes

CREATE TABLE vine_program AS SELECT * FROM helpful_votes WHERE vine = 'Y'
SELECT * FROM vine_program

CREATE TABLE not_vine_program AS SELECT * FROM helpful_votes WHERE vine = 'N'
SELECT * FROM not_vine_program






/* Total number of reviews from filtered votes*/
SELECT COUNT(review_id)
FROM filtered_votes

/* Total number of Vine reviews*/
SELECT COUNT(review_id)
FROM filtered_votes
WHERE vine = 'Y'

/* Total number of Non-Vine reviews*/
SELECT COUNT(review_id)
FROM filtered_votes
WHERE vine = 'N'


/* Total number of 5-star reviews from filtered votes*/
SELECT COUNT(review_id)
FROM filtered_votes
WHERE star_rating = '5'; 


/* Total number of 5-star reviews from Vine reviews*/
SELECT COUNT(review_id)
FROM vine_program
WHERE star_rating = '5'; 

/* Total number of 5-star reviews from non-Vine reviews*/
SELECT COUNT(review_id)
FROM not_vine_program
WHERE star_rating = '5'; 




/* Vine percentage*/
SELECT star_rating, 
	COUNT(star_rating) AS star_count,   
	ROUND(COUNT(star_rating) * 100.0 / (SELECT COUNT(*) FROM vine_program), 2) AS star_percent
FROM vine_program
GROUP BY star_rating





/* Non-Vine percentage*/
SELECT star_rating, 
	COUNT(star_rating) AS star_count,   
	ROUND(COUNT(star_rating) * 100.0 / (SELECT COUNT(*) FROM not_vine_program), 2) AS star_percent
FROM not_vine_program
GROUP BY star_rating

