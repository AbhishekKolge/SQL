-- with addition to partition by we can define order inside window function.
--when using order by, sum calculation works differently, for next value in partition we add previous value to it.
SELECT booking_date,
    SUM(amount_billed) OVER(
        PARTITION BY booking_date
        ORDER BY amount_billed
    )
FROM bookings;
--rank function will rank individual values inside partition from 1 to x.
SELECT booking_date,
    amount_tipped,
    RANK() OVER(
        PARTITION BY booking_date
        ORDER BY amount_tipped DESC
    )
FROM bookings;