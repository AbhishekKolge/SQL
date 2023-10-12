--postgreSQL
-- users table
ALTER TABLE users
ALTER COLUMN full_name
SET NOT NULL,
    ALTER COLUMN current_status
SET NOT NULL;
--employers table
ALTER TABLE employers
ALTER COLUMN company_name
SET NOT NULL,
    ALTER COLUMN company_address
SET NOT NULL,
    ALTER COLUMN yearly_revenue
SET NOT NULL;
--conversations table
ALTER TABLE conversations
ALTER COLUMN user_name
SET NOT NULL,
    ALTER COLUMN employer_name
SET NOT NULL,
    ALTER COLUMN message
SET NOT NULL;
---------------------------------------------------------------------------------------------------
--MySQL
--users table
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
    MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL;
--employers table
ALTER TABLE employers
MODIFY COLUMN company_name VARCHAR(250) NOT NULL,
    MODIFY COLUMN company_address VARCHAR(300) NOT NULL,
    MODIFY COLUMN yearly_revenue FLOAT NOT NULL;
--conversations table
ALTER TABLE conversations
MODIFY COLUMN user_name VARCHAR(300) NOT NULL,
    MODIFY COLUMN employer_name VARCHAR(250) NOT NULL,
    MODIFY COLUMN message TEXT NOT NULL;