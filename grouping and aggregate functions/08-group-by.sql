-- by adding group by we tell sql to create new groups based on identifire which is not aggregate function in select statement.
SELECT booking_date,
    MAX(num_guests),
    MIN(num_guests),
    SUM(num_guests)
FROM bookings
GROUP BY booking_date;
-- by runnig group by as part of our statement we tell sql to take the values in booking_date column and regroup these to individual unique values.
--DISTINCT would not work because we need to use group by if we have combination of aggregate function and normal identifire in select statement.
-- (DISTINCT will remove duplicate values. GROUP BY will create groups.)