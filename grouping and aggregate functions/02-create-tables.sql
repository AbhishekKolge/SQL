CREATE TABLE payment_methods (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, --postgres
    name VARCHAR(200) UNIQUE NOT NULL
);
-- CREATE TYPE table_categories AS ENUM('small', 'medium', 'large'); -- postgres
CREATE TABLE tables (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, --postgres
    num_seats INT DEFAULT 2,
    -- category table_categories --postgres
    category ENUM('small', 'medium', 'large')
);
CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, --postgres
    booking_date DATE DEFAULT (CURRENT_DATE),
    num_guests INT DEFAULT 2,
    amount_billed NUMERIC(6, 2) NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT,
    table_id INT,
    CONSTRAINT payment_foreign_key FOREIGN KEY (payment_id) REFERENCES payment_methods (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT table_foreign_key FOREIGN KEY (table_id) REFERENCES tables (id) ON DELETE CASCADE ON UPDATE CASCADE
);