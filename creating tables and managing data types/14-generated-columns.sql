-- MySQL
CREATE TABLE test (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM('employed', 'self-employed', 'unemployed')
)
INSERT INTO test (
        first_name,
        last_name,
        yearly_salary,
        current_status
    )
VALUES ('Gayatri', 'Kolge', 200000000, 'employed');
-- postgreSQL
-- generated columns are also available in postgreSQL but here they are more restrictive and not vercetile and flexible as they are in MySQL.
-----------------------------------------------------------------------------------------
-- full_name could be created as a generated column. because it is combination of first_name and last_name. these values are derived automatically and cant be inserted manually.
-- of course it is not required always as we can fetch both values separately and then combine them after querying from database.