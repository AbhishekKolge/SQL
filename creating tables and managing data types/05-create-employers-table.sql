CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    yearly_revenue NUMERIC(5, 2),
    is_hiring BOOLEAN DEFAULT FALSE
);
-- MySQL
-- in FLOAT we can optionally add () and in there pass how many digits we want to store in general and how many digits we want to have after the decimal (.).
-- FLOAT(precision, scale)
-- FLOAT(5, 2) (approximation)
-- allowed: 123.12, 12.1 
-- not allowed: 1234.12 (this would throw an error when inserted), 1.123 (this would not throwan error when inserted, but the value would be rounded. in this case from 1.123 to 1.12)
-----------------------------------------------------------------------------------------
-- postgreSQL
-- FLOAT doesn't accept extra configuration.
----------------------------------------------------------------------------------------
-- (in MySQL FLOAT (precision, scale) are deprecated. FLOAT doesn't accept extra configuration like it used to in MySQL.)
----------------------------------------------------------------------------------------
-- NUMERIC(precision, scale), here () are mandatory.
-- NUMERIC(5,2) (exact value)
-- DECIMAL (exact value), only the scale specified by us is guaranteed.The precision is equal to or higher than the precision we defined.