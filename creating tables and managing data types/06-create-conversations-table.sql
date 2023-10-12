CREATE TABLE conversations (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- when setting default values, we can still overwrite them when actually inserting a new record. But if you don't specify custom value, the default value will be used.