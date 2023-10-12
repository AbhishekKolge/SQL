SELECT first_name
FROM users
UNION
SELECT street_name
FROM addresses;
-- (but this kind of data mixture might not be useful)
--
-- UNION can't add append rows if one result set have 5 columns and other result set have 3 columns. number of columns need to be same to append rows.
-- we should use UNION clause when we want to append rows with similar data (similar data as result set data) to result set.