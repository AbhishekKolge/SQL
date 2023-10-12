SELECT *
FROM users
    CROSS JOIN addresses;
-- we don't need ON condition to yeild the match, because CROSS JOIN will simply join all the entries from the users table with all the entries from addresses table. (we will get list of all the possible combinations, even if there is no real relation. in mathematical language it builts Cartesian product.)