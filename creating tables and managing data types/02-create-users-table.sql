-- MySQL syntax
CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status ENUM('employed', 'self-employed', 'unemployed')
);
----------------------------------------------------------------------------------------------------
-- PostgresSQL syntax
CREATE TYPE emolyment_status AS ENUM('employed', 'self-employed', 'unemployed');
--in postgres we have to create a custom type first
CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status emolyment_status
);