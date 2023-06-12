SELECT *
FROM products
WHERE name LIKE '%پفک%';

ALTER TABLE products
    ADD FULLTEXT (name);

SELECT *
FROM products
WHERE MATCH (name) AGAINST ('+پفک' IN NATURAL LANGUAGE MODE);

SELECT *
FROM products
WHERE MATCH (name) AGAINST ('+پفک')
ORDER BY MATCH (name) AGAINST ('+پفک') DESC;

SELECT name, MATCH (name) AGAINST ('+پفک +پنیر -نمک *' IN NATURAL LANGUAGE MODE) AS score
FROM products
WHERE MATCH (name) AGAINST ('+پفک +پنیر -نمک *' IN NATURAL LANGUAGE MODE)
ORDER BY score DESC;
