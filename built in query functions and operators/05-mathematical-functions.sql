--round up to next integer
SELECT CEIL(consumption)
FROM membership;
--round down to previous integer
SELECT FLOOR(consumption)
FROM membership;
--round down to previous integer, but we can pass optional second argument as number to define decimal places with round off.
SELECT ROUND(consumption, 1)
FROM membership;
--pass second argument as number to cut off decimal places without rounding off.
SELECT TRUNCATE(consumption, 1)
FROM membership;