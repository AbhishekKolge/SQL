--mySQL
ALTER TABLE cities
MODIFY COLUMN name VARCHAR(300) UNIQUE NOT NULL;
--postgresSQL (this tablewise constraint works in mySQL also)
ALTER TABLE cities
ADD CONSTRAINT unique_city UNIQUE (name);