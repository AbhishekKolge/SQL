--EXPLAIN keyword measures the performance of the command and how the sql engine (database management system) will execute the command under the hood.
--with EXPLAIN instead of executing the command we get the explanation of how the query will execute under the hood.
EXPLAIN
SELECT first_name
FROM users
WHERE salary >= 150000;
--if we add ANALYZE after EXPLAIN we will get explanation (plan) and query will also get executed.
EXPLAIN ANALYZE
SELECT first_name
FROM users
WHERE salary >= 150000;
--planning is the phase where the sql engine determines how to best get the result. (whether it should use an index etc.)