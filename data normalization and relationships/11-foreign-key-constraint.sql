--adding foreign key constraint via alter table
ALTER TABLE users
ADD CONSTRAINT address_foreign_key FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE ON UPDATE CASCADE;
--adding foreign key contraint via create table
CREATE TABLE users (
    address_id INT,
    CONSTRAINT address_foreign_key2 FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE ON UPDATE CASCADE
);
--adding foreign key constraint via alter table without constraint name
ALTER TABLE users
ADD FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE ON UPDATE CASCADE;
--adding foreign key contraint via create table without constraint name
CREATE TABLE users (
    address_id INT REFERENCES addresses (id) ON DELETE CASCADE ON UPDATE CASCADE
);
--removing foreing key constraint via alter table
ALTER TABLE users DROP FOREIGN KEY address_foreign_key --constraint name