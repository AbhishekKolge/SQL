--we need to pass argument to COUNT, to tell COUNT function on what the calculation is based on.
--we calculate rows based on entire table.
SELECT COUNT(*)
FROM bookings;
--we calculate rows based on specific column. (NULL will be excluded)
SELECT COUNT(booking_date)
FROM bookings;
--
SELECT COUNT(amount_tipped)
FROM bookings;
-- DISTINCT tells COUNT to only consider unique values in count operation
SELECT COUNT(DISTINCT booking_date)
FROM bookings;