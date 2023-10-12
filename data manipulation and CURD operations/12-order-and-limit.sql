-- SELECT *
-- FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;
--
-- SELECT *
-- FROM sales
-- ORDER BY volume
-- LIMIT 10;
--
-- SELECT *
-- FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC
-- LIMIT 5;
--
-- SELECT *
-- FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC,
--     customer_name
-- LIMIT 5;
-- if first ordering column has some rows with exactly same values, then sql would move to next ordering column. (in above case customer_name)
SELECT *
FROM sales
ORDER BY volume DESC
LIMIT 5 OFFSET 3;
-- skip first 3 rows. useful for pagination.