SELECT *
FROM sales
WHERE volume > 1000;
SELECT *
FROM sales
WHERE is_recurring IS TRUE;
-- IS or IS NOT is used when we are looking for equality and non equality respectively, to NULL and boolean.
SELECT *
FROM sales
WHERE is_disputed IS FALSE
    AND volume > 5000;