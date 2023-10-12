--
SELECT p.name,
    SUM(b.num_guests)
FROM payment_methods AS p
    INNER JOIN bookings AS b ON b.payment_id = p.id
GROUP BY p.name;
-- if we have multiple identifires then all of those should be added to group by keyword.
SELECT p.name,
    b.booking_date,
    SUM(b.num_guests)
FROM payment_methods AS p
    INNER JOIN bookings AS b ON b.payment_id = p.id
WHERE booking_date IS NOT NULL
GROUP BY p.name,
    b.booking_date;