--enter company buildings data
INSERT INTO company_buildings (name)
VALUES ('First Company Building'),
    ('Second Company Building'),
    ('Third Company Building');
--enter teams data
INSERT INTO teams (name, building_id)
VALUES ('Web Development', 1),
    ('App Development', 3),
    ('Back End Development', 1),
    ('Dev-Ops', 2),
    ('System Admin', 2);
--enter employees data
INSERT INTO employees (first_name, last_name, birthdate, email, team_id)
VALUES (
        'Gayatri',
        'Kolge',
        '1999-06-05',
        'gayatri@gmail.com',
        3
    ),
    (
        'Abhishek',
        'Kolge',
        '1996-03-01',
        'abhishek@gmail.com',
        3
    ),
    (
        'Rohit',
        'Parag',
        '1995-11-14',
        'rohit@gmail.com',
        1
    ),
    (
        'Chirag',
        'Sharma',
        '1998-08-29',
        'chirag@gmail.com',
        4
    ),
    (
        'Devika',
        'Patil',
        '2005-07-12',
        'devika@gmail.com',
        2
    ),
    (
        'Sahil',
        'Kolge',
        '2000-02-28',
        'sahil@gmail.com',
        4
    ),
    (
        'Akshay',
        'Nevrekar',
        '1993-10-28',
        'akshay@gmail.com',
        2
    ),
    (
        'Shubham',
        'Sawant',
        '1995-11-11',
        'shubham@gmail.com',
        2
    );
--enter intranet accounts data
INSERT INTO intranet_accounts (email, password)
VALUES (
        'gayatri@gmail.com',
        'gayu@123'
    ),
    (
        'abhishek@gmail.com',
        'abhishek@123'
    ),
    (
        'rohit@gmail.com',
        'rohit@123'
    ),
    (
        'chirag@gmail.com',
        'chirag@123'
    ),
    (
        'devika@gmail.com',
        'devika@123'
    ),
    (
        'sahil@gmail.com',
        'sahil@123'
    ),
    (
        'akshay@gmail.com',
        'akshay@123'
    ),
    (
        'shubham@gmail.com',
        'shubham@123'
    );
--enter projects data
INSERT INTO projects (title, deadline)
VALUES (
        'E-Commerce Application',
        '2022-9-12'
    ),
    (
        'Database Setup',
        '2022-11-23'
    ),
    (
        'Company Website',
        '2022-8-21'
    ),
    (
        'Super Mobile App',
        '2022-11-18'
    );
--intermediate table n:n
INSERT INTO projects_employees (employee_id, project_id)
VALUES (1, 1),
    (1, 4),
    (1, 2),
    (2, 1),
    (2, 4),
    (2, 2),
    (3, 4),
    (3, 3),
    (4, 4),
    (5, 2),
    (5, 4),
    (6, 1),
    (6, 2),
    (6, 4),
    (7, 2),
    (8, 2);