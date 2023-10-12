--company
CREATE TABLE company_buildings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);
--teams
CREATE TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    building_id INT,
    CONSTRAINT building_foreign_key FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE
    SET NULL ON UPDATE
    SET NULL
);
--employees
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    full_name VARCHAR(201) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    birthdate DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
--add team foreign key in employees table separataly as a practice
ALTER TABLE employees
ADD team_id INT,
    ADD CONSTRAINT team_foreign_key FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE
SET NULL ON UPDATE
SET NULL;
--intranet accounts
CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    email VARCHAR(100),
    password VARCHAR(200) NOT NULL,
    CONSTRAINT email_foreing_key FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE ON UPDATE CASCADE
);
--projects TABLE
CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    deadline DATE
);
--intermediate table containing n:n relation between employees and projects
CREATE TABLE projects_employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    employee_id INT,
    project_id INT,
    CONSTRAINT employee_foreign_key FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT project_foreign_key FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE ON UPDATE CASCADE
);