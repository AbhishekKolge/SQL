SELECT first_name
FROM customers
WHERE email = 'gavravi@gmail.com';
--EXISTS checks whether a certain value based on our condition exists in our table.
--EXISTS is more efficient than filter because a filter runs a query on entire table, but EXISTS stops when valid entry is found.
--useful when we want to check if certain values are available in our table.
SELECT EXISTS(
        SELECT first_name
        FROM customers
        WHERE email = 'gavravi@gmail.com'
    );
--EXISTS is typically used to retrive the information from two different tables.
--we can use JOINS instead (we can access columns from another table)
SELECT o.id,
    c.id,
    c.first_name,
    c.email
FROM orders AS o
    INNER JOIN customers AS c ON c.id = o.customer_id
WHERE c.email = 'gavravi@gmail.com';
--but we can use EXISTS which is more efficient (we can not access columns from another table but result will be unique.)
SELECT o.id
FROM orders AS o
WHERE EXISTS(
        SELECT c.email
        FROM customers AS c
        WHERE o.customer_id = c.id
            AND c.email = 'gavravi@gmail.com'
    );