SELECT u.first_name,
    u.last_name,
    a.street_name,
    a.house_number
FROM users AS u
    RIGHT JOIN addresses AS a ON u.address_id = a.id;
-- because of RIGHT JOIN, all rows from addresses will be part of the joined result set.
-- for the table before RIGHT JOIN (users in this case) RIGHT JOIN behaves like INNER JOIN, only matching rows (where ON condition yields a match) are included.