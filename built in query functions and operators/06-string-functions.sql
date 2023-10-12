-- CONCAT works in both mysql and postgresql
SELECT CONCAT(first_name, ' ', last_name)
FROM members;
--
SELECT CONCAT('Rs. ', price)
FROM membership_type;
-- same as concat but works in postgres only
SELECT first_name || ' ' || last_name
FROM members;
--
SELECT 'Rs. ' || price
FROM membership_type;