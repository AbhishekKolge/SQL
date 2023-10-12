SELECT u.first_name,
    u.last_name,
    a.street_name,
    a.house_number,
    c.name AS city_name
FROM users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;
-- we can JOIN the table (cities) with any column from any table that's part of the result set that was derived up to second JOIN clause.