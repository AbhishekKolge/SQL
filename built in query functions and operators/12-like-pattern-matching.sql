--we use LIKE in combination with strings.LIKE always returns true or false.
SELECT first_name LIKE 'Gayatri'
FROM members;
--LIKE is used with pattern matching.for patterns we have different options. two main ones are % and _ .
--we use % if we are not sure about amount of characters.
SELECT first_name LIKE '%a%'
FROM members;
--we use _ if we know amount of characters. _ represents or placeholder for one single character.
SELECT first_name LIKE 'G______'
FROM members;
--we can also run these queries with filter.
SELECT first_name
FROM members
WHERE first_name LIKE 'G______';
--(LIKE is case sensitive for postgresql. we can use ILIKE to make it case insensitive)
--(LIKE is case insensitive for mysql. we dont need to use ILIKE)