SELECT *
FROM sales
WHERE date_created > '2021-12-01'
    AND date_created < '2022-03-01';
-- for between keyword compare values are included in result
SELECT *
FROM sales
WHERE date_created BETWEEN '2021-12-02' AND '2022-02-28';
--
SELECT *
FROM sales
WHERE volume >= 1000
    AND volume <= 10000;
--
SELECT *
FROM sales
WHERE volume BETWEEN 1000 AND 10000;