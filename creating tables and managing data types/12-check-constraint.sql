-- creating new table with check constraint.no need to give a name to check constraint.
CREATE TABLE dummy (salary INT CHECK (salary > 0));
-- updating already created table. we need to give some name to check constraint.
ALTER TABLE dummy
ADD CONSTRAINT salary_positive CHECK (salary > 0);
--delete table
DROP TABLE dummy