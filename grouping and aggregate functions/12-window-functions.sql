--instead of grouping we use OVER keyword. OVER keyword with () is called window function.
SELECT booking_date,
    amount_billed,
    SUM(amount_billed) OVER()
FROM bookings;
--
SELECT booking_date,
    amount_billed,
    SUM(amount_billed) OVER(PARTITION BY booking_date)
FROM bookings;
-- aggregate functions allow as to reduce multiple inputs to one single value. this output is only consist of that individual value or individual values for different groups.
-- with window functions we can apply aggregate functions and other functions with same capabilities but the results will be added to new column without reducing the actual input values of underlying table to one single row. (means without aggregating entire table)