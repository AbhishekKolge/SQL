SELECT booking_date,
    amount_billed
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
        SELECT MIN(min_daily_amount)
        FROM (
                SELECT booking_date,
                    SUM(amount_billed) AS min_daily_amount
                FROM bookings
                GROUP BY booking_date
            ) AS daily_table
    );
--whenever we have query which requires information that we retrived from another query then we use subqueries.
--in above example we get total amount billed for every date / minimum amount from it / booking date for that minimum amount.