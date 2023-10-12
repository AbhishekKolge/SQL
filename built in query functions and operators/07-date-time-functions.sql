--
SELECT EXTRACT(
        MONTH
        FROM membership_start
    )
FROM membership;
--
SELECT EXTRACT(
        DAY
        FROM membership_start
    )
FROM membership;
--
SELECT EXTRACT(
        YEAR
        FROM membership_start
    )
FROM membership;
--
SELECT EXTRACT(
        MINUTE
        FROM last_checkin
    )
FROM membership;