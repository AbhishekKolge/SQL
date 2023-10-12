--postgreSQL
--employers table
ALTER TABLE employers
ALTER COLUMN yearly_revenue
SET DATA TYPE FLOAT;
--users table
ALTER TABLE users
ALTER COLUMN full_name
SET DATA TYPE VARCHAR(300);
----------------------------------------------------------------
--MySQL
--employers table
ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT;
--users table
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300);