CREATE TABLE users (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
    -- id SERIAL PRIMARY KEY, --postgresql
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    salary INT CHECK (salary > 0),
    address_id INT REFERENCES addresses (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE addresses (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
    -- id SERIAL PRIMARY KEY, --postgresql
    street VARCHAR(100) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city_id INT REFERENCES cities (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE cities (
    -- id INT PRIMARY KEY AUTO_INCREMENT, --mysql
    -- id SERIAL PRIMARY KEY, --postgresql
    name VARCHAR(200) NOT NULL
);