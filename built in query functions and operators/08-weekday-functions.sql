--postgresql
--DOW works in postgres only
-- 0 to 6 : sunday to saturday
SELECT EXTRACT(
        DOW
        FROM last_checkin
    )
FROM membership;
--ISODOW
-- 1 to 7 : monday to sunday
SELECT EXTRACT(
        ISODOW
        FROM last_checkin
    )
FROM membership;
--mysql
--we can use weekday function
-- 0 to 6 : monday to sunday
SELECT WEEKDAY(last_checkin)
FROM membership;
-- to align it to ISODOW from postgres
-- 1 to 7 : monday to sunday
SELECT WEEKDAY(last_checkin) + 1
FROM membership;