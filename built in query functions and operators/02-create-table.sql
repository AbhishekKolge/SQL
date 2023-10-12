CREATE TABLE membership (
    -- id INT PRIMARY KEY AUTO_INCREMENT,--mysql
    -- id SERIAL PRIMARY KEY, --postgres
    membership_start DATE DEFAULT (CURRENT_DATE),
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2)
);
-- CREATE TYPE gender_type AS ENUM('m', 'f');--postgres
CREATE TABLE members (
    -- id INT PRIMARY KEY AUTO_INCREMENT,--mysql
    -- id SERIAL PRIMARY KEY, --postgres
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    -- full_name VARCHAR(401) GENERATED ALWAYS AS(CONCAT(first_name, ' ', last_name)),--mysql
    -- gender ENUM('m', 'f'),--mysql
    -- gender gender_type, -- postgres
    membership_id INT REFERENCES membership (id) ON DELETE CASCADE ON UPDATE CASCADE,
    membership_type_id INT REFERENCES membership_type (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE membership_type (
    -- id INT PRIMARY KEY AUTO_INCREMENT,--mysql
    -- id SERIAL PRIMARY KEY, --postgres
    price NUMERIC(5, 2),
    billing_frequency INT
);