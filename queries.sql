/* QUESTION 1: */
SELECT DISTINCT prime_genre
FROM sakila.applestore2;
/* QUESTION 2: */
SELECT prime_genre, sum(rating_count_tot) as tot_rating_per_genre
FROM sakila.applestore2
group by prime_genre
order by tot_rating_per_genre desc;
/* QUESTION 3: */
SELECT prime_genre, count(id) as number_apps
FROM sakila.applestore2
group by prime_genre
order by number_apps desc;
/* QUESTION 4: */
SELECT prime_genre, count(id) as number_apps
FROM sakila.applestore2
group by prime_genre
order by number_apps asc
limit 1;
/* QUESTION 5: */
SELECT track_name, rating_count_tot
FROM sakila.applestore2
order by rating_count_tot desc
limit 10;
/* QUESTION 6: */
SELECT track_name, user_rating
FROM sakila.applestore2
order by user_rating desc
limit 10;
/* QUESTION 7: */
WITH tab1 as (SELECT track_name, rating_count_tot, user_rating
FROM sakila.applestore2
order by rating_count_tot desc
limit 10)
select avg(rating_count_tot) as avg_rat_count, avg(user_rating) as avg_usr_rat
from tab1;
/* QUESTION 8: */
WITH tab2 as (SELECT track_name, user_rating, rating_count_tot
FROM sakila.applestore2
order by user_rating desc
limit 10)
select avg(rating_count_tot) as avg_rat_count, avg(user_rating) as avg_usr_rat
from tab2;
/* QUESTION 9: */
-- 10 apps best rated by users have an averge rating of 5 but were rated only by 377 people, 
-- while 10 most rated apps are rated by 1483081 people with average rating 4.35
/* QUESTION 10: */
SELECT track_name, user_rating, rating_count_tot
FROM sakila.applestore2
order by user_rating desc, rating_count_tot desc
limit 3;
/* QUESTION 11: */
SELECT distinct price
FROM sakila.applestore2;
SELECT distinct currency
FROM sakila.applestore2;
SELECT price, count(id) as num_apps, avg(user_rating) as avg_user_rating, avg(rating_count_tot) as avg_rat_count
FROM sakila.applestore2
group by price
order by price;
-- More people use and rate free apps.
