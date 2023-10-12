--postgresql
--timestamp difference will be interval datatype
SELECT last_checkout - last_checkin
FROM membership;
-- date difference will be in days
SELECT membership_end - membership_start
FROM membership;
-- we can use NOW() function to calculate date difference with respect to today. (the result will be interval datatype)
SELECT NOW() - membership_start
FROM membership;
--mysql
--to get timestamp difference we can use TIMESTAMPDIFF. it takes 3 argument. first argument is how should be the difference between two points in time be measured (HOUR,MINUTE,DAY). second argument and third argument will be starting and ending time respectively.
SELECT TIMESTAMPDIFF(HOUR, last_checkin, last_checkout)
FROM membership;
--to get date difference we can use DATEDIFF. it takes only two arguments. first argument and second argument will be ending and starting time respectively. (the result will be in days)
SELECT DATEDIFF(membership_end, membership_start)
FROM membership;
-- we can use NOW() function to calculate date difference with respect to today. (the result will be in days)
SELECT DATEDIFF(NOW(), membership_start)
FROM membership;