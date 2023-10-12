--cities table
INSERT INTO cities (name)
VALUES ('Mumbai'),
    ('Delhi'),
    ('Banglore'),
    ('Ratnagiri');
--addresses tabel
INSERT INTO addresses (street_name, house_number, city_id)
VALUES ('Gen. A. K. Vaidya Marg', '60/d/3', 1),
    ('Taruma Care Road', '12', 1),
    ('Chatrapati Shivaji Marg', '5/2', 2),
    ('Kathalwadi Road', '5', 4);
--users TABLE
INSERT INTO users (first_name, last_name, email, address_id)
VALUES ('Abhishek', 'Kolge', 'abhishek@gmail.com', 1),
    ('Gayatri', 'Patil', 'gayatri@gmail.com', 2),
    ('Ashok', 'Sharma', 'ashok-sharma@gmail.com', 3),
    ('Mohan', 'Kolge', 'mohan@gmail.com', 4);