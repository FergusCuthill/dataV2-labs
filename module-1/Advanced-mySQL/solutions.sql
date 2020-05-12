# Method 1 - subqueries 
SELECT ta.title_id AS Title, ta.au_id AS Author, t.advance * ta.royaltyper / 100 AS Advance, 
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS Royalty
FROM 
titleauthor ta 
INNER JOIN titles t ON t.title_id = ta.title_id
INNER JOIN sales s ON s.title_id = t.title_id;

SELECT Title, Author, sum(Royalty) AS Sum_Royalty, Advance
FROM (
SELECT ta.title_id AS Title, ta.au_id AS Author, t.advance * ta.royaltyper / 100 AS Advance, 
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS Royalty
FROM 
titleauthor ta 
INNER JOIN titles t ON t.title_id = ta.title_id
INNER JOIN sales s ON s.title_id = t.title_id
) summary
GROUP BY Title, Author, Advance;

SELECT Author, sum(Advance)+sum(SUM_Royalty) AS Profit
FROM (
SELECT Title, Author, sum(Royalty) AS Sum_Royalty, Advance
FROM (
SELECT ta.title_id AS Title, ta.au_id AS Author, t.advance * ta.royaltyper / 100 AS Advance, 
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS Royalty
FROM 
titleauthor ta 
INNER JOIN titles t ON t.title_id = ta.title_id
INNER JOIN sales s ON s.title_id = t.title_id
) summary
GROUP BY Title, Author
) summary2
GROUP BY Author
ORDER BY Profit DESC
LIMIT 3;


# Method 2 - Temp tables
CREATE TEMPORARY TABLE royalty_and_advance
SELECT ta.title_id as Title, ta.au_id AS Author, t.advance * ta.royaltyper / 100 AS Advance, 
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS Royalty
FROM 
titleauthor ta 
INNER JOIN titles t ON t.title_id = ta.title_id
INNER JOIN sales s ON s.title_id = t.title_id;

CREATE TEMPORARY TABLE royalties_adv_by_author2
SELECT Title, Author, sum(Royalty) AS Sum_Royalty, Advance
FROM royalty_and_advance
GROUP BY Title, Author, Advance;

SELECT Author, sum(Advance)+sum(SUM_Royalty) AS Profit
FROM royalties_adv_by_author2
GROUP BY Author
ORDER BY Profit DESC
LIMIT 3;

CREATE TABLE most_profiting_authors_fergus
SELECT Author, sum(Advance)+sum(SUM_Royalty) AS Profit
FROM (
SELECT Title, Author, sum(Royalty) AS Sum_Royalty, Advance
FROM (
SELECT ta.title_id AS Title, ta.au_id AS Author, t.advance * ta.royaltyper / 100 AS Advance, 
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS Royalty
FROM 
titleauthor ta 
INNER JOIN titles t ON t.title_id = ta.title_id
INNER JOIN sales s ON s.title_id = t.title_id
) summary
GROUP BY Title, Author
) summary2
GROUP BY Author
ORDER BY Profit DESC
LIMIT 3;