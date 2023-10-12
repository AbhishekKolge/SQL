-- SELECT *
-- FROM sales;
-- (*) means all the columns
SELECT date_created,
    'Hello World' AS expression,
    customer_name,
    product_name,
    volume / 1000 AS total_sales
FROM sales;
-- the data snapshot we get from select query is called result set.
-- other than * and column name, we can add alias to column name (change the name of column for given query).
-- we can also add expressions (hard coded values). hard coded data will get added in seperate column for every row.
-- we can also execute functions or transform values that are stored in columns.