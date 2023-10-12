-- maximum number of seats
SELECT MAX(num_seats)
FROM tables;
-- minimum number of seats
SELECT MIN(num_seats)
FROM tables;
-- two aggregate functions in one select query
SELECT MAX(amount_billed) AS max_billed,
    MIN(amount_tipped) min_tipped
FROM bookings;
-- MIN & MAX also work on strings. (alphabatically)
SELECT MAX(category),
    MIN(category)
FROM tables;
-- MIN & MAX also work on dates
SELECT MAX(booking_date),
    MIN(booking_date)
FROM bookings;