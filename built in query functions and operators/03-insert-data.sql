--data for membership
INSERT INTO membership (
        membership_end,
        last_checkin,
        last_checkout,
        consumption
    )
VALUES (
        '2022-12-17',
        '2022-09-01 05:17:36',
        '2022-09-01 06:30:23',
        124.23
    );
INSERT INTO membership (
        membership_end,
        last_checkin,
        last_checkout,
        consumption,
        membership_start
    )
VALUES (
        '2023-01-05',
        '2022-4-27 10:23:45',
        '2022-4-27 11:42:23',
        453.27,
        '2022-01-06'
    ),
    (
        '2022-10-27',
        '2022-8-13 12:17:36',
        '2022-8-13 13:30:23',
        324.56,
        '2022-02-12'
    );
--data for membership_type
INSERT INTO membership_type (price, billing_frequency)
VALUES (300, 4),
    (100, 2),
    (600, 12);
--data for members
INSERT INTO members (
        first_name,
        last_name,
        gender,
        membership_id,
        membership_type_id
    )
VALUES ('Gayatri', 'Kolge', 'f', 1, 1),
    ('Abhishek', 'Kolge', 'm', 2, 2),
    ('Gavravi', 'Kolge', 'f', 3, 3);