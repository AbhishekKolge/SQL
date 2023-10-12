INSERT INTO cities (name)
VALUES ('Mumbai'),
    ('Delhi'),
    ('Banglore'),
    ('Chennai');
INSERT INTO addresses (street, house_number, postal_code, city_id)
VALUES (
        'Gen. A. K. Vaidya Marg',
        '60/D/3',
        '400065',
        1
    ),
    (
        'Jijabai Road',
        '12',
        '400062',
        5
    ),
    (
        'Karnival Road',
        '42-B',
        '423142',
        6
    ),
    (
        'Chattrapati Marg',
        '03-D-2',
        '432532',
        7
    ),
    (
        'Ambedkar Marg',
        '5/30',
        '424425',
        8
    ),
    (
        'Netaji Road',
        '10',
        '424245',
        5
    );
INSERT INTO users (first_name, last_name, email, salary, address_id)
VALUES (
        'Gayatri',
        'Kolge',
        'gaytri@gmail.com',
        '200000',
        1
    ),
    (
        'Abhishek',
        'Kolge',
        'abhishek@gmail.com',
        '180000',
        1
    ),
    (
        'Gavravi',
        'Patil',
        'gavravi@gmail.com',
        '350000',
        3
    ),
    (
        'Sahil',
        'Kolge',
        'sahil@gmail.com',
        '150000',
        4
    ),
    (
        'Devika',
        'Patil',
        'devika@gmail.com',
        '100000',
        5
    ),
    (
        'Shubham',
        'Sawant',
        'shubham@gmail.com',
        '120000',
        6
    );