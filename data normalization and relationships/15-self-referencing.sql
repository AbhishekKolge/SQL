CREATE TABLE new_employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    full_name VARCHAR(301) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    supervisor_id INT,
    CONSTRAINT supervisor_foreing_key FOREIGN KEY (supervisor_id) REFERENCES new_employees (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL
);