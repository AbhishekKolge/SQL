SELECT booking_date,
    SUM(num_guests)
FROM bookings
WHERE booking_date IS NOT NULL
GROUP BY booking_date
HAVING SUM(num_guests) > 4;