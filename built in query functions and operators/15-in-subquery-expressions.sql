-- JOIN (we can access columns from another table)
SELECT c.first_name
FROM customers AS c
    INNER JOIN orders AS o ON o.customer_id = c.id;
-- EXISTS (it is more efficient. we can not access columns from another table but result will be unique.)
SELECT c.first_name
FROM customers AS c
WHERE EXISTS(
        SELECT o.id
        FROM orders AS o
        WHERE o.customer_id = c.id
    );
--we can use IN operator. (result will be unique)
-- example:
-- normal filter
SELECT id
FROM customers
WHERE first_name = 'Gavravi'
    OR first_name = 'Abhishek';
-- IN operator
-- with IN operator we can add a list of values which column should include and which we want to retrive in a result of query.
SELECT id
FROM customers
WHERE first_name IN('Gavravi', 'Abhishek');
-- we can use NOT IN to retrive result which not includes defined list of values.
SELECT id
FROM customers
WHERE first_name NOT IN('Gavravi', 'Abhishek');
--first example with IN operator
SELECT c.first_name
FROM customers AS c
WHERE c.id IN(
        SELECT o.customer_id
        FROM orders AS o
    );