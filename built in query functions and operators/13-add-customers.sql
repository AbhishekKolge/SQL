--
CREATE TABLE customers (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
    -- id SERIAL PRIMARY KEY, -- postgresql
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL
);
--
CREATE TABLE orders (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
    -- id SERIAL PRIMARY KEY, -- postgresql
    amount_billed NUMERIC(5, 2) NOT NULL,
    customer_id INT REFERENCES customers (id) ON DELETE CASCADE ON UPDATE CASCADE
);
--
INSERT INTO customers (first_name, last_name, email)
VALUES ('Gayatri', 'Kolge', 'gayatri@gmail.com'),
    ('Abhishek', 'Kolge', 'abhishek@gmail.com'),
    ('Gavravi', 'Kolge', 'gavravi@gmail.com'),
    ('Sahil', 'Kolge', 'sahil@gmail.com');
--
INSERT INTO orders (amount_billed, customer_id)
VALUES (324.235, 1),
    (142.1, 2),
    (434, 3),
    (642.3456, 1);