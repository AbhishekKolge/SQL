-- SELECT *
-- FROM sales
-- WHERE date_fulfilled - date_created <= 5;
--
-- SELECT *
-- FROM sales
-- WHERE date_fulfilled <= date_created + 5;
--
SELECT *
FROM sales
WHERE EXTRACT(
        DAY
        FROM date_fulfilled - date_created
    ) <= 5;
-- when using timestamp, using this kind of substraction we get time difference in hours and minutes. we can extract the day using extract function.