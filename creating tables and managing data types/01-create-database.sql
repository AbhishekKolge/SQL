CREATE DATABASE talently;
-- notes:
-- in sql we use lowercase identifires. (e.g. database, table, column name)
-- if there are multiple words then sperate them with _ instead of space.
-- in mysql we can also write SCHEMA instead of DATABASE.
-- we can also use some options while creating tables. these options can be found in official docs of database server we are using.
-- like for mysql we can pass IF NOT EXISTS keyword along with CREATE DATABASE. it will check if database with same name exists and if it does then it wont throw error but it wont create new database.
-- You typically don't create databases very often - deleting them is (typically) an even rarer event.
-- Still if you need to delete a database this can be done via the DROP DATABASE db_name command.
-- IF NOT EXISTS for CREATE DATABASE is not available for Postgresql only for MySQL.
-- CREATE TABLE adding IF NOT EXISTS works for both MySQL and Postgresql.