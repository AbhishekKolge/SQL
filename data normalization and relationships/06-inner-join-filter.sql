SELECT u.first_name,
    u.last_name,
    a.street_name,
    a.house_number,
    c.name AS city_name
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id
WHERE c.name = 'Mumbai'
    OR c.name = 'Delhi'
ORDER BY c.name DESC;