-- mysql
-- seperate timestamp into date and time
-- we can use CONVERT function. it takes two argument. first argument is identifire and second argument is output (DATE OR TIME)
SELECT CONVERT(last_checkin, DATE),
    CONVERT(last_checkin, TIME)
FROM membership;
--postgresql
SELECT last_checkin::TIMESTAMP::DATE,
    last_checkin::TIMESTAMP::TIME
FROM membership;