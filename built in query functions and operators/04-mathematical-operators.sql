--
SELECT price * billing_frequency
FROM membership_type;
--
SELECT SUM(price * billing_frequency)
FROM membership_type;