--add payment methods
INSERT INTO payment_methods (name)
VALUES ('Cash'),
    ('Debit Card'),
    ('Credit Card'),
    ('UPI');
--add tables data
INSERT INTO tables (num_seats, category)
VALUES (4, 'medium'),
    (2, 'small'),
    (4, 'medium'),
    (2, 'small'),
    (2, 'small'),
    (6, 'large'),
    (6, 'large'),
    (2, 'small'),
    (4, 'medium'),
    (4, 'medium'),
    (6, 'large'),
    (3, 'medium'),
    (4, 'medium'),
    (6, 'large'),
    (2, 'small'),
    (4, 'medium'),
    (4, 'medium'),
    (6, 'large'),
    (2, 'small'),
    (4, 'medium'),
    (6, 'large'),
    (4, 'medium'),
    (3, 'medium'),
    (4, 'medium'),
    (6, 'large'),
    (4, 'medium'),
    (3, 'medium');
--add bookings data with date
INSERT INTO bookings (
        num_guests,
        amount_billed,
        amount_tipped,
        payment_id,
        table_id,
        booking_date
    )
VALUES (2, 123.67, 10.34, 1, 8, '2022-08-17'),
    (2, 312.67, 12, 2, 4, '2022-08-22'),
    (2, 67.67, NULL, 3, 5, '2022-08-17'),
    (3, 456.67, 23.21, 1, 27, '2022-09-20'),
    (3, 423.67, 12, 4, 23, '2022-08-17'),
    (3, 235, 12.4, 2, 12, '2022-10-16'),
    (4, 284, 11, 1, 26, '2022-08-17'),
    (4, 124, NULL, 3, 24, '2022-08-20'),
    (4, 134, 10.45, 2, 20, '2022-08-19'),
    (4, 137.553, 12.2, 1, 16, '2022-08-17'),
    (4, 342, 10, 4, 17, '2022-08-21'),
    (4, 124, 10, 2, 9, '2022-08-17'),
    (4, 513, 11, 4, 10, '2022-09-21'),
    (4, 237, 19.32, 1, 3, '2022-08-20'),
    (6, 663.2, 20.4, 1, 25, '2022-08-19'),
    (6, 343.2, NULL, 4, 21, '2022-08-21');
--add bookings data without date
INSERT INTO bookings (
        num_guests,
        amount_billed,
        amount_tipped,
        payment_id,
        table_id
    )
VALUES (2, 222.4556, 10, 2, 19),
    (2, 234.44, 15, 2, 15),
    (2, 100.67, 12.2, 4, 2),
    (4, 342, 12.45, 1, 22),
    (4, 453.6532, 11.35, 2, 13),
    (4, 126.3, NULL, 2, 1),
    (6, 353, 10.44, 3, 14);