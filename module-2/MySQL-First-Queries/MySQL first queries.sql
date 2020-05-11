SELECT DISTINCT prime_genre 
FROM IHAMSFT.app;

SELECT prime_genre, sum(rating_count_tot) as Total_ratings
FROM IHAMSFT.app
GROUP BY prime_genre
ORDER BY Total_ratings DESC
LIMIT 1;

SELECT DISTINCT prime_genre, count(*) as no_apps
FROM IHAMSFT.app
GROUP BY prime_genre
ORDER BY no_apps DESC
LIMIT 1;

SELECT DISTINCT prime_genre, count(*) as no_apps
FROM IHAMSFT.app
GROUP BY prime_genre
ORDER BY no_apps ASC
LIMIT 1;

SELECT track_name, rating_count_tot as Total_ratings
FROM IHAMSFT.app
ORDER BY Total_ratings DESC
LIMIT 10;

SELECT track_name, user_rating_ver
FROM IHAMSFT.app
ORDER BY user_rating_ver DESC
LIMIT 10;
