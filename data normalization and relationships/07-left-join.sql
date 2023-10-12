SELECT u.first_name,
    u.last_name,
    a.street_name,
    a.house_number
FROM addresses AS a
    LEFT JOIN users AS u ON u.address_id = a.id;
-- because of LEFT JOIN, all rows from addresses will be part of the joined result set.
-- for the table after LEFT JOIN (users in this case) LEFT JOIN behaves like INNER JOIN, only matching rows (where ON condition yields a match) are included.