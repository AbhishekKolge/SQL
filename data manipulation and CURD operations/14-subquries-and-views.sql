SELECT customer_name
FROM (
        SELECT *
        FROM sales
        WHERE volume > 5000
    ) AS top_customers;
-- result set is same as table but not stored permanently. result set can be used as a table in other queries. we can write other query (which should be act as a table) in from part of first query and wrap it with () and give it an alias.
CREATE VIEW top_customers AS
SELECT *
FROM sales
WHERE volume > 5000;
--
SELECT customer_name
FROM top_customers;
-- if we find that a certain query is used as a subquery a lot of time then we can create a view based on that query. by doing this we store this query. (not the result but the query defination itself.) a view is actually stored by the database management system. it is a permanent thing which we can use in future. view stores a query and that query is executed whenever we use that view.
INSERT INTO top_sales (customer_name, volume) top_customers;
-- we can use subqueries for insert into as well. instead of values we can store result set of another query. but we need to ensure that the result set has same shape that is expected by the table where we are using insert into.