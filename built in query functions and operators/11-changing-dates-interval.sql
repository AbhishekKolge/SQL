--postgresql
-- add interval to existing date. result will be timestamp, hence we can extract date from it if required.
SELECT membership_start + INTERVAL '7 DAY'
FROM membership;
SELECT membership_start - INTERVAL '7 MONTH'
FROM membership;
--mysql
--we can use DATE_ADD() to add and DATE_SUB() to substract (deduct).
--it need arguments. first argument will be the value column. second argument will be INTERVAL
SELECT DATE_ADD(membership_start, INTERVAL 7 DAY)
FROM membership;
SELECT DATE_SUB(membership_start, INTERVAL 7 MONTH)
FROM membership;