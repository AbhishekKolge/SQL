-- Active: 1668323278832@@127.0.0.1@3306@indexes
--create index
CREATE INDEX salaryidx ON users (salary);
--drop INDEX
DROP INDEX salaryidx ON users;

--unique index
CREATE UNIQUE INDEX salaryidx ON users (salary);
-- adding unique constraint on column also does the same thing. (it creates a unique index for that column.)

--multi column INDEX
CREATE INDEX multiaddr ON addresses (street, house_number, postal_code);
--multi column index is optimized for combination of columns with AND keyword being used in a query.
--we can also use parts of the multi column index from left to right. (because how the indexes created and stored internally.)
--in above example we can use combination of
--1. street, house_number, postal_code
--2. street, house_number
--3. street

--partial index
CREATE INDEX salarypidx ON users (salary) WHERE salary > 12000;
--not supported for mysql