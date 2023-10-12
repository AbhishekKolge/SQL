SELECT SUM(amount_billed)
FROM bookings;
--ROUND is not an aggregate function. it helps to round results that we retrive. we can pass optional second argument to specify the decimal places.
SELECT ROUND(AVG(num_guests), 2)
FROM bookings;