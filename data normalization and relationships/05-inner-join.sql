SELECT u.first_name,
    u.last_name,
    a.street_name,
    a.house_number
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id;