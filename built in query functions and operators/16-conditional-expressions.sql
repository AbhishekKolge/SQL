--conditional expressions are used when the output we get from a query is based on certain condition.
SELECT amount_billed,
    CASE
        WHEN amount_billed > 400 THEN 'Good Day'
        WHEN amount_billed > 200 THEN 'Normal Day'
        ELSE 'Bad Day'
    END
FROM orders;
--
SELECT CASE
        WHEN weekday_nr = 1 THEN 'Monday'
        WHEN weekday_nr = 2 THEN 'Tuesday'
        WHEN weekday_nr = 3 THEN 'Wednesday'
        WHEN weekday_nr = 4 THEN 'Thursday'
        WHEN weekday_nr = 5 THEN 'Friday'
        WHEN weekday_nr = 6 THEN 'Saturday'
        ELSE 'Sunday'
    END
FROM (
        SELECT WEEKDAY(membership_start) + 1 AS weekday_nr
        FROM membership
    ) AS weekday_numbers;