SELECT a.au_id as Author_ID, a.au_lname as Last_Name, a.au_fname as First_Name, t.title as Title, p.pub_name as Publisher
FROM authors a INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN titles t on ta.title_id = t.title_id
INNER JOIN publishers p on p.pub_id = t.pub_id;


SELECT a.au_id as Author_ID, a.au_lname as Last_Name, a.au_fname as First_Name, p.pub_name as Publisher, count(t.title) as Title_Count
FROM authors a INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN titles t on ta.title_id = t.title_id
INNER JOIN publishers p on p.pub_id = t.pub_id
GROUP BY Author_ID, Last_Name, First_Name, Publisher;


SELECT a.au_id as Author_ID, a.au_lname as Last_Name, a.au_fname as First_Name, sum(s.qty) as Total
FROM authors a INNER JOIN titleauthor ta on a.au_id = ta.au_id
INNER JOIN sales s on ta.title_id = s.title_id
GROUP BY Author_ID, Last_Name, First_Name
ORDER BY Total DESC
LIMIT 3;


SELECT a.au_id as Author_ID, a.au_lname as Last_Name, a.au_fname as First_Name, ifnull(sum(s.qty),0) as Total
FROM authors a LEFT JOIN titleauthor ta on a.au_id = ta.au_id
LEFT JOIN sales s on ta.title_id = s.title_id
GROUP BY Author_ID, Last_Name, First_Name
ORDER BY Total DESC;